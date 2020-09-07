//
//  TimeLineBranchView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//
import SwiftUI

struct TimeLineBranchView: View {
    var is_school:Bool
//    var number_offset:CGFloat
    var date:String
    var body: some View {
        VStack{
            Text(date)
                .foregroundColor(Color(hex:"bd997b"))
                .fontWeight(.bold)
                .font(.system(.largeTitle,design:.rounded))
                .offset(x:is_school ? 15 : -15,y:10)
            Capsule()
                .fill(Color(hex:"bd997b"))
                .frame(width: 60, height: 10)
                .offset(y:-10)
        }
    }
}

struct TimeLineBranchView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineBranchView(is_school:false,date: "1").previewLayout(.sizeThatFits)
    }
}

