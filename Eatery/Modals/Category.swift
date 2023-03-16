//
//  Category.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import Foundation

//
//  OnboardingPage.swift
//  Eatery
//
//  Created by BIJAY on 15/03/2023.
//

import Foundation

struct CategoryItem: Identifiable {
    var id: Int
    var image: String
    var title: String
}

var CategoryData = [
CategoryItem(id: 0, image: "cup.and.saucer", title: "Breakfast"),
CategoryItem(id: 1, image: "fork.knife.circle", title: "Dinner"),
CategoryItem(id: 2, image: "sleep", title: "Veggies"),
CategoryItem(id: 3, image: "timelapse", title: "Starter"),
CategoryItem(id: 4, image: "tornado", title: "Drinks"),
CategoryItem(id: 5, image: "seal", title: "Veg"),
CategoryItem(id: 6, image: "light.cylindrical.ceiling", title: "Sweets"),
CategoryItem(id: 7, image: "figure.fall", title: "Alcohol")
]
