//
//  pass.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/5.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct pass: View {
    @State private var name = ""
    var body: some View {
        VStack {
            Image("水瓶")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
            TextField("Username", text: $name)                   .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
                .foregroundColor(Color.yellow)
        }
        
    }
    
}

struct pass_Previews: PreviewProvider {
    static var previews: some View {
        pass()
    }
}
