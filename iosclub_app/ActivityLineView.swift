//
//  ActivityLineView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct ActivityLineView: View {
    var title:String!
    var important:Bool!
//    let color = important! ? Color(hex: "ff812") : Color(.white).opacity(0)
    var body: some View {
        Button(action: {
            print("Hello button tapped!")
        }) {
            Text(title)
                .fontWeight(.bold)
                .font(.system(.footnote,design:.rounded))
                .frame(minWidth: 0, maxWidth: UIScreen.screenWidth/3)
                .padding(10)
                .foregroundColor(Color(.white))
                .background(important ? Color(hex:"7fff8112"):Color(.white).opacity(0))
                .cornerRadius(60)
                .overlay(
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(Color(hex:"bd997b"), lineWidth: 5)
                )
                .lineLimit(1)
        }

    }
}

struct ActivityLineView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityLineView(title: "迎新茶會",important: true)
        .previewLayout(.sizeThatFits)
    }
}
