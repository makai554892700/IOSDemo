//
//  OutMessageViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/8/3.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

class OutMessageViewController: UIViewController {

    var textField: UITextField?
    var messageField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        label.text = "控制器A"
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
        btn.setTitle("发送消息给控制器B", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(sendMessage), for: .touchUpInside)
        let label2 = UILabel()
        label2.frame = CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3 + 150
                , width: 150, height: 30)
        label2.text = "接收控制器B传来的值："
        label2.textColor = UIColor.black
        let message = UITextField()
        messageField = message
        message.frame = CGRect(x: view.frame.size.width * 0.3, y: view.frame.size.height * 0.3 + 200
                , width: 150, height: 30)
        message.borderStyle = .bezel
        message.textColor = UIColor.red
        view.addSubview(label)
        view.addSubview(textField)
        view.addSubview(btn)
        view.addSubview(label2)
        view.addSubview(message)
    }

    @objc func sendMessage() {
        let inVC = InMessageViewController()
        inVC.inStr = self.textField?.text
        inVC.outMVC = self
        self.present(inVC, animated: true, completion: nil)
    }

}
