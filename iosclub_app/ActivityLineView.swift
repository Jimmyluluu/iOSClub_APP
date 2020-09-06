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
    //    var image:Image!
        var body: some View {
            Button(action: {
                print("Hello button tapped!")
            }) {
                if(important){
                    Text(title)
                        .fontWeight(.bold)
                        .font(.system(.footnote,design:.rounded))
                        .frame(minWidth: 0, maxWidth: UIScreen.screenWidth/3)
                        .padding(10)
    //                    .padding(.leading)
    //                    .padding(.horizontal)
                        .foregroundColor(Color(.white))
                        .background(Color(hex:"ff8112"))
                        .cornerRadius(60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color(hex:"bd997b"), lineWidth: 5)
                        )
                        .lineLimit(1)
                        
                        
                }else{
                    Text(title)
                        .fontWeight(.bold)
                        .font(.system(.footnote,design:.rounded))
                        .frame(minWidth: 0, maxWidth: UIScreen.screenWidth/3)
                        .padding(10)
    //                    .padding(.leading)
    //                    .padding(.horizontal)
                        .foregroundColor(Color(.white))
    //                    .background(Color(hex: 0xff8112))
                        .cornerRadius(60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color(hex: "bd997b"), lineWidth: 5)
                        )
                        .lineLimit(1)
                }
            }
            .frame(width: 350)

        }
}

struct ActivityLineView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityLineView(title: "迎新茶會",important: true)
        .previewLayout(.sizeThatFits)
    }
}
