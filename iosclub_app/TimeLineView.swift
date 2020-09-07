//
//  TimeLineView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//
//
import SwiftUI
struct ActivityItem:Hashable {
    var title: String
    var important: Bool
    var is_school: Bool
    var date:String
}
struct TimeLineView:View {
    @State var leftData:[ActivityItem] = [
        ActivityItem(title: "中秋夜烤",important:true,is_school:false,date:"2"),
        ActivityItem(title: "社員大會",important:true,is_school:false,date:"15")
    ]
    @State var rightData:[ActivityItem] = [
        ActivityItem(title: "迎新茶會",important:false,is_school:true,date:"1"),
        ActivityItem(title: "期末聚",important:true,is_school:true,date:"30")
    ]
    var body:some View{
        ZStack{
            ActivityTitle(text: "活\n動", x_offset: 30)
            ActivityTitle(text: "社\n團", x_offset: -30)
            HStack{
                ActivityItemListView(data: leftData)
                Capsule()
                    .fill(Color(hex:"bd997b"))
                    .frame(width: 10, height: UIScreen.screenHeight*0.7)

                ActivityItemListView(data: rightData)
            }
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
        .background(Color(hex:"0A0A0A"))
        
    }
}
struct ActivityTitle:View {
    var text:String
    var x_offset:CGFloat
    var body: some View{
        Text(text)
        .fontWeight(.bold)
        .font(.system(.largeTitle,design:.rounded))
        .foregroundColor(Color(.white))
        .offset(x:x_offset,y:-UIScreen.screenHeight/2*0.7)
    }
}
struct ActivityItemListView:View {
    var data:[ActivityItem]
    var body: some View{
        VStack{
            ForEach(data, id: \.self) { (item) in
                ActivityItemView(title: item.title, important: item.important, is_school: item.is_school, date: item.date)
            }
        }
    }
}
struct ActivityItemView:View {
    var title:String
    var important:Bool
    var is_school:Bool
    var date:String
    var body:some View{
        VStack{
            if is_school{
                HStack{
                    TimeLineBranchView(is_school:is_school, date: date)
                        .offset(x:-15,y:-20)
                    ActivityLineView(title: title,important: important)
                }
            }else{
                HStack{
                    ActivityLineView(title: title,important: important)
                    TimeLineBranchView(is_school:is_school, date: date)
                        .offset(x:15,y:-20)
                }
            }
        }.padding(is_school ? .trailing : .leading)
    }
}

struct TimeLineView_Previews: PreviewProvider {
    var screenBound = UIScreen.main.bounds
    static var previews: some View {
        TimeLineView()
            .previewLayout(.sizeThatFits)
    }
}
