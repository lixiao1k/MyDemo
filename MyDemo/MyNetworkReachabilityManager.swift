//
//  MyNetworkReachabilityManager.swift
//  MyDemo
//
//  Created by Shelton Lee on 2017/7/27.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit
import Alamofire

class MyNetworkReachabilityManager{
    
    private static let sharedInstance = MyNetworkReachabilityManager()
    var manager = NetworkReachabilityManager(host: "www.baidu.com")
    
    init() {
        manager?.listener = {
            status in print("Network Status Changed:\(status)")
        }
        manager?.startListening()
    }
    class var sharedManager: MyNetworkReachabilityManager {
        let instance = self.sharedInstance
        return instance
    }
    
    func networkReachabilityStatus()->Alamofire.NetworkReachabilityManager.NetworkReachabilityStatus{
        let status:Alamofire.NetworkReachabilityManager.NetworkReachabilityStatus =
            (manager?.networkReachabilityStatus)!
        print("当前网络状态:\(status)")
            return status
    }
    
}
