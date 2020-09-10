//
//  AboutClubView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct AboutClubView: View {
    @State private var page = 0
    private let items: [String] = ["社團介紹", "幹部介紹", "社團活動"]
    private let content:[String] = [
        "一個在課堂之外\n促進學習和實踐的\n iOS 開發者社團",
        "WWDC20 Winner\n全台唯二",
        "什麼都有"
    ]
    var body: some View {
        ZStack{
            Color(hex:"0A0A0A").edgesIgnoringSafeArea(.all)
            VStack {
                Text("ABOUT US")
                    .foregroundColor(Color(hex:"CFB39B"))
                    .font(.system(.largeTitle,design:.serif))
                    .fontWeight(.bold)
//                    .frame(minWidth: 0, maxWidth: UIScreen.screenWidth/3)
//                    .multilineTextAlignment(.leading)
                    .padding(.top)
                    .offset(x:-80,y:10)
//                .lineLimit(1)
                SegmentedPicker(items: self.items, selection: self.$page)
                    .padding(.bottom)
                    .offset(y:-10)
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(hex: "4CFFDEC4"))
                        .padding(.vertical,70)
                        .padding(.horizontal,80)
                        .offset(y:-80)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(hex: "7FFFDEC4"))
                        .padding(.vertical,50)
                        .padding(.horizontal,60)
                        .offset(y:-40)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(hex: "FFDEC4"))
                        .padding(.vertical,30)
                        .padding(.horizontal,40)
                    
                    Text(content[page])
                        .font(.system(.title,design:.rounded))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth:300)
                    Image("iosclub_head")
                        .resizable()
                        .frame(width: 100.68, height: 127.12)
                        .offset(x:UIScreen.screenWidth/2.7,y:UIScreen.screenHeight/3.6)
                        .padding(.bottom,60)
                        .offset(y:-10)
                    
                    
                }
                
            }
        }
    }
}

struct AboutClubView_Previews: PreviewProvider {
    static var previews: some View {
        AboutClubView()
    }
}
