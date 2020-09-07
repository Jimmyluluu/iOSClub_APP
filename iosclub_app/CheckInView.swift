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
            Color(hex:"0A0A0A").edgesIgnoringSafeArea(.all)
            
            PaginatedView(
                pages: [
                    Page(index: 1,name: "薛竣祐",is_manager: true),
                    Page(index: 2,name: "薛竣祐",is_manager: true),
                    Page(index: 3,name: "薛竣祐",is_manager: true),
                    Page(index: 4,name: "薛竣祐",is_manager: true),
                    Page(index: 5,name: "薛竣祐",is_manager: true)
                ],
                spacing: CGFloat(50)
            )

//            }
            
        }.navigationBarTitle("Try it!", displayMode: .inline)
        
    }
}

struct CheckInView_Previews: PreviewProvider {
    static var previews: some View {
        CheckInView(name: "薛竣祐", is_manager: true)
    }
}
