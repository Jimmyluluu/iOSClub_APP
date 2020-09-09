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
//    init() {
//        UISegmentedControl.appearance().selectedSegmentTintColor = Color(hex:"0A0A0A").toUIColor()
//        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
//        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .normal)
//
//    }
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
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(hex: "4CFFDEC4"))
                        .padding(.vertical,90)
                        .padding(.horizontal,80)
                        .offset(y:-80)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(hex: "7FFFDEC4"))
                        .padding(.vertical,70)
                        .padding(.horizontal,60)
                        .offset(y:-40)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(hex: "FFDEC4"))
                        .padding(.vertical,50)
                        .padding(.horizontal,40)

                    Image("iosclub_head")
                        .resizable()
                        .frame(width: 100.68, height: 127.12)
                        .offset(x:UIScreen.screenWidth/2.7,y:UIScreen.screenHeight/3.6)
                        .padding(.bottom,30)
                    
                    
                }
//                if page == 1{
//                    Text("\(page)").foregroundColor(.white)
//                }
//                Text("\(page)").foregroundColor(.white)
//                Picker(selection: $page, label: Text("")) {
//                    Text("社團介紹").tag(0)
//                    Text("幹部介紹").tag(1)
//                    Text("社團活動").tag(2)
//                }.pickerStyle(SegmentedPickerStyle())
//                    .background(Color(hex:"0A0A0A"))
//                if page == 0{
//                    Text("Value: \(page)")
//                }
                
            }
        }
    }
}

struct AboutClubView_Previews: PreviewProvider {
    static var previews: some View {
        AboutClubView()
    }
}
