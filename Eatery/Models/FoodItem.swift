//
//  FoodItem.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import Foundation

struct FoodItemNew : Identifiable, Hashable, Codable {
    var posDisplayCategoryID: Int
    var item: String
    var description: String
    var taxable: Bool
    var imageUrl : String
    var price: Int
    var id: String
    
}
