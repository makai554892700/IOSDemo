//
// Created by makai on 2018/8/6.
// Copyright (c) 2018 makai. All rights reserved.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController {


    var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        map = MKMapView(frame: view.frame)
        view.addSubview(map)
        //地图类型
        /*
            standard : 标准地图
            satellite : 卫星地图
            hybrid : 混合地图
        */
        map.mapType = MKMapType.standard
        //设置地图的范围
        let currentLocationSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        //定义地图区域和中心坐标
        let center = CLLocation(latitude: 22.61667, longitude: 114.06667)
        //定义位置
        let currenRegion = MKCoordinateRegion(center: center.coordinate, span: currentLocationSpan)
        //设置显示区域
        map.setRegion(currenRegion, animated: true)
        //创建一个大头针
        let anotation = MKPointAnnotation()
        //设置大头针的显示位置
        anotation.coordinate = CLLocation(latitude: 22.61667, longitude: 114.06667).coordinate
        //设置大头针点击之后显示的标题
        anotation.title = "电影院"
        //设置大头针之后显示的描述
        anotation.subtitle = "万达电影院"
        map.addAnnotation(anotation)
    }
}
