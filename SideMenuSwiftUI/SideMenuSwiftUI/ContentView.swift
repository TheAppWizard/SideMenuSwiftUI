//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 07/04/21.
//  The App Wizard
//  Instagram : theappwizard2408

import SwiftUI


struct ContentView: View {
    var body: some View {
        HomeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}









































struct HomeView: View {
    
    @State var showDetails  = false
    
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
        
            
            VStack{
            
            TopBar()
            Spacer()
             BodyView()
             Spacer()
            DemoTabBar()
            }
            
            
            Button(action: {
                    self.showDetails.toggle()
            }) {
                
                Image(systemName: "plus")
                                   .resizable()
                                   .frame(width: 25, height: 25, alignment: .center)
                                   .foregroundColor(.white)
            }.offset(x: -170, y: -395)
            
            if showDetails {
               
                MenuView()
                    .opacity(1)
                    .offset(x: -80, y: -20)
                
                
                ZStack{
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 25, height: 25, alignment: .center)
                    .offset(x: -170, y: -395)
                    
                    
                Image(systemName: "xmark")
                                   .resizable()
                                   .frame(width: 25, height: 25, alignment: .center)
                                   .foregroundColor(.white)
                    .offset(x: -170, y: -395)
                }
         
            }
            
            
        }
    }
}



struct DemoTabBar: View {
    var body: some View {
        ZStack{
          
            
            
            HStack{
                
                //Item
                VStack{
                    Image(systemName: "plus.app")
                        .frame(width: 40, height: 35, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("Add")
                        .foregroundColor(.white)
                }
                
                Spacer().frame(width: 30, height: 0, alignment: .center)
                
                VStack{
                    Image(systemName: "cart")
                        .frame(width: 40, height: 35, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("Cart")
                        .foregroundColor(.white)
                }
                
                Spacer().frame(width: 30, height: 0, alignment: .center)
                VStack{
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 41, height: 39, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("Home")
                        .foregroundColor(.white)
                }
                
                Spacer().frame(width: 30, height: 0, alignment: .center)
                VStack{
                    Image(systemName: "magnifyingglass")
                        .frame(width: 40, height: 35, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("Search")
                        .foregroundColor(.white)
                }
                
                Spacer().frame(width: 30, height: 0, alignment: .center)
                VStack{
                    Image(systemName: "person.crop.circle")
                        .frame(width: 40, height: 35, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("Profile")
                        .foregroundColor(.white)
                }
                //
            }
            
        }
 
    }
}



struct TopBar: View {
    
    @State var showDetails  = false
    
    var body: some View {
        ZStack{
            HStack{
                
                
                Spacer().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
               
                Spacer()
                
                Text("THE APP WIZARD")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                
                
                
                Spacer()
                
                
                Image(systemName: "arrow.backward")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                      
                
            }.padding(.all)
            
            
          
            
        }
    }
}


struct BodyView: View {
    var body: some View {
        ZStack{
            
            VStack{
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 380, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray).opacity(0.1)
                .shadow(color: .gray, radius: 2, x: 0.0, y: 0.0)
                
                Spacer().frame(width: 100, height: 50, alignment: .center)
                
                Rectangle()
                    .frame(width: 250, height: 50, alignment: .center)
                    .foregroundColor(.gray).opacity(0.1)
                    .offset(x: -50, y: 0)
                
                Spacer().frame(width: 100, height: 30, alignment: .center)
                
                Rectangle()
                    .frame(width: 350, height: 20, alignment: .center)
                    .foregroundColor(.gray).opacity(0.1)
                    .offset(x: 0, y: 0)
                
               
                Rectangle()
                    .frame(width: 350, height: 20, alignment: .center)
                    .foregroundColor(.gray).opacity(0.1)
                    .offset(x: 0, y: 0)
                

               
                Rectangle()
                    .frame(width: 350, height: 20, alignment: .center)
                    .foregroundColor(.gray).opacity(0.1)
                    .offset(x: 0, y: 0)
                
                
                
              
                Rectangle()
                    .frame(width: 350, height: 20, alignment: .center)
                    .foregroundColor(.gray).opacity(0.1)
                    .offset(x: 0, y: 0)
                
                Rectangle()
                    .frame(width: 350, height: 20, alignment: .center)
                    .foregroundColor(.gray).opacity(0.1)
                    .offset(x: 0, y: 0)
                
                Rectangle()
                    .frame(width: 350, height: 20, alignment: .center)
                    .foregroundColor(.gray).opacity(0.1)
                    .offset(x: 0, y: 0)
                
            }
            
            
        }
    }
}
