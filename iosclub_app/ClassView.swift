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
        NavigationView{
            ZStack{
                Color(hex:"0A0A0A").edgesIgnoringSafeArea(.all)
                VStack{
                    Text("課程學習")
                        .foregroundColor(.white)
                        .font(.system(.largeTitle,design:.rounded))
                        .tracking(6)
                        .padding(.bottom)
                    VStack(alignment:.leading){
                        Text("/Swift學習")
                            .foregroundColor(.white)
                            .font(.system(.headline,design:.rounded))
                            .tracking(5)
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                
                                ForEach(0 ..< 6) { item in
                                    NavigationLink(destination:ClassContentView()){
                                        Image("範例").renderingMode(.original)
                                    }
                                }
                            }
                        }
                    }
                    VStack(alignment:.leading){
                        Text("/Playground學習")
                            .foregroundColor(.white)
                            .font(.system(.headline,design:.rounded))
                            .tracking(5)
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                
                                ForEach(0 ..< 6) { item in
                                    NavigationLink(destination:ClassContentView()){
                                        Image("範例").renderingMode(.original)
                                    }
                                }
                            }
                        }
                    }
                    VStack(alignment:.leading){
                        Text("/額外練習")
                            .foregroundColor(.white)
                            .font(.system(.headline,design:.rounded))
                            .tracking(5)
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{

                                ForEach(0 ..< 3) { item in
                                    NavigationLink(destination:ClassContentView()){
                                        Image("範例").renderingMode(.original)
                                    }
                                }
                            }
                        }
                    }
                }.padding(.leading)
                .background(Color(hex:"0A0A0A"))
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
    }
}
struct StudyRow:View{
    var body: some View{
        VStack{
            Text("/Swift學習")
                .foregroundColor(.white)
                .font(.system(.headline,design:.rounded))
                .tracking(5)
            ScrollView(.horizontal){
                HStack{
                    
//                    ForEach(0 ..< 6) { item in
                        NavigationLink(destination:ClassContentView()){
                            Image("範例").renderingMode(.original)
                        }
//                    }
                    Image("範例")
                    Image("範例")
                    Image("範例")
                    Image("範例")
                    Image("範例")
                    Image("範例")
                }
            }
        }
    }
}
struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView()
    }
}
