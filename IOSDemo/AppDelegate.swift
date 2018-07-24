//
//  AppDelegate.swift
//  IOSDemo
//
//  Created by makai on 2018/7/24.
//  Copyright © 2018年 makai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //应用程序已经加载到内存时，点击应用按钮
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("应用程序被加载")
        return true
    }
    //应用程序将要取消激活状态时，下拉状态栏，长按home键使程序进入预览界面
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("应用程序取消激活")
    }
    //应用程序已经进入后台时，回到桌面或进入其他应用
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("应用程序已经进入后台")
    }
    //应用程序即将进入前台，点击应用按钮应用从后台转入前台前
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("应用程序即将进入前台")
    }
    //应用程序被激活，界面展示
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("应用程序被激活")
    }
    //应用程序结束，应用程序被杀死
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("应用程序程序结束")
    }


}

