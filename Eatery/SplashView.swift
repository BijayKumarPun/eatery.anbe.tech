//
//  SplashView.swift
//  Eatery
//
//  Created by BIJAY on 14/03/2023.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if (isActive) {
            LaunchScreen()
        } else {
            ZStack{
                Color(.red)
                VStack {
                    Image(systemName: "carrot.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                }.foregroundColor(.white)
                
            }.ignoresSafeArea()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        withAnimation{
                            self.isActive = true
                        }
              
                    }
                }
        }
    }
}

struct SplashView_View: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
