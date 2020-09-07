//
//  AboutClubView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct AboutClubView: View {
    var body: some View {
        ZStack{
            Color(hex:"0A0A0A").edgesIgnoringSafeArea(.all)
            Image("lock")
        }
    }
}

struct AboutClubView_Previews: PreviewProvider {
    static var previews: some View {
        AboutClubView()
    }
}
