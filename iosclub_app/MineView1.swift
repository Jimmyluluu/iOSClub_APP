//
//  Mind1.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct MineView1: View {
     var body: some View {
        ZStack{
            Color(hex:"0A0A0A")
            VStack(spacing:38){
                borderView(name: "薛竣祐", is_manager: false, head: "card")
//                ZStack{
//                    Image("border")
//                    HStack(spacing:20){
//                        Image("card")
//                        VStack{
//                            Text("薛竣祐")
//                                .foregroundColor(.white)
//                                .font(.system(.title,design:.rounded))
//                            Text("MANAGER")
//                                .foregroundColor(.white)
//                                .font(.system(.headline,design:.rounded))
//                        }
//                    }
//                }
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
            }.offset(x :0,y: -90)
        }.edgesIgnoringSafeArea(.all)
    }
}


struct MineView1_Previews: PreviewProvider {
    static var previews: some View {
        MineView1()
    }
}
