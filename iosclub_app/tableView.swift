//
//  tableView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/6.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct tableView: View {
    @State var tabViewPage:Int = 0
    init() {
        UITabBar.appearance().barTintColor = Color(hex: "0A0A0A").toUIColor()
    }
    var body: some View {
        TabView(selection:$tabViewPage){
            AboutClubView()
            .background(Color(hex:"0A0A0A"))
            .tabItem({
                Image("about")
                Text("關於社團")
            })
            .tag(0)
            .onAppear(){
                self.tabViewPage = 0
            }
            TimeLineView()
                .background(Color(hex:"0A0A0A"))
                .tabItem({
                    Image("activity")
                    Text("活動")
                })
                .tag(1)
                .onAppear(){
                    self.tabViewPage = 1
                }
            MineView()
                .background(Color(hex:"0A0A0A"))
                .tabItem({
                    Image("mind")
                    Text("個人")
                })
                .tag(2)
                .onAppear(){
                    self.tabViewPage = 2
                }
            ClassView()
                .background(Color(hex:"0A0A0A"))
                .tabItem({
                    Image("class")
                    Text("課程")
                })
                .tag(3)
                .onAppear(){
                    self.tabViewPage = 3
                }
            SettingView()
                .background(Color(hex:"0A0A0A"))
                .tabItem({
                    Image("setting")
                    Text("帳號設定")
                })
                .tag(4)
                .onAppear(){
                    self.tabViewPage = 4
                }
        }
//        .edgesIgnoringSafeArea(.top)
    }
}

struct tableView_Previews: PreviewProvider {
    static var previews: some View {
        tableView()
    }
}
