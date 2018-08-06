//
//  DataModel.swift
//  IOSDemo
//
//  Created by makai on 2018/8/3.
//  Copyright © 2018年 makai. All rights reserved.
//

import Foundation

class DataModel:NSObject {
    var userList = [UserInfo]()
    override init(){
        super.init()
        print("沙盒文件路径\(DocumentsDirectory())")
        print("文件路径\(dataFilePath())")
    }
    //保存数据
    func saveData() {
        let data = NSMutableData()
        //声明一个处理对象
        let archiver = NSKeyedArchiver(forWritingWith: data)
        //将userList以对应的关键字进行编码
        archiver.encode(userList,forKey:"userList")
        //结束编码
        archiver.finishEncoding()
        //写入数据
        data.write(toFile: dataFilePath(), atomically: true)
        print("保存数据成功\(userList)")
    }
    //读取数据
    func loadData() {
        //获取本地数据文件地址
        let path = self.dataFilePath()
        //创建文件管理器
        let defaultManamger = FileManager()
        //通过文件地址判断数据是否存在
        if defaultManamger.fileExists(atPath: path){
            let url = URL(fileURLWithPath: path)
            let data = try! Data(contentsOf: url)
            //解码器
            let unarchiver = NSKeyedUnarchiver(forReadingWith: data)
            //通过归档设置的关键字还原userList
            userList = unarchiver.decodeObject(forKey: "userList") as! Array
            print("读取数据成功\(userList)")
        }
    }
    //获取沙盒文件夹路径
    func DocumentsDirectory() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths.first!
        return documentsDirectory
    }
    //获取数据文件地址
    func dataFilePath () -> String {
        return self.DocumentsDirectory().appendingFormat("/userList.plist")
    }
    
}
