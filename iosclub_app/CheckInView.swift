//
//  CheckInView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct CheckInView: View {
    var name:String
    var is_manager:Bool
    var body: some View {
        ZStack{
            Color(hex:"0A0A0A")
            .edgesIgnoringSafeArea(.all)
            Image("CheckIn")
                .offset(x: 0,y: -25)
            ZStack{
                VStack{
                    HStack{
                        Image("card")
                        VStack(alignment:.leading){
                            Text(name).foregroundColor(.white).font(.system(.headline,design:.rounded)).tracking(6)
                            
                            Text(is_manager ? "MANAGER" : "MEMBER")
                                .foregroundColor(.white).font(.system(.footnote,design:.rounded))
                            
                        }
                    }
                    Image("CheckInline")
                }
                .offset(x: 0,y: -25)
                Text("第一週")
                    .foregroundColor(Color.gray)
                    .tracking(3)
                    .font(.system(.caption,design:.rounded))
                    .offset(x: -55,y: -70)

            }
        }
    }
}

struct CheckInView_Previews: PreviewProvider {
    static var previews: some View {
        CheckInView(name: "薛竣祐", is_manager: true)
    }
}
