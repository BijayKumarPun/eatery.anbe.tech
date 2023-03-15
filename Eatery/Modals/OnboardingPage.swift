//
//  OnboardingPage.swift
//  Eatery
//
//  Created by BIJAY on 15/03/2023.
//

import Foundation

struct OnboardingItem: Identifiable {
    var id: Int
    var image: String
    var title: String
    var description: String
}

var OnboardingData = [
    OnboardingItem(id: 0, image: "slide1", title: "Find food you love", description: "Search across hundreds of food categories"),
    OnboardingItem(id: 1, image: "slide2", title: "Get instantly delivered", description: "Get food in your doorstep within 30 minutes"),
    OnboardingItem(id: 2, image: "slide3", title: "Get crazy discounts", description: "Our discounts are limitless!")
]
