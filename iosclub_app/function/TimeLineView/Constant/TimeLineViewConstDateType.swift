//
//  TimeLineViewConstDateType.swift
//  iosclub_app
//
//  Created by 阿騰 on 2020/9/9.
//  Copyright © 2020 魯敬元. All rights reserved.
//  常數表 放TimeLineView頁面的資料型態

import Foundation

struct TimeLineViewDataType
{
    var id:Int//編號
    var date_year:Int//年
    var date_month:String//月
    var date_day:Int//日
    var is_important:Bool//是否為重要
    var is_school :Bool//校內校外
    var title:String//標題
}
