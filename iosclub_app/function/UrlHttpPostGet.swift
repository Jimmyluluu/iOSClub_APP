//
//  UrlHttpPostGet.swift
//  iosclub_app
//
//  Created by 阿騰 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//

import Foundation

    

func get(UrlSubdirectory:String/*網址子目錄*/, Completion block: @escaping (NSDictionary) ->()){
    let session = URLSession(configuration: .default)//建立會議
    let url = "http://140.134.79.128:9080"+UrlSubdirectory //網址加上子目錄
    let UrlRequest = URLRequest(url: URL(string: url)!)//新增url任務
    
   
    let task = session.dataTask(with: UrlRequest) {(data, response, error) in
            do {
                // 返回的是一个json，将返回的json转成字典r
                if var r = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary//注意 異步需搭配try在呼叫閉包closure 要不然會因為可以丟nil而持續執行
                {
                    block(r) //使用閉包closure 在swift裡處理異步問題等待完成時用他 他會在完成時執行
                }
                
            } catch {
                // 失敗
                print(String(data: data!, encoding: .utf8)!)
                print("无法连接到服务器")
                return
            }
            
        }
    
        task.resume()//跑
}


