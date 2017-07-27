//
//  ViewController.swift
//  MyDemo
//
//  Created by Shelton Lee on 2017/7/11.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bounds = UIScreen.main.bounds
        let frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        let webView = UIWebView(frame: frame)
        webView.delegate = self
        webView.backgroundColor = UIColor.clear
        
        let url = URL(string: "http://www.apple.com/")
        let urlRequest = NSURLRequest(url: url!)
        webView.loadRequest(urlRequest as URLRequest)
        
        self.view.addSubview(webView)
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}

