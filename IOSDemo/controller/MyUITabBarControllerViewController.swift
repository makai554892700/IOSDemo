//
//  MyUITabBarControllerViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/7/27.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

class MyUITabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        //只有底部的导航栏控制器
//        let redView = RedTBViewController()
//        redView.tabBarItem.title = "红页"
////        redView.tabBarItem.image = UIImage.init(named:"1.png")
//        let blueView = BlueTBViewController()
//        blueView.tabBarItem.title = "蓝页"
////        blueView.tabBarItem.image = UIImage.init(named:"2.png")
//        let greenView = GreenTBViewController()
//        greenView.tabBarItem.title = "绿页"
////        greenView.tabBarItem.image = UIImage.init(named:"3.png")
//        //第一种加入方式
////        viewControllers = [redView,blueView,greenView]
//        //第二种加入方式
//        addChildViewController(redView)
//        addChildViewController(blueView)
//        addChildViewController(greenView)
        //包含顶部的导航栏控制器
        let redView = RedTBViewController()
        redView.title = "红页"
        redView.navigationItem.title = "红页"
        let redViewUC = UINavigationController(rootViewController: redView)
        addChildViewController(redViewUC)
        let blueView = BlueTBViewController()
        blueView.title = "蓝页"
        blueView.navigationItem.title = "蓝页"
        let blueViewUC = UINavigationController(rootViewController: blueView)
        addChildViewController(blueViewUC)
        let greenView = GreenTBViewController()
        greenView.title = "绿页"
        greenView.navigationItem.title = "绿页"
        let greenViewUC = UINavigationController(rootViewController: greenView)
        addChildViewController(greenViewUC)
        // Do any additional setup after loading the view.
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
