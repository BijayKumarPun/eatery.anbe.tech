//
//  HomePage.swift
//  Eatery
//
//  Created by BIJAY on 15/03/2023.
//

import SwiftUI

struct HomePageView: View {
    @StateObject var viewModel = ViewModel()
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
                        
                        
                            VStack{
                                
             
                            
                                ForEach( viewModel.foodItems, id:\.self) { foodItem in
                                    HStack {
//                                        URLImage(urlString: foodItem.imageUrl)
//
//                                        Text(foodItem.item)
//                                            .bold()
                                        
                                        FoodItemView(data: foodItem)
                                    }.padding(3)
                                }
                            }.onAppear{
                                viewModel.fetch()
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
