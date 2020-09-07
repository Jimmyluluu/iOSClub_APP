//
//  UrlHttpPostGet.swift
//  iosclub_app
//
//  Created by 阿騰 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import Foundation

    

func get(UrlSubdirectory:String/*網址子目錄*/){
    let session = URLSession(configuration: .default)//建立會議
    let url = "http://140.134.79.128:9080"+UrlSubdirectory //網址加上子目錄
    let UrlRequest = URLRequest(url: URL(string: url)!)//新增url任務
    
    var r:NSDictionary?
    let task = session.dataTask(with: UrlRequest) {(data, response, error) in
            do {
                // 返回的是一个json，将返回的json转成字典r
                r = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary
                print(r)
            } catch {
                // 失敗
                print(String(data: data!, encoding: .utf8)!)
                print("无法连接到服务器")
                return
            }
            
        }
        // 跑他
    
        task.resume()
//    if r != nil{
//        return r!
//    }
//    return
}


