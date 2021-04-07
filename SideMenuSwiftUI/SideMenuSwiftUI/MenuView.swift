//
//  MenuView.swift
//  SideMenuSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 07/04/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        SideMenu()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}


struct SideMenu: View {
    
    
    @State var arcade  = false
    @State var create  = false
    @State var work  = false
    @State var play  = false
    @State var dev  = false
    
    
    var body: some View {
        VStack{
            
            ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 350, height: 100, alignment: .center)
                .foregroundColor(.red)
                
                
                
                HStack{
                    
                    Spacer().frame(width: 90, height: 100, alignment: .center)
                    
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 50, height: 48, alignment: .center)
                        .foregroundColor(.white)
                       
                    
                    
                    Spacer().frame(width: 40, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    
                    Text("ARCADE")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                }
            }.offset(x: arcade ? -15 : -380, y:  0)
            .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                .onAppear() {
                    self.arcade.toggle()
                }
            .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
            
                
            ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 325, height: 100, alignment: .center)
                .foregroundColor(.orange)
                
                HStack{
                    
                    Spacer().frame(width: 90, height: 100, alignment: .center)
                    
                    Image(systemName: "scribble")
                        .resizable()
                        .frame(width: 50, height: 48, alignment: .center)
                        .foregroundColor(.white)
                        
                    
                    
                    Spacer().frame(width: 40, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    
                    Text("CREATE")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                }
            }.offset(x: create ? -20 : -380, y: -20)
            .animation(Animation.easeInOut(duration: 1.1).repeatCount(1))
                .onAppear() {
                    self.create.toggle()
                }
            .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
            
            
            ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 300, height: 100, alignment: .center)
                .foregroundColor(.yellow)
                
                HStack{
                    
                    Spacer().frame(width: 90, height: 100, alignment: .center)
                    
                    Image(systemName: "network")
                        .resizable()
                        .frame(width: 50, height: 48, alignment: .center)
                        .foregroundColor(.white)
                        
                    
                    
                    Spacer().frame(width: 40, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    
                    Text("WORK")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                }
            }.offset(x: work ? -25 : -380, y: -30)
            .animation(Animation.easeInOut(duration: 1.2).repeatCount(1))
                .onAppear() {
                    self.work.toggle()
                }
            .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
            
            ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 275, height: 100, alignment: .center)
                .foregroundColor(.green)
                
                HStack{
                    Spacer().frame(width: 60, height: 100, alignment: .center)
                    
                    Image(systemName: "gamecontroller")
                        .resizable()
                        .frame(width: 60, height: 48, alignment: .center)
                        .foregroundColor(.white)
                        
                    
                    
                    Spacer().frame(width: 40, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    
                    Text("PLAY")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                }
            }.offset(x: play ? -30 : -380, y: -40)
            .animation(Animation.easeInOut(duration: 1.3).repeatCount(1))
                .onAppear() {
                    self.play.toggle()
                }
            .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
            
            
            ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 250, height: 100, alignment: .center)
                .foregroundColor(.blue)
                
                HStack{
                    Spacer().frame(width: 40, height: 100, alignment: .center)
                    
                    Image(systemName: "hammer")
                        .resizable()
                        .frame(width: 50, height: 48, alignment: .center)
                        .foregroundColor(.white)
                        
                    
                    
                    Spacer().frame(width: 40, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    
                    Text("DEV")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                }
            }.offset(x: dev ? -35 : -380, y: -50)
            .animation(Animation.easeInOut(duration: 1.4).repeatCount(1))
                .onAppear() {
                    self.dev.toggle()
                }
            .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
            
            
            
                
            }
        }
    }

