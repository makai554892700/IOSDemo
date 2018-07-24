//
//  RootViewController.swift
//  IOSDemo
//
//  Created by makai on 2018/7/24.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    //加载视图
    override func loadView() {
        super.loadView()
        print("加载视图")
    }
    //加载视图结束
    override func viewDidLoad() {
        super.viewDidLoad()
        print("加载视图结束")
        createUILable()
        // Do any additional setup after loading the view.
    }
    //创建UILabel（标签控件）
    //标签控件的作用为显示基本文本信息
    func createUILable(){
        //创建标签
        let label:UILabel = UILabel(frame: CGRect(x: 50, y: 50, width: 300, height: 130))
        //设置标签控件背景颜色
        label.backgroundColor = UIColor.red
        //设置标签控件中文信息
        label.text = "我是最简单的UI控件，如果字符串过长，我会自动换行。"
        //将标签控件添加到当前视图控制器的View
        view.addSubview(label)
        //修改字体颜色
        label.textColor = UIColor.white
        //使得字体居中
        label.textAlignment = NSTextAlignment.center
        //字体阴影效果 width 右 height 下
        label.shadowColor = UIColor.green
        label.shadowOffset = CGSize(width: 1, height: 10)
        //设置label换行(最大行,自动换行)
        label.numberOfLines = 3
        //设置换行方式(按单词换行)亦可设置文字过长缩进时三个点显示位置
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
    }
    //视图即将显示
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("视图即将显示")
    }
    //视图已经显示
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("视图已经显示")
    }
    //视图即将消失
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("视图即将消失")
    }
    //视图已经消失
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("视图已经消失")
    }
    //接收到内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("接收到内存警告")
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
