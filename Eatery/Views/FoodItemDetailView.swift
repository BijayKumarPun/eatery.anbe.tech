//
//  FoodItemDetailView.swift
//  Eatery
//
//  Created by BIJAY on 21/03/2023.
//

import SwiftUI

struct FoodItemDetailView: View {
    @State var addedToCart: Bool = false
    @ObservedObject var viewModel: ViewModel
    
    var foodItem: FoodItem
    var body: some View {
        VStack() {
            
                URLImage(urlString: foodItem.imageUrl)
            
            
            VStack{
                HStack{
                    Text(foodItem.item)
                        .lineLimit(1)
                        .bold()
                        .font(.system(size: 18))
                    Spacer()
                    
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 8))
                
                HStack{
                    Text(foodItem.description)
                        .font(.system(size: 12))
                        .lineLimit(3)
                        
                    Spacer()
                    
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 8, trailing: 8))
                
                
                
                HStack {
                    Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.")
                }.padding(12)
                    .foregroundColor(Color.gray)
                
           
                
                HStack(){
                    Spacer()
                    Text("$ " + String(foodItem.price))
                        .bold()
                        .font(.system(size: 16))
                        
                    
                    
                }
                .padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 8))
                
                HStack {
                    Spacer()
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                    Text("Taxable")
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                }
                .padding(EdgeInsets(top: 4, leading: 0, bottom: 18, trailing: 8))
                .opacity(foodItem.taxable ? 1 : 0)
                
                
                Text(addedToCart ? "Added to Cart" : "Add to Cart")
                    .font(.headline)
                    .frame(width: 200, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .background(!addedToCart ? Color(#colorLiteral(red: 0.9580881, green: 0.10593573,
                                                                  blue: 0.3403331637, alpha: 1)) : Color.gray)
                    .cornerRadius(10)
                    .onTapGesture {
                        viewModel.addToCart(foodItem: foodItem)
                        addedToCart = true
                    }
             
   
                   
            }
            
            
            
         
               
           }
           .background(.white)
        
        Spacer()
           
           
  
        
    }
}

struct FoodItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemDetailView(viewModel: ViewModel(), foodItem : FoodItem(posDisplayCategoryID: 1, item: "test", description: "test", taxable: false, imageUrl: "test", price: 100, id: "test"))
    }
}
