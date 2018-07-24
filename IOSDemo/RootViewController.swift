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
        createUIButton()
        // Do any additional setup after loading the view.
    }
    //创建UIButton
    func createUIButton(){
        //创建按钮对象
        let btn: UIButton = UIButton(type: UIButtonType.system)
        //设置坐标及大小
        btn.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        //设置按钮的背景颜色
        btn.backgroundColor = UIColor.green
        //设置按钮的文本
        btn.setTitle("正常", for: UIControlState.normal)
        btn.setTitle("高亮", for: UIControlState.highlighted)
        btn.setTitle("选中", for: UIControlState.selected)
        btn.setTitle("不可用", for: UIControlState.disabled)
        //设置选中状态
//        btn.isSelected = true
        //设置可用状态
//        btn.isEnabled = false
        view.addSubview(btn)
        //获取系统中字体
        let fontsArray = UIFont.familyNames
        //设置按钮上的字体
        let fontName = "Zapfino"
        if fontsArray.contains(fontName){
            btn.titleLabel?.font = UIFont(name: fontName, size: 17)
        }
        //设置按钮的背景图片
        btn.setBackgroundImage(UIImage(named: "1.png"), for: UIControlState.normal)
        btn.setBackgroundImage(UIImage(named: "2.png"), for: UIControlState.highlighted)
        //设置按钮的前景图片
//        btn.setImage(UIImage(named: "3.png"), for: UIControlState.normal)
//        btn.setImage(UIImage(named: "4.png"), for: UIControlState.highlighted)
        //设置点击事件
        btn.tag = 2000
        btn.addTarget(self, action: #selector(btnClickFun(sender:)), for: UIControlEvents.touchUpInside)
    }
    //点击回调事件
    @objc func btnClickFun(sender:UIButton?) {
        let tag = sender?.tag
        switch tag {
        case 2000:
            print("点击按钮")
        default:
            print("其他点击事件")
        }
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
