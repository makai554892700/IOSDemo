//
//  GreenViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/7/27.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backView = UIView(frame: UIScreen.main.bounds)
        backView.backgroundColor = UIColor.green
        view.addSubview(backView)

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //切换到第二个控制器
        let blueView = BlueViewController()
        self.navigationController?.pushViewController(blueView, animated: true)
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
