//
//  CartView.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import SwiftUI

struct CartView: View {
    
    var body: some View {
      
        ScrollView{
            HStack{
                Text("Cart Items")
                    .font(.system(size: 21))
                Spacer()
            }.padding(20)
        
            ForEach(0 ..< 5){ i in
                CartItemView()
                
            }
            Divider()
            
            HStack{
                Text("Total")
                    .bold()
                Spacer()
                Text("$ 500")
                    .font(.system(size:18))
            }.padding(30)
            
            NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true), label: {
                
                Text("Pay Now")
                    .font(.headline)
                    .frame(width: 200, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573,
                                                    blue: 0.3403331637, alpha: 1)))
                    .cornerRadius(10)
                
            }
            )
         
        }

        
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
