//
//  FoodItem.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import Foundation

struct FoodItem : Identifiable {
var id: Int
    var categoryId: Int
    var name: String
    var description: String
    var isTaxable: Bool
    var imageUrl: String
    var price: Int
    
}
