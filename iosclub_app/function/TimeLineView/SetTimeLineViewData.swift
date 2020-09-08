//
//  SetTimeLineViewData.swift
//  iosclub_app
//
//  Created by 阿騰 on 2020/9/8.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import Foundation

func getTheLeftRightData(cellback: ()->())  {//取得校內活動資料
                get(UrlSubdirectory: "/activity", Completion: {(json)in
                    var id = json["activity_id"] as! [Int] //獨立編號
                    var date = json["date"]  as! [String] //未處理日期
                    var image_path = json["image_path"] as! [String]
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



