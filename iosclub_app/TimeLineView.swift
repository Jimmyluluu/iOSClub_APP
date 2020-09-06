//
//  TimeLineView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//
//
import SwiftUI
//class TimeLineView:UIView{
//    var leftCount:Int!
//    var rightCount:Int!
////    var activeLeftList:[Active]!
////    var activeRightList:[Active]!
//}

struct TimeLineView:View {
    var body:some View{
        HStack{
            VStack{
                HStack{
                    ActivityLineView(title: "迎新茶會",important: true)
                        .frame(width: 50, height: 50)
                    TimeLineBranchView(number_offset: -15)
                        .offset(x:15,y:-20)
                }
                
            }
            Capsule()
                .fill(Color(hex:"bd997b"))
                .frame(width: 10, height: UIScreen.screenHeight)
                .offset(y:-10)
            VStack {
                HStack{
                    TimeLineBranchView(number_offset: 10)
                        .offset(x:-15,y:-20)
                    ActivityLineView(title: "迎新茶會",important: true)
                    .frame(width: 50, height: 50)
                }
            }
        }
        
    }
}

struct TimeLineView_Previews: PreviewProvider {
    var screenBound = UIScreen.main.bounds
    static var previews: some View {
        TimeLineView()
    }
}
