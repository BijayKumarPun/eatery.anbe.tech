//
//  SearchBar.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import SwiftUI

struct SearchBar: View {
    @State  var search: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .font(.title)
            TextField("Search...", text: $search)
                .font(.system(size: 16))
        } .frame(width:  ( UIScreen.main.bounds.width)*0.85, height: 40, alignment: .leading)
            .padding(.leading, 20)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 1)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(search: "Something")
    }
}
