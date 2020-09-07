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
        NavigationView{
            ZStack{
                Color(hex:"0A0A0A")
                VStack(spacing:38){
                    NavigationLink(destination:CheckInView(name: "薛竣祐", is_manager: is_manager)){
                        
                    borderView(name: "薛竣祐", is_manager: is_manager, head: "card")
                    }
                    
                    NavigationLink(destination:CheckInView1()){
                        VStack{
                            Image("card").renderingMode(.original)
                            Text("打卡系統").foregroundColor(Color.white)
                        }
                    }
                    
                    NavigationLink(destination:DayOffView()){
                        VStack{
                            Image("leave").renderingMode(.original)
                            Text("我要請假").foregroundColor(Color.white)
                        }
                    }
                    if is_manager{
                        NavigationLink(destination: Text("123")){
                            VStack{
                                Image("manage").renderingMode(.original)
                                Text("社團管理").foregroundColor(Color.white)
                            }
                        }
                    }
                }.offset(x :0,y: is_manager ? -40 : -90)
            }.edgesIgnoringSafeArea(.all)
        }
    }
}



struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView()
    }
}
