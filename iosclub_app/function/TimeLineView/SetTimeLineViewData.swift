//
//  SetTimeLineViewData.swift
//  iosclub_app
//
//  Created by 阿騰 on 2020/9/8.
//  Copyright © 2020 魯敬元. All rights reserved.
//  TimeLineView 頁面資料讀取處理

//  使用UrlHttpPostGet.swift 之中的 get函數
//  get(UrlSubdirectory:String/*網址子目錄*/, Completion block: @escaping (NSDictionary) ->()/*閉包可以用來處理異步問題讓後面別人呼叫他的func在異步線程完成後執行新增的後續處理*/)

//  使用TimeLineViewConstDateType.swift的資料型態

import Foundation

func getTheLeftRightData(cellback: ()->())  {//取得校內活動資料
                get(UrlSubdirectory: "/activity", Completion: {(json)in
                    var id = json["activity_id"] as! [Int] //獨立編號
                    var date = json["date"]  as! [String] //未處理日期
                    var is_important = json["is_important"] as! [Bool]
                    var is_school = json["is_school"] as! [Bool]
                    var title = json["title"] as! [String]
                    
                    
                    for i in date
                    {
                        var date_split = i.split(separator: " ") //日期字串切割
                        var date_year = date_split[3]
                        print(<#T##items: Any...##Any#>)
                    }
                    print(date)
                    })
}



//var a = NSDictionary()
//            get(UrlSubdirectory: "/activity", Completion: {(json)in
////                print(json)
//                a=json
//                print(a["res"])
//                })
