//
//  login.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/5.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct login: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack{
            ZStack{
                Color(hex:0x0A0A0A)
                Image("LOG_IN")
                    .offset(x:0,y: -230)
            }
            .edgesIgnoringSafeArea(.all)
            
            loginView(icon: "person")
                .offset(x:-30,y: -120)
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .offset(x:20, y:-120)
                .frame(width:150)
                .padding(.all, 20)
                .font(.system(size: 12, design: .default))

                
            loginView(icon: "lock")
            .offset(x:-30,y: -60)
            TextField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .offset(x:20, y:-60)
                .frame(width:150)
                .padding(.all, 20)
                .font(.system(size: 12, design: .default))

            Button(action: {
                print("asd")
            }){
                Image("arrow_forward")
                }
                .offset(x:0,y: 30)
                .buttonStyle(PlainButtonStyle())
            
            Button(action: {
                print("123")
            }){
                Image("Group")
                }
                .offset(x:0,y: 150)
                .buttonStyle(PlainButtonStyle())
            
            Button(action: {
                 let tel = "https://www.instagram.com/fcu.iosclub/?hl=zh-tw"
                 let url: NSURL = URL(string: tel)! as NSURL

                 UIApplication.shared.open(url as URL)
                    print("123")
                }){
                    Image("instagram")
                    }
                .offset(x:-40,y: 250)
                .buttonStyle(PlainButtonStyle())
            
            
            Button(action: {
                let tel = "https://www.facebook.com/FCU.iOSClub/"
                let url: NSURL = URL(string: tel)! as NSURL

                UIApplication.shared.open(url as URL)
                  print("111")
              }){
                  Image("facebook")
                  }
                  .offset(x:40,y: 250)
                  .buttonStyle(PlainButtonStyle())
        }
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
