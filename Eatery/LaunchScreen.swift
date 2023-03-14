//
//  LaunchScreen.swift
//  Eatery
//
//  Created by BIJAY on 14/03/2023.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Color(.red)
            
            
            
            VStack{
                Spacer()
                Text("Eatery")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                Image(systemName: "carrot.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                
                Text("Your favorite food now at your fingertips!")
                    .padding()
                    .foregroundColor(.white)
                Spacer()
                
                Button(action: {}) {
                    Text("Get Started")
                        .bold()
                }
                .padding()
                .frame(maxWidth: 300)
                .background(Color.white)
                .cornerRadius(50)
                .foregroundColor(.black)
                
                Spacer()
            }
  
            
        }.ignoresSafeArea()
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
