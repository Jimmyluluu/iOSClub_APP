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
        
        var TimeLineViewData:[TimeLineViewDataType] = [] //建立一個TimeLineViewConstDateType.swift的資料型態陣列
        for i in 0...id.count-1 {//透過id觀察幾筆資料
            // 分析日期
            var year = 0
            var month = ""
            var day = 0
            if date[i] != ""
            {
                year=Int(date[i].split(separator: " ")[3])!
                month=String(date[i].split(separator: " ")[2])
                day=Int(date[i].split(separator: " ")[1])!
            }
            // 上面都在分析日期
            var singTimeLineViewData:TimeLineViewDataType = TimeLineViewDataType(id: id[i], date_year:year, date_month: month, date_day: day, is_important: is_important[i], is_school: is_school[i], title: title[i])
            //新增TimeLineViewDataType資料
            TimeLineViewData.append(singTimeLineViewData)
            //放入陣列
        }
        TimeLineViewData.sort(by: {(a,b)in return b.date_day>a.date_day})
        //排序TimeLineViewData陣列 透過日期(a,b)代表排序比較的兩個資料 後面回傳Bool
    })
}
