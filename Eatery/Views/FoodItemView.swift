//
//  FoodItemView.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import SwiftUI

struct FoodItemView: View {
    var data: FoodItem
    var body: some View {
       
        VStack() {
            HStack{
                Image("food")
                 .resizable()
                 .aspectRatio(contentMode: .fill)
                 .frame( height: 140)
                 .clipped()
     
            }
         
            VStack{
                HStack{
                    Text("Pepperoni Pizza")
                        .lineLimit(1)
                        .bold()
                        .font(.system(size: 18))
                        
                        
                    
                    Spacer()
                    
                }.padding(EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 8))
                HStack{
                    Text("This is a short description and nothing can start this forever")
                        .font(.system(size: 14))
                        .lineLimit(3)
                        
                    Spacer()
                    
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 8))
                HStack(){
                    Spacer()
                    Text("$ 44.0")
                        .bold()
                        .font(.system(size: 16))
                        
                    
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 8))
                   
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
        FoodItemView(data: FoodItem(id: 0, categoryId: 1, name: "testname", description: "testDescription", isTaxable: false, imageUrl: "testURL", price: 300))
    }
}
