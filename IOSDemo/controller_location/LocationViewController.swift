//
// Created by makai on 2018/8/6.
// Copyright (c) 2018 makai. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    let manager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        //无论前后台都可访问 添加 "Privacy - Location Always Usage Description" 权限并设置通知内容
        manager.requestWhenInUseAuthorization()
        //在前台可以访问 添加 "Privacy - Location When In Use Usage Description" 权限并设置通知内容
        manager.requestAlwaysAuthorization()
        //设置代理
        manager.delegate = self
        //设置定位精准度
        /**
            kCLLocationAccuracyBestForNavigation ：导航的精准度（最精准）
            kCLLocationAccuracyBest ：默认的精准度
            kCLLocationAccuracyNearestTenMeters ： 10米的误差
            kCLLocationAccuracyHundredMeters ： 100米的误差
            kCLLocationAccuracyKilometer ： 1000米的误差
            kCLLocationAccuracyThreeKilometers ： 3000米的误差
        */
        manager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        //开始定位
        manager.startUpdatingLocation()
        //结束定位
//        manager.stopUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        print("用户的位置\(locations)")
        guard let lastLocation = locations.last else {
            return
        }
        let coor = lastLocation.coordinate
        print("纬度:\(coor.latitude);经度:\(coor.longitude);海拔:\(lastLocation.altitude);" +
                "水平精准度:\(lastLocation.horizontalAccuracy);" +
                "垂直精准度:\(lastLocation.verticalAccuracy);"
                + "运动方向:\(lastLocation.course);当前速度:\(lastLocation.speed);"
        )
    }

    //请求权限回馈
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedAlways:
            print("总是授权")
        case .authorizedWhenInUse:
            print("前台正在访问用户位置")
        case .notDetermined:
            print("用户没有点击确定")
        case .denied:
            print("用户拒绝访问")
        case .restricted:
            //系统原因不允许访问用户的位置信息
            print("系统原因")
        default:
            print("默认")
        }
    }
}
