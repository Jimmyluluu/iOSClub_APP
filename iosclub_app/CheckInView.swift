//
//  CheckInView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct CheckInView: View {
    var body: some View {
        ZStack{
            Color(hex:"0A0A0A")
            .edgesIgnoringSafeArea(.all)
            ZStack{
                Image("CheckIn")
                Image("CheckInline")
            }.offset(x: 0,y:-25 )
        }
    }
}

struct CheckInView_Previews: PreviewProvider {
    static var previews: some View {
        CheckInView()
    }
}
