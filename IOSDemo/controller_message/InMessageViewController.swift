//
//  InMessageViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/8/3.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

class InMessageViewController: UIViewController {

    var inStr: String?
    var textField: UITextField?
    var outMVC: OutMessageViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        label.text = "控制器B"
        label.textColor = UIColor.black
        let textField = UITextField()
        self.textField = textField
        textField.frame = CGRect(x: view.frame.size.width * 0.3, y: view.frame.size.height * 0.3
                , width: 150, height: 30)
        textField.borderStyle = .bezel
        textField.textColor = UIColor.red
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3 + 100
                , width: 230, height: 30)
        btn.setTitle("返回消息给控制器A", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(sendMessage), for: .touchUpInside)
        let label2 = UILabel()
        label2.frame = CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3 + 150
                , width: 150, height: 30)
        label2.text = "接收控制器B传来的值："
        label2.textColor = UIColor.black
        let message = UITextField()
        message.frame = CGRect(x: view.frame.size.width * 0.3, y: view.frame.size.height * 0.3 + 200
                , width: 150, height: 30)
        message.borderStyle = .bezel
        message.textColor = UIColor.red
        message.text = inStr
        view.addSubview(label)
        view.addSubview(textField)
        view.addSubview(btn)
        view.addSubview(label2)
        view.addSubview(message)
    }

    @objc func sendMessage() {
        self.dismiss(animated: true) {
            self.outMVC?.messageField?.text = self.textField?.text
        }
    }

}
