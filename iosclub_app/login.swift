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
            Color(hex:"0A0A0A")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:100){
                Text("LOG IN")
                    .foregroundColor(.white)
                    .font(.system(.largeTitle,design:.rounded))
                    .tracking(6)
//                    .offset(y:-100)
                VStack{
                    ZStack{
                        loginView(icon: "person")
                        
                        CustomTextField(
                            placeholder: Text("Username").foregroundColor(.white),
                            text: $username
                        )
                        .foregroundColor(.white)
                            .offset(x:30,y:-5)
                        .frame(width:150)
                        .padding(.all, 20)
                        .font(.system(.headline, design: .rounded))
                    }
                    ZStack{
                        loginView(icon: "lock")
                        CustomTextField(
                            placeholder: Text("Password").foregroundColor(.white),
                            text: $password
                        )
                        .foregroundColor(.white)
                            .offset(x:30,y:-5)
                        .frame(width:150)
                        .padding(.all, 20)
                        .font(.system(.headline, design: .rounded))
                    }
                    Button(action: {
                        print("asd")
                    }){
                        Image("arrow_forward")
                    }.buttonStyle(PlainButtonStyle())
                }
            
                VStack(spacing:70){
                    Button(action: {
                        print("123")
                    }){
                        Image("Group")
                    }
                        .offset(x:0,y: 30)
                        .buttonStyle(PlainButtonStyle())
                    
                    HStack(spacing:80){
                        Button(action: {
                            let tel = "https://www.instagram.com/fcu.iosclub/?hl=zh-tw"
                            let url: NSURL = URL(string: tel)! as NSURL

                            UIApplication.shared.open(url as URL)
                                print("123")
                        }){
                            Image("instagram")
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            let tel = "https://www.facebook.com/FCU.iOSClub/"
                            let url: NSURL = URL(string: tel)! as NSURL

                            UIApplication.shared.open(url as URL)
                              print("111")
                        }){
                          Image("facebook")
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
