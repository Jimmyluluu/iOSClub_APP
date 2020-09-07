//
//  MineView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct MineView: View {
    var is_manager:Bool = true
    var body: some View {
        ZStack{
            Color(hex:"0A0A0A")
            VStack(spacing:38){
                borderView(name: "薛竣祐", is_manager: is_manager, head: "card")
                Button(action:{
                    print("123")
                }){
                    VStack{
                        Image("card")
                        Text("打卡系統").foregroundColor(Color.white)
                    }
                }.buttonStyle(PlainButtonStyle())
                Button(action:{
                    print("1234")
                }){
                    VStack{
                        Image("leave")
                        Text("我要請假").foregroundColor(Color.white)
                    }
                }.buttonStyle(PlainButtonStyle())
                if is_manager{
                    Button(action:{
                        print("123")
                    }){
                        VStack{
                            Image("manage")
                            Text("社團管理").foregroundColor(Color.white)
                        }
                    }.buttonStyle(PlainButtonStyle())
                }
            }.offset(x :0,y: is_manager ? -40 : -90)
        }.edgesIgnoringSafeArea(.all)
    }
}



struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView()
    }
}
