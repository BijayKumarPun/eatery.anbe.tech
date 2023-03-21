//
//  ViewModel.swift
//  Eatery
//
//  Created by BIJAY on 21/03/2023.
//

import Foundation
import SwiftUI

class ViewModel : ObservableObject {
    @Published var foodItems: [FoodItem]  = []
    @Published var cartItems: [FoodItem] = []
    
    
    func fetch() {
        guard let url = URL(string: "https://63fefa26c5c800a72388f5d2.mockapi.io/getRestaurantItems") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {
            [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            
            
            //Convert to JSON
            do {
                let foodItems = try JSONDecoder().decode([FoodItem].self, from: data)
                
                DispatchQueue.main.async {
                    self?.foodItems = foodItems
                }
            }
            catch {
                print(error)
            }
        }
            
            task.resume()
        }
    

    func addToCart(foodItem: FoodItem){
        cartItems.append(foodItem)
        
    }
    
    
    func removeFromCart(foodItem: FoodItem ){
        if let idx = cartItems.firstIndex(of: foodItem){
            cartItems.remove(at: idx)
        }

        
    }
    
    func resetCartItem(){
        cartItems.removeAll()
    }
    
    func getTotalCost() -> Int{
        var total = 0
        for item in cartItems {
            total += item.price
        }
        return total
    }
    
    
    
    
    
    
    }
