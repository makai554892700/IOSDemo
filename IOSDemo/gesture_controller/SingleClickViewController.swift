//
// Created by makai on 2018/8/3.
// Copyright (c) 2018 makai. All rights reserved.
//

import UIKit

class SingleClickViewController: UIViewController {

    let backLabel = UILabel()
    let singleClickLabel = UILabel()
    let singleClickGesture = UITapGestureRecognizer.init()
    let doubleClickLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        backLabel.frame = CGRect(x: 20, y: 40, width: 200, height: 40)
        backLabel.backgroundColor = UIColor.green
        backLabel.textAlignment = .center
        backLabel.textColor = UIColor.red
        backLabel.text = "等待点击"
        singleClickLabel.frame = CGRect(x: 20, y: 100, width: 200, height: 40)
        singleClickLabel.text = "单击手势"
        singleClickLabel.textColor = UIColor.red
        singleClickLabel.backgroundColor = UIColor.blue
        singleClickLabel.textAlignment = .center
        singleClickLabel.isUserInteractionEnabled = true
        view.addSubview(backLabel)
        view.addSubview(singleClickLabel)
        singleClickGesture.addTarget(self, action: #selector(singleClick(sender:)))
        singleClickLabel.tag = 0
        singleClickLabel.addGestureRecognizer(singleClickGesture)
    }

    @objc func singleClick(sender: UITapGestureRecognizer?) {
        let tag = sender?.view?.tag
        switch tag {
        case 0:
            backLabel.text = "单击手势"
            break
        default:
            break
        }
    }
}
