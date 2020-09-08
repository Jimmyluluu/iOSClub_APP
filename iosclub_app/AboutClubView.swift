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
                SegmentedPicker(items: self.items, selection: self.$page)
                    .padding()
                Text("\(page)").foregroundColor(.white)
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
