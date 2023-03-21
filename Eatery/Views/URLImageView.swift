//
//  URLImageView.swift
//  Eatery
//
//  Created by BIJAY on 21/03/2023.
//

import Foundation
import SwiftUI

struct URLImage: View {
    let urlString : String
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:140)
                .clipped()
            
        } else {
            
            ProgressView()
                .frame(height: 140)
                .onAppear{
                    fetchData()
                }
        }

    }
    
    private func fetchData () {
        guard let url = URL(string: urlString ) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {data, _, _ in
            self.data = data
        }
        task.resume()
    }
}
