//
//  SetTimeLineViewData.swift
//  iosclub_app
//
//  Created by 阿騰 on 2020/9/8.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import Foundation

func getTheRightData(cellback: ([NSDictionary])->())  {//取得校內活動資料
    var a = NSDictionary()
                get(UrlSubdirectory: "/activity", Completion: {(json)in
                    a=json
                    var asd = a["activity_id"] as! [Int]
//                    print(asd[2])
                    })
}



