//
//  SwiftUIView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/5.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct loginView: View {
    @State private var name = ""
    var icon:String!
    var body: some View {
    ZStack{
        //Color(hex:0x0A0A0A)
        Image(icon)
            .offset(x:-50, y:0)
        Image("Line")
            .offset(x:28, y: 20)
        }
        //.edgesIgnoringSafeArea(.all)
    }
}
struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView(icon: "person")
    }
}



