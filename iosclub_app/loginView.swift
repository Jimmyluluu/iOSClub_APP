//
//  SwiftUIView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/5.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct loginView: View {
    var icon:String!
    var body: some View {
        VStack{
            Image(icon)
                .offset(x:-80)
            Image("Line")
        }
    }
}
struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView(icon: "person")
//            .background(Color.black)
    }
}



