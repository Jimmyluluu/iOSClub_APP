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
                    HStack{
                        ActivityLineView(title: "迎新茶會",important: true)
    //                        .frame(width: 100, height: 50)
                        TimeLineBranchView(number_offset: -15, date: "2")
                            .offset(x:15,y:-20)
                    }.padding(.leading)
                    HStack{
                        ActivityLineView(title: "iOSClub夜烤",important: false)
    //                        .frame(width: 100, height: 50)
                        TimeLineBranchView(number_offset: -15, date: "15")
                            .offset(x:15,y:-20)
                    }.padding(.leading)
                    
                }
                Capsule()
                    .fill(Color(hex:"bd997b"))
                    .frame(width: 10, height: UIScreen.screenHeight*0.7)
                    .offset(y:0)
                
                VStack {
                    HStack{
                        TimeLineBranchView(number_offset: 10, date: "1")
                            .offset(x:-15,y:-20)
                        ActivityLineView(title: "迎新茶會",important: false)
    //                    .frame(width: 100, height: 50)
                    }.padding(.trailing)
                    
                    HStack{
                        TimeLineBranchView(number_offset: 10, date: "3")
                            .offset(x:-15,y:-20)
                        ActivityLineView(title: "迎新茶會",important: true)
    //                    .frame(width: 100, height: 50)
                    }
                    .padding(.trailing)
                    .hidden()
                    
                    HStack{
                        TimeLineBranchView(number_offset: 10, date: "30")
                            .offset(x:-15,y:-20)
                        ActivityLineView(title: "迎新茶會",important: true)
    //                    .frame(width: 100, height: 50)
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
