//
//  HomePage.swift
//  Eatery
//
//  Created by BIJAY on 15/03/2023.
//

import SwiftUI

struct HomePageView: View {
    var search:String = ""
    
    var body: some View {
        
            
            
            
            VStack{
                
                
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    
                    
                    VStack{
                        
                        ZStack{
                            
                            LinearGradient(gradient: Gradient(colors: [.pink, .red]), startPoint: .top, endPoint: .bottom)
                            
                            HStack{
                                VStack (alignment: .leading){
                                    
                                    Text("Hungry?")
                                        .bold()
                                        .font(.system(size: 21))
                                    Text("Use search to find food you love...")
                                    
                                        .font(.system(size: 18))
                                }
                                .padding(20)
                                Spacer()
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .foregroundColor(.white)
                            
                            .padding(20)
                            SearchBar(search: "")
                                .padding(.top, 120)
                        }.frame( width: UIScreen.main.bounds.width,
                                 height: 220)
                        
                        
                        
                        HStack{
                            Text("Top Categories")
                                .bold()
                            Spacer()
                            
                        }.padding(.leading, 20)
                            .padding(.top, 10)
                        
                        
                        
                        
                        
                        HStack{
                            ForEach(0 ..< 4){ i in
                                CategoryItemView(image: CategoryData[i].image, categoryName:  CategoryData[i].title)
                            }
                        }
                        HStack{
                            ForEach(0 ..< 4){ i in
                                CategoryItemView(image: CategoryData[i+4].image, categoryName:  CategoryData[i+4].title)
                            }
                            
                        }
                        
                        HStack{
                            Text("Today's Pick")
                                .bold()
                            Spacer()
                            
                        }.padding(.leading, 20)
                            .padding(.top, 10)
                        
                        
                        
                        ForEach( 0 ..< 6){i in
                            FoodItemView(data: FoodItem(id: 0, categoryId: 1, name: "testname", description: "testDescription", isTaxable: false, imageUrl: "testURL", price: 300))
                        }
                        
                        
                        
                        
                        
                        Spacer()
                    }
                    }
         
            }.ignoresSafeArea()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
