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
var midlineLength = UIScreen.screenHeight*0.8//整個螢幕高度*0.8 中間那條線長度(37行)以及各選項間距(60行)
var itemSpace=0 //活動樹葉的空間
struct TimeLineView:View {
    func reView_itemSpace()  {
        itemSpace = leftData.count>rightData.count ? leftData.count+2:rightData.count+2 //初始化判斷左右兩邊哪一邊為最大item *警告必需要在接完後端之後
    }
    @State var leftData:[ActivityItem] = [
    ]
    @State var rightData:[ActivityItem] = []
    
    var body:some View{
        ZStack{
            ActivityTitle(text: "活\n動", x_offset: 30)
            ActivityTitle(text: "社\n團", x_offset: -30)
            HStack{
                ActivityItemListView(data: leftData,itemSpace:itemSpace)
                    .offset(y:CGFloat(-50*(10-itemSpace)/10))
                Capsule()
                    .fill(Color(hex:"bd997b"))
                    .frame(width: 10, height: midlineLength)
                
                //中線
                ActivityItemListView(data: rightData,itemSpace:itemSpace)
                    .offset(y:CGFloat(-50*(10-itemSpace)/10))
            }.offset(y:20)
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
        .background(Color(hex:"0A0A0A"))
        .onAppear{
            getTheLeftRightData(completion: {(data) in
                self.rightData = []
                self.leftData = [] //歸0
                for i in data//把陣列分析
                {
                    if i.is_school //看校內校外
                    {
                        self.rightData.append(ActivityItem(title: i.title,important:i.is_important,is_school:i.is_school,date:String(i.date_day)))
                    }
                    else
                    {
                        self.leftData.append(ActivityItem(title: i.title,important:i.is_important,is_school:i.is_school,date:String(i.date_day)))
                    }
                }
                self.reView_itemSpace()//呼叫更新間距
                
            })
        }
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
            .offset(x:x_offset,y:-UIScreen.screenHeight/2*0.75)
    }
}
struct ActivityItemListView:View {
    var data:[ActivityItem]
    var itemSpace:Int=0
    var is_hidden : Bool = false
    var body: some View{
        VStack(spacing:(midlineLength-CGFloat(itemSpace*65*itemSpace/10))/CGFloat(itemSpace/*把中線長度除與左邊或右邊最大item*/)){
            ActivityItemView(title: "", important: false, is_school: false, date: "").hidden()
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
