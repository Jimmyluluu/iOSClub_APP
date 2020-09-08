//
//  DayOffView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct DayOffView: View {
    //picker 資料
    @State var data: [(String, [String])] = [
        ("year", Array(2020...2040).map { "\($0)年" }),
        ("month", Array(1...12).map { "\($0)月" }),
        ("day", Array(1...31).map { "\($0)日" })
    ]
    //選取資料
    @State var selection: [String] = ["2020年", "1月", "1日"].map { "\($0)" }
    
    var body: some View {
        ZStack {
            Color(hex:"0A0A0A")
            VStack {
                Text("選擇請假日期")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                MultiPicker(data: data, selection: $selection)
                    .foregroundColor(Color.white)
                    .labelsHidden()
                    .colorScheme(.dark)
                    .frame(width:400, height:300)
//                    .padding(.infinity)
                VStack{
                    Text("請假時間  \(selection[0]+selection[1]+selection[2])").font(.title).foregroundColor(.white)
                    Button(action: {
                        print("123")
                    }){
                        Text("確認請假")
                            .font(.headline)
                            .padding(10)
                            .foregroundColor(Color(.white))
                            .cornerRadius(60)
                            .overlay(
                                RoundedRectangle(cornerRadius: 60)
                                    .stroke(Color(hex:"bd997b"), lineWidth: 3)
                            )
                    }.padding(.top,100)
                }
           }
        }.edgesIgnoringSafeArea(.all)
    }
    
}

struct MultiPicker: View  {

    typealias Label = String
    typealias Entry = String

    let data: [ (Label, [Entry]) ]
    @Binding var selection: [Entry]

    var body: some View {
        GeometryReader { geometry in
            HStack {
                ForEach(0..<self.data.count) { column in
                    Picker(self.data[column].0, selection: self.$selection[column]) {
                        ForEach(0..<self.data[column].1.count) { row in
                            Text(verbatim: self.data[column].1[row])
                            .tag(self.data[column].1[row])
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: geometry.size.width*0.8 / CGFloat(self.data.count), height: geometry.size.height)
                    .clipped()
                }
            }
        }
    }
}

struct DayOffView_Previews: PreviewProvider {
    static var previews: some View {
        DayOffView()
    }
}
