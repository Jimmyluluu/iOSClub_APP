//
//  TimeLineBranchView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//
import SwiftUI

struct TimeLineBranchView: View {
    var number_offset:CGFloat
    var date:String
    var body: some View {
        VStack{
            Text(date)
                .foregroundColor(Color(hex:"bd997b"))
                .fontWeight(.bold)
                .font(.system(.largeTitle,design:.rounded))
                .offset(x:number_offset,y:10)
//            RoundedRectangle(cornerRadius: 25, style: .continuous)
//            .fill(Color.red)
//            .frame(width: 200, height: 200)
            Capsule()
                .fill(Color(hex:"bd997b"))
                .frame(width: 60, height: 10)
                .offset(y:-10)
            
            
//            Path{ path in
//                path.move(to: CGPoint(x: UIScreen.screenWidth/2-30, y: 0))
////                path.addLine(to: CGPoint(x: 10, y: 0))
//                path.addLine(to: CGPoint(x: UIScreen.screenWidth/2+30, y: 0))
//            }
//            .stroke(Color(hex:"bd997b"),style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//
        }
    }
}

struct TimeLineBranchView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineBranchView(number_offset: 15,date: "1").previewLayout(.sizeThatFits)
    }
}

