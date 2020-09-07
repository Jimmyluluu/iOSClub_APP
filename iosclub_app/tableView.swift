//
//  tableView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct tableView: View {
    init() {
        UITabBar.appearance().barTintColor = Color(hex: "0A0A0A").toUIColor()
    }
    var body: some View {
        TabView{
            Text("g")
            .background(Color(hex:"0A0A0A"))
            .tabItem{
                Image("about")
                Text("關於社團")
            }.tag(0)
            TimeLineView()
            .background(Color(hex:"0A0A0A"))
            .tabItem{
                Image("activity")
                Text("活動")
            }.tag(1)
            MineView()
            .background(Color(hex:"0A0A0A"))
            .tabItem{
                Image("mind")
                Text("個人")
            }.tag(2)
            Text("a11")
            .background(Color(hex:"0A0A0A"))
            .tabItem{
                Image("class")
                Text("課程")
            }.tag(3)
            Text("a11")
            .background(Color(hex:"0A0A0A"))
            .tabItem{
                Image("setting")
                Text("帳號設定")
            }.tag(4)
        }
    }
}

struct tableView_Previews: PreviewProvider {
    static var previews: some View {
        tableView()
    }
}
