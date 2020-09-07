//
//  ClassContentView.swift
//  iosclub_app
//
//  Created by 魯敬元 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import SwiftUI

struct ClassContentView: View {
    var body: some View {
        ZStack{
            Color(hex: "0A0A0A")
            VStack{
                Text("Swift學習").foregroundColor(.white).font(.system(.largeTitle,design:.rounded)).tracking(6)
                ZStack{
                    Image("border_c").offset(x: 0,y: -10)
                    VStack{
                        Text("DATE:2020.09.21").foregroundColor(.gray).font(.system(.body,design:.rounded)).tracking(4).offset(x :50,y: -260)
                        Image("line2").offset(x :45,y: -265)
                    }
                    VStack{
                        HStack{
                            Image("line1").offset(x :-80,y: -110)
                            Text("課程介紹:").foregroundColor(.gray).font(.system(.body,design:.rounded)).tracking(6).offset(x :-80,y: -110)
                        }
                        Text("弟子規，聖人訓，首孝弟，次謹信，汎愛眾，而親仁，有餘力， 則學文。父母呼，應勿緩。父母命，行勿懶。父母教，須敬聽。父母責， 須順承。冬則溫，夏則凊；晨則省，昏則定。出必告，反必面；居有 常，業無變。事雖小，勿擅為；茍擅為，子道虧。物雖小，勿私藏； 茍私藏，親心傷。親所好，力為具，親所惡，謹為去；身有傷，貽親 憂，德有傷，貽親羞。親愛我，孝何難；親憎我，孝方賢。親有過， 諫使更；怡吾色，柔吾聲。諫不入，悅復諫；號泣隨，撻無怨。親有 疾，藥先嘗；晝夜侍，不離床。喪三年，常悲咽；居處變，酒肉絕。 喪 盡禮，祭盡誠； 事死者，如事生。")
                            .foregroundColor(.white).font(.system(.body,design:.rounded)).border(Color.gray, width: 1).frame(minWidth: UIScreen.screenWidth*0.7, idealWidth: UIScreen.screenWidth*0.6, maxWidth: UIScreen.screenWidth*0.7
                                ,maxHeight:UIScreen.screenHeight*0.2)
                            .offset(x: 0,y: -110)
                    }
                    VStack{
                        HStack{
                            Image("line1").offset(x :-90,y: 90)
                            Text("教材區:").foregroundColor(.gray).font(.system(.body,design:.rounded)).tracking(6).offset(x :-90,y: 90)
                        }
                        Text("兄道友，弟道恭，兄弟睦，孝在中。財物輕，怨何生；言語忍， 忿自泯。 或飲食，或坐走，長者先，幼者後。長呼人，即代叫；人不 在，己即到。稱尊長，勿呼名；對尊長，勿見能。路遇長，疾趨揖， 長無言，退恭立。騎下馬，乘下車，過猶待，百步餘。長者立，幼勿 坐；長者坐，命乃坐。尊長前，聲要低；低不聞，卻非宜。進必趨， 退必遲；問起對，視勿移。事諸父，如事父；事諸兄，如事兄。")
                        .foregroundColor(.white).font(.system(.body,design:.rounded)).border(Color.gray, width: 1).frame(minWidth: UIScreen.screenWidth*0.7, idealWidth: UIScreen.screenWidth*0.6, maxWidth: UIScreen.screenWidth*0.7
                            ,maxHeight:UIScreen.screenHeight*0.2)
                        .offset(x: 0,y: 90)
                    }
                    Button(action: {
                        print("asd")}){
                        Image("box")
                    }.buttonStyle(PlainButtonStyle()).offset(x :-110,y: 230)
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ClassContentView_Previews: PreviewProvider {
    static var previews: some View {
        ClassContentView()
    }
}
