//
//  TableViewButton.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct TableViewButton: View {
    var pictureName :String
    var picture :String
    
    var body: some View {
        VStack{
            Color(hex:0x0A0A0A)
            Image(picture)
            Text(pictureName)
                .font(.subheadline)
            
        }
    }
}

struct TableViewButton_Previews: PreviewProvider {
    static var previews: some View {
        TableViewButton(pictureName: "課程", picture: "class").previewLayout(.sizeThatFits)
    }
}
