//
//  SettingView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        ZStack{
            Color(hex:"0A0A0A")
            VStack(alignment:.leading){
                Text("SETTING").foregroundColor(.white).font(.system(.largeTitle,design:.rounded)).tracking(10)
                    .padding(.bottom)
//                    .offset(x :0,y: -170)
                Text("個人資料更改").foregroundColor(.white).font(.system(.headline,design:.rounded)).tracking(4)
//                    .offset(x :0,y: -140)
                ZStack{
                    Image("border_s")
    //                    .offset(x :0,y: -120)
                    VStack(spacing:30){
                        Text("生日 ：2000/04/01").foregroundColor(.white).font(.system(.body,design:.rounded))
        //                    .offset(x: 5,y :-120)
                        Image("line_s")
        //                    .offset(x :0,y: -100)
                        Text("性別 ：男").foregroundColor(.white).font(.system(.body,design:.rounded))
        //                    .offset(x: 5,y :-90)
                        Image("line_s")
        //                    .offset(x :0,y: -80)
                        Text("班級 ：資訊三甲").foregroundColor(.white).font(.system(.body,design:.rounded))
        //                    .offset(x: 5,y :-70)
                    }
                }
            }.offset(y:-110)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
