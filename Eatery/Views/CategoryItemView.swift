//
//  CategoryItemView.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import SwiftUI

struct CategoryItemView: View {
     var image:String
     var categoryName: String
    var body: some View {
        VStack {
            Image(systemName: image)
            Text(categoryName)
                .font(.system(size: 14))
                
                .padding(.top, 8)
        }
        .frame(width: 80, height: 80, alignment: .center)
        .background(.white)
        .cornerRadius(15)
        .shadow(radius: 1)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(image: "", categoryName: "")
    }
}
