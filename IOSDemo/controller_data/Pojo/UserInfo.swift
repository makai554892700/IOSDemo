//
//  UserInfo.swift
//  IOSDemo
//
//  Created by makai on 2018/8/3.
//  Copyright © 2018年 makai. All rights reserved.
//

import Foundation

class UserInfo: NSObject,NSCoding {
    var name : String?
    var phone : String?
    //构造方法
    required init(name:String = "",phone:String = ""){
        self.name = name
        self.phone = phone
    }
    //从Object解析
    required init(coder decoder:NSCoder){
        self.name = decoder.decodeObject(forKey: "name") as! String?
        self.phone = decoder.decodeObject(forKey: "phone") as! String?
    }
    //编码成Object
    func encode(with coder:NSCoder){
        coder.encode(name,forKey:"name")
        coder.encode(phone,forKey:"phone")
    }
    
    override var description: String{
        return "neme="+name!+";phone="+phone!
    }
}
