//
//  BlueTBViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/7/27.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit
import HandyJSON

class HttpViewController: UIViewController, NSURLConnectionDataDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()
//        testGet()
        testPost()
    }

    //异步post请求
    func testPost() {
        // 1、创建URL对象；
        let url: URL! = URL(string: "http://api.3g.ifeng.com/clientShortNews")
        // 2、创建Request对象
        // url: 请求路径
        // cachePolicy: 缓存协议
        // timeoutInterval: 网络请求超时时间(单位：秒)
        var urlRequest: URLRequest = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        // 3、设置请求方式为POST，默认是GET
        urlRequest.httpMethod = "POST"
        // 4、设置参数
        let str: String = "type=beauty"
        let data: Data = str.data(using: .utf8, allowLossyConversion: true)!
        urlRequest.httpBody = data
        // 3、连接服务器
        let connection: NSURLConnection? = NSURLConnection(request: urlRequest, delegate: self)
        connection?.schedule(in: .current, forMode: .defaultRunLoopMode)
        connection?.start()

    }

    //异步get请求
    func testGet() {
        let url: URL! = URL(string: "http://api.3g.ifeng.com/clientShortNews?type=beauty")
        let urlRequest: URLRequest = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        let connection: NSURLConnection? = NSURLConnection(request: urlRequest, delegate: self)
        connection?.schedule(in: .current, forMode: .defaultRunLoopMode)
        connection?.start()
    }

    var jsonData: NSMutableData = NSMutableData()

    //收到数据
    func connection(_ connection: NSURLConnection, didReceive data: Data) {
        self.jsonData.append(data)
    }

    //请求结束
    func connectionDidFinishLoading(_ connection: NSURLConnection) {
        let jsonStr = String(data: self.jsonData as Data, encoding: String.Encoding.utf8);
        let realData = JSONDeserializer<NewsResponse>.deserializeFrom(json: jsonStr)
        print(realData?.meta?.id)
        print(realData?.body?[0].id)
        print(realData?.body?[0].img?[0].url)
        print(realData?.body?[0].img?[0].size?.height)
        print(realData?.body?[0].link?.url)
    }
}
