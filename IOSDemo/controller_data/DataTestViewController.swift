//
//  DataTestViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/8/3.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

class DataTestViewController: UIViewController {
    
    var dataModel = DataModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        createData()
        let saveBtn = UIButton(type: .custom)
        saveBtn.frame = CGRect(x: 100, y: 150, width: 150, height: 30)
        saveBtn.setTitle("保存", for: .normal)
        saveBtn.backgroundColor = UIColor.blue
        saveBtn.setTitleColor(UIColor.black, for: .normal)
        saveBtn.addTarget(self, action: #selector(saveButton), for: .touchUpInside)
        let readBtn = UIButton(type: .custom)
        readBtn.frame = CGRect(x: 100, y: 300, width: 150, height: 30)
        readBtn.setTitle("读取", for: .normal)
        readBtn.backgroundColor = UIColor.red
        readBtn.setTitleColor(UIColor.black, for: .normal)
        readBtn.addTarget(self, action: #selector(readButton), for: .touchUpInside)
        view.addSubview(saveBtn)
        view.addSubview(readBtn)
    }
    
    @objc func saveButton() {
        dataModel.saveData()
    }
    
    @objc func readButton() {
        dataModel.loadData()
    }
    
    //创建一个模拟数据
    func createData () {
        dataModel.userList.append(UserInfo(name: "Jack", phone: "123456789"))
        dataModel.userList.append(UserInfo(name: "Anna ", phone: "234567890"))
        dataModel.userList.append(UserInfo(name: "Carter", phone: "345678901"))
    }

}
