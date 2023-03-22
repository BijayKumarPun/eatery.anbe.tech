//
//  HomePage.swift
//  Eatery
//
//  Created by BIJAY on 15/03/2023.
//

import SwiftUI

struct HomePageView: View {
    @ObservedObject var viewModel: ViewModel
    var search:String = ""
    @State var isLoading: Bool = true
    
    
    var body: some View {
        NavigationView {
            
            
            
            
            VStack{
                
                
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    
                    
                    VStack{
                  
                    
                        
                        
                        ZStack{
                            
                            
                            LinearGradient(gradient: Gradient(colors: [.pink, .red]), startPoint: .top, endPoint: .bottom)
                        
                            
                            
                        
                            VStack {
                                
                                HStack () {
                                    Image(systemName: "person.crop.circle")
                                        .resizable()
                                        .frame(width: 32, height: 32)
                                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                        .foregroundColor(Color.white)
                                    Spacer()
                                    NavigationLink(destination: CartView(viewModel: viewModel)){
                                        
                                        Image(systemName: "cart.circle.fill")
                                            .resizable()
                                            .frame(width: 32, height: 32)
                                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                            .foregroundColor(Color.white)
                                    }
                                   
                                  
                                        
                                }
                                .frame(width: UIScreen.main.bounds.width)
                                .padding(EdgeInsets(top: 32, leading: 0, bottom: 20, trailing: 0))
                                    
                                
                                
                                
                    
                            HStack{
                                
                                
                                VStack (alignment: .leading){
                                    
                                    Text("Hungry?")
                                        .bold()
                                        .font(.system(size: 21))
                                    Text("Use search to find food you love...")
                                    
                                        .font(.system(size: 18))
                                }
                                .padding(EdgeInsets(top: 8, leading: 20, bottom: 0, trailing: 20))
                                Spacer()
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .foregroundColor(.white)
                            
                        
                                
                                HStack {
                                    SearchBar(search: "")
                                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                                }.frame( width: UIScreen.main.bounds.width)
                                    
                                
                            }.padding(EdgeInsets(top: 21, leading: 0, bottom: 8, trailing: 0))
                            
                            
                                
                            }
                        
                       
                    
                        
                        
                        
                        
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
                        
                        
                        ProgressView()
                            .onAppear{
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    isLoading = false
                                }}
                            .opacity(isLoading ? 1: 0)
                            
                            
                            
                            
                            
                            
                        VStack{
                            
                           
                                ForEach( viewModel.foodItems, id:\.self) { foodItem in
                                    
                                    
                                    
                                    
                                    
                
                                    NavigationLink(destination: FoodItemDetailView(viewModel: viewModel , foodItem : foodItem)) {
                                        FoodItemView(data: foodItem)
                                    } .buttonStyle(PlainButtonStyle())
                                    
                                    
                                    
                                    
                                    
                                }
                                
                            }.onAppear{
                   
                                viewModel.fetch()
                            }
                            
                        }
                        
                        
                        
                        
                        
                        Spacer()
                }
            }.ignoresSafeArea()
                
        }
    }
}


struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(viewModel: ViewModel())
    }
}
