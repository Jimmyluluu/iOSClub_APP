//
//  ContentView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/5.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var signInSuccess = false//判斷是否登入ㄉ
    var body: some View {
        Group{
            if self.signInSuccess //當是true的時候進開始頁相反進登入
            {
//                ClassView()//放登入成功頁
                tableView()
//                PaginatedView(pages: [Page(index: 0),Page(index: 1)], spacing: CGFloat(100))
            }
            else
            {
                login(
                signInSuccess: self.$signInSuccess)
                //把是否登入開關傳入
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
