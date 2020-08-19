//
//  ContentView.swift
//  08
//
//  Created by Đặng Nhật Quân on 8/18/20.
//  Copyright © 2020 Đặng Nhật Quân. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MainScreen : View {
    
    
    @State var order = false
    
    var body: some View {
        
    NavigationView {
        ZStack {
            
            if self.order == true {
                NavigationLink(destination: OrderView(order: self.$order), isActive: self.$order){
                    Text("")
                        .hidden()
                }
                
            }
            
            VStack{
                ZStack {
                    HStack{
                        Button(action:{}){
                            Image(systemName: "line.horizontal.3")
                                .font(.system(size: 30))
                                .foregroundColor(Color.black)
                                .frame(alignment: .leading)
                        }
                        Spacer()
                  
                        Button(action:{}){
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 30))
                                .foregroundColor(Color.black)
                                .frame(alignment: .leading)
                        }
                    }
                    Text("New York")
                        .fontWeight(.bold)
                        
                }
                .padding()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("50% off the full range")
                            .fontWeight(.bold)
                        Text("of Chinese Food")
                            .fontWeight(.bold)
                        
                        Text("Valid until June 10")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.3))
                            .padding(.vertical)
                        
                    }
                    .padding()
                    
                    Image("takeaway")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 120, height:120)
                }
                .frame(width: UIScreen.main.bounds.width-30)
                .background(Color.black.opacity(0.05))
                .cornerRadius(15)
                
                HStack{
                    Text("Cuisines")
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button(action:{}){
                        Text("See all")
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                    }
                    

                }
                .padding()
                
                HStack{
                    Button(action:{}){
                        VStack{
                            Image("pizza")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 100, height: 100)
                            
                            Text("Italian")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(Color.black)
                        }
                        .frame(width: (UIScreen.main.bounds.width/3)-20)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.horizontal, 5)
                    }
                    Button(action:{}){
                        VStack{
                            Image("taco")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 100, height: 100)
                            
                            Text("Mexican")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(Color.black)
                        }
                        .frame(width: (UIScreen.main.bounds.width/3)-20)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.horizontal, 5)
                    }
                    Button(action:{}){
                        VStack{
                            Image("burger")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 100, height: 100)
                            
                            Text("American")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(Color.black)
                        }
                        .frame(width: (UIScreen.main.bounds.width/3)-20)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.horizontal, 5)
                    }
                }
                
                    HStack{
                        Text("Popular")
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Button(action:{}){
                            Text("See all")
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                        }
                    }
                    .padding()
                
                
                HStack{
                    Button(action:{
                        print("order view")
                        self.order.toggle()
                    }){
                        VStack(alignment: .leading){
                            Text("Yogurt Bowl")
                                .fontWeight(.bold)
                                .padding(.vertical,7)
                                .foregroundColor(Color.black)
                            
                            Text("According to an old")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black.opacity(0.3))
                                .font(.system(size: 12))
                            Text("family recipe")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black.opacity(0.3))
                                .font(.system(size: 12))
                            
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.black)
                                
                                Text("5.0")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            .padding(.vertical,4)
                            
                            
                            
                            Image("fruit")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 150, height: 150)
                            
                        }
                        .frame(width: (UIScreen.main.bounds.width/2)-60,height:300)
                        .padding()
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                    }
                    
                    VStack{
                        Button(action:{}){
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Sandwiches")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                .offset(y:25)
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color.white)
                                    
                                    Text("5.0")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                }
                                .offset(y:25)
                                Image("sandwich")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 100 ,height: 100)
                                .offset(x:60,y:0)
                                
                            }
                            .frame(width: (UIScreen.main.bounds.width/2)-60,height:130)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(20)
                        }
                    
                        Button(action:{}){
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Hot dog")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    Spacer()
                                }
                                .offset(y:25)
                                
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color.black)
                                    
                                    Text("4.9")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                }
                                .offset(y:25)
                                
                                Image("hotdog")
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 100 ,height: 100)
                                    .offset(x:60,y:-10)
                                
                        
                            }
                            .frame(width: (UIScreen.main.bounds.width/2)-60,height:130)
                            .padding()
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(20)
                        }
                    }
                    
                    
                }
                
                Spacer()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


