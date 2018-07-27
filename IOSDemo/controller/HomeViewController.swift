//
//  HomeViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/7/27.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        let label = UILabel()
        label.frame = CGRect(x: 200, y: 180, width: 100, height: 100)
        label.text = "第二个界面"
        label.textColor = UIColor.black
        view.addSubview(label)
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: {
            print("返回主界面")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
