//
//  borderView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct borderView: View {
    var name:String
    var is_manager:Bool
    var head:String
    var body: some View {
        ZStack{
            Image(is_manager ? "border_m" : "border").renderingMode(.original)
            HStack(spacing:20){
                Image(head).renderingMode(.original)
                VStack{
                    Text(name)
                        .foregroundColor(.white)
                        .font(.system(.title,design:.rounded))
                    Text(is_manager ? "MANAGER" : "MEMBER")
                        .foregroundColor(.white)
                        .font(.system(.headline,design:.rounded))
                }
            }
        }
    }
}

struct borderView_Previews: PreviewProvider {
    static var previews: some View {
        borderView(name: "薛竣祐", is_manager: true, head: "card")
    }
}
