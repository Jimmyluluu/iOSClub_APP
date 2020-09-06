//
//  test.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/5.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI
struct SuperTextField: View {
    
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
    
}
struct test: View {
    @State var text: String = "TextField Text"
     
     var body: some View {
         SuperTextField(
             placeholder: Text("Placeholder Text").foregroundColor(.red),
             text: $text
         )
     }

}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
