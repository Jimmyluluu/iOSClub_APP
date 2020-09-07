//
//  CheckInView1.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct CheckInView1: View {
    var body: some View {
        ZStack{
            Color(hex:"0A0A0A").edgesIgnoringSafeArea(.all)
            VStack{
                Text("DATE：2020.09.21").foregroundColor(.white).font(.system(.largeTitle,design:.rounded)).offset(x: 0,y: -120)
                Image("X").offset(x: 0,y: -90)
                Text("CHECK_in...").foregroundColor(.white).font(.system(.headline,design:.rounded)).offset(x: 100,y: -20)
                
            }
        }
    }
}

struct CheckInView1_Previews: PreviewProvider {
    static var previews: some View {
        CheckInView1()
    }
}