struct OrderView : View {
    
    @Binding var order : Bool
    @State var heart = false
    
    var body: some View{
    NavigationView {
        ZStack{
            VStack{
                HStack{
                    
                    Button(action:{
                        self.order.toggle()
                    }){
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.black)
                            .font(.system(size: 25))
                    }
                    
                    Spacer()
                    
                    Button(action:{
                        self.heart.toggle()
                    }){
                        if self.heart {
                            Image(systemName: "heart.fill")
                                .foregroundColor(Color.red)
                                .font(.system(size: 25))
                        }
                        else {
                            Image(systemName: "heart")
                                .foregroundColor(Color.black)
                                .font(.system(size: 25))
                        }
                            
                    }
                }
                .padding()
                
                
                Image("fruit")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:350,height: 350)
                    .foregroundColor(Color.green)
                
                HStack{
                    Text("Yogurt Bowl")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .font(.system(size:25))
                            
                    Spacer()
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .font(.system(size:25))
                            .foregroundColor(Color.black)
                        
                        Text("5.0")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .font(.system(size:25))
                    }
                }
                .padding(.horizontal)
                
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Price")
                            .fontWeight(.medium)
                            .foregroundColor(Color.black.opacity(0.5))
                            .offset(y:-4)
                        
                        Text("$6.99")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Mint"))
                            .font(.system(size:20))
                            .offset(y:4)
                            
                        
                    }
                    
                    Spacer()
                    
                    Rectangle()
                        .frame(width: 2, height: 50)
                        .foregroundColor(Color.black.opacity(0.05))
                    
                   
                    VStack(alignment: .leading){
                        HStack{
                            Text("Volume")
                                .fontWeight(.medium)
                                .foregroundColor(Color.black.opacity(0.5))
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.black.opacity(0.5))
                                .font(.system(size:15))
                            
                        }
                        
                        Text("350 gr")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .font(.system(size:20))
                        
                    }
                    .padding()
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack{
                    Text("Toppings for you")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .font(.system(size:20))
                    
                    Spacer()
                    
                    Button(action:{}){
                        Text("Clean")
                        .fontWeight(.bold)
                            .foregroundColor(Color.red)
                        .font(.system(size:20))
                    }
                }
                .padding(.horizontal)
                
                
                HStack{
                    
                        VStack{
                            
                            Button(action:{}){
                                Text("+")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            .frame(width:40,height: 40)
                            .background(Color.black)
                            .cornerRadius(40)
                            .offset(x:40,y:12)
                            
                            Image("fig")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:85,height: 85)
                                .offset(y:-10)
                            
                            Text("Fig")
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                                .offset(y:-15)
                        }
                        .frame(width:125 ,height: 150)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                
                    
                    VStack{
                        
                        Button(action:{}){
                            Text("-")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                        .frame(width:40,height: 40)
                        .background(Color("Yellow"))
                        .cornerRadius(40)
                        .offset(x:40,y:12)
                        
                        Image("kiwi")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:85,height: 85)
                            .offset(y:-10)
                        
                        Text("Kiwi")
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .offset(y:-15)
                    }
                    .frame(width:125 ,height: 150)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    
                    VStack{
                        
                        Button(action:{}){
                            Text("+")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        .frame(width:40,height: 40)
                        .background(Color.black)
                        .cornerRadius(40)
                        .offset(x:40,y:12)
                        
                        Image("rambutan")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:85,height: 85)
                            .offset(y:-10)
                        
                        Text("Rambutan")
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .offset(y:-15)
                    }
                    .frame(width:125 ,height: 150)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    
                }
                .padding(.vertical)
                
                Button(action:{})
                {
                    Text("Add to order")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width-30)
                        .background(Color.black)
                        .cornerRadius(15)
                }
                
                
                
                Spacer()
                
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    .navigationBarTitle("")
    .navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)
    }
    
}
