//
//  FoodItemView.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import SwiftUI

struct FoodItemView: View {
    var data: FoodItemNew
    var body: some View {
       
        VStack() {
            HStack{
                URLImage(urlString: data.imageUrl)
            }
            
            VStack{
                HStack{
                    Text(data.item)
                        .lineLimit(1)
                        .bold()
                        .font(.system(size: 18))
                    Spacer()
                    
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 8))
                
                HStack{
                    Text(data.description)
                        .font(.system(size: 14))
                        .lineLimit(3)
                        
                    Spacer()
                    
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 8))
                
                HStack(){
                    Spacer()
                    Text("$ " + String(data.price))
                        .bold()
                        .font(.system(size: 16))
                        
                    
                    
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 8))
                   
            }
         
               
           }
           .background(.white)
           .cornerRadius(15)
           .shadow(radius: 1)
           .padding(.leading, 20)
           .padding(.trailing, 20)
            .padding(.bottom, 20)
       }
    }


struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        return FoodItemView(data: FoodItemNew(posDisplayCategoryID: 10, item: "test", description: "test", taxable: false, imageUrl: "test", price: 100, id: "test"))
    }
}
