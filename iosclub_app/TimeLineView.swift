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
        ZStack{
            Text("活\n動")
                .fontWeight(.bold)
                .font(.system(.largeTitle,design:.rounded))
                .foregroundColor(Color(.white))
                .offset(x:30,y:-UIScreen.screenHeight/2*0.7)
            Text("社\n團")
                .fontWeight(.bold)
                .font(.system(.largeTitle,design:.rounded))
                .foregroundColor(Color(.white))
                .offset(x:-30,y:-UIScreen.screenHeight/2*0.7)
            HStack{
                VStack{
                    //放在這裡
                    HStack{
                        ActivityLineView(title: "迎新茶會",important: true)
                        TimeLineBranchView(is_school:false, date: "2")
                            .offset(x:15,y:-20)
                    }.padding(.leading)
                    //這是一個
                    HStack{
                        ActivityLineView(title: "中秋夜烤",important: false)
                        TimeLineBranchView(is_school:false, date: "15")
                            .offset(x:15,y:-20)
                    }.padding(.leading)
                    //這是兩個
                    
                }
                Capsule()
                    .fill(Color(hex:"bd997b"))
                    .frame(width: 10, height: UIScreen.screenHeight*0.7)
                    .offset(y:0)
                
                VStack {
                    HStack{
                        TimeLineBranchView(is_school:true, date: "1")
                            .offset(x:-15,y:-20)
                        ActivityLineView(title: "迎新茶會",important: false)
                    }.padding(.trailing)
                    
                    HStack{
                        TimeLineBranchView(is_school:true, date: "3")
                            .offset(x:-15,y:-20)
                        ActivityLineView(title: "迎新茶會",important: true)
                    }
                    .padding(.trailing)
                    .hidden()
                    
                    HStack{
                        TimeLineBranchView(is_school:true, date: "30")
                            .offset(x:-15,y:-20)
                        ActivityLineView(title: "迎新茶會",important: true)
                    }.padding(.trailing)
                }
            }
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
        .background(Color(hex:"0A0A0A"))
//        .edgesIgnoringSafeArea(.all)
        
    }
}

struct TimeLineView_Previews: PreviewProvider {
    var screenBound = UIScreen.main.bounds
    static var previews: some View {
        TimeLineView()
            .previewLayout(.sizeThatFits)
    }
}
