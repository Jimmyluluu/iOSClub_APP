//
//  ClassView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct ClassView: View {
    var body: some View {
        ZStack{
            
            Color(hex:"0A0A0A")
            VStack(alignment:.leading){
                Text("課程學習").foregroundColor(.white).font(.system(.largeTitle,design:.rounded)).tracking(6).offset(x :0,y: -280)
                Text("/Swift學習").foregroundColor(.white).font(.system(.headline,design:.rounded)).tracking(5).offset(x :-60,y: -220)
                Text("/Playground學習").foregroundColor(.white).font(.system(.headline,design:.rounded)).tracking(5).offset(x :-60,y: -60)
                Text("/額外練習").foregroundColor(.white).font(.system(.headline,design:.rounded)).tracking(5).offset(x :-60,y: 100)
            }
            ScrollView(.horizontal){
            HStack{
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                }
                
            }.offset(x :40,y: -130)
            ScrollView(.horizontal){
            HStack{
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                }
            }.offset(x :40,y: 50)
            ScrollView(.horizontal){
            HStack{
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                Image("範例")
                }
            }.offset(x :40,y: 230)
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView()
    }
}
