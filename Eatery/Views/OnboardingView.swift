//
//  LaunchScreen.swift
//  Eatery
//
//  Created by BIJAY on 14/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var showSheetView = false
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
    
    var body: some View {
        NavigationView{
            pages()
        }
    }
    
 
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct pages: View {
    var body: some View {
        VStack {
            
            TabView {
                ForEach(OnboardingData) { page in
                    GeometryReader { g in
                        VStack() {
                            Image(page.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.top, 100)
              
                            
                            Text(page.title)
                                .font(.title).bold()
                                .padding(.all, 20)
                            Text(page.description)
                                .multilineTextAlignment(.center)
                                .padding(.all, 10)
                        }
                        .opacity(Double(g.frame( in : .global).minX) / 200 + 1)
                        }
                    }
                }
            .edgesIgnoringSafeArea(.top)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            NavigationLink(destination: ContentView(), label: {
                
                Text("Start")
                    .font(.headline)
                    .frame(width: 200, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573,
                                                    blue: 0.3403331637, alpha: 1)))
                    .cornerRadius(10)
                
            })
            
            Spacer()
            
            
            
            
            
            }
        
        
        }
    
    }


