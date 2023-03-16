//
//  CartItemView.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import SwiftUI

struct CartItemView: View {
    var body: some View {
        VStack{
            HStack(){
                Text("Food name")
                    .bold()
                Spacer()
                
                Text("$20")
                    
                    .font(.system(size: 21))
                
                Image(systemName: "bin")
            }.padding(20)
                

        
   
        }.frame(width: 370, height: 30)
            
       
            
            

   
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView()
    }
}
