//
//  PaymentSuccessView.swift
//  Eatery
//
//  Created by BIJAY on 21/03/2023.
//

import SwiftUI

struct PaymentSuccessView: View {
    @ObservedObject var viewModel: ViewModel
    var amount: Int = 0
    var body: some View {
        VStack{
            
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .foregroundColor(Color.green)
                .frame(width: 100, height: 100)
                .scaledToFill()
                .padding(21)
            
            Text("$" + String(amount))
                .padding(12)
                .font(.system(size: 28))
            Text("Payment Successful")
                .foregroundColor(Color.gray)
                .bold()
                
            Text("Transaction ID: " + String(CACurrentMediaTime()))
                .font(.system(size: 12))
                .padding(8)
                .foregroundColor(Color.gray)
                
            
            
            
            NavigationLink(destination: HomePageView(viewModel: viewModel).navigationBarBackButtonHidden(true), label: {
                
                Text("Awesome!")
                    .font(.headline)
                    .frame(width: 200, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573,
                                                    blue: 0.3403331637, alpha: 1)))
                    .cornerRadius(10)
                    .padding(28)
                    
                
            })
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now()+1){
                viewModel.resetCartItem()
            }
            

            }
        .navigationBarBackButtonHidden(true)
        
     
    }
    
}

struct PaymentSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentSuccessView(viewModel: ViewModel())
    }
}
