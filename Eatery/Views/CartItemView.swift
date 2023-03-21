//
//  CartItemView.swift
//  Eatery
//
//  Created by BIJAY on 16/03/2023.
//

import SwiftUI

struct CartItemView: View {
    var id: String
    var title: String
    var price: Int
    var callback: ()-> ()
    

    
    
    var body: some View {
        VStack{
            HStack(){
                Image(systemName: "xmark.circle")
                    .foregroundColor(Color.red)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    .onTapGesture {
                        self.callback()
                    }
 
                Text(title)
                    .font(.system(size:18))
                    .foregroundColor(Color.gray)
                
                Spacer()
                Text("$"+String(price))
                    .font(.system(size: 18))
                    .foregroundColor(Color.gray)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 14))
                
               
            }.frame(width: UIScreen.main.bounds.width)
            
            .padding(20)
                

        
   
        }.frame(width: 370, height: 30)
            
       
            
            

   
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(id: "test", title: "test", price: 200,callback:  {})
    }
}
