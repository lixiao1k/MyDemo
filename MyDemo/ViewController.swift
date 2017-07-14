//
//  ViewController.swift
//  MyDemo
//
//  Created by Shelton Lee on 2017/7/11.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.brown
        label = UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.text = ""
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.setTitle("打开新的视图控制器", for:UIControlState())
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(ViewController.openViewController), for: .touchUpInside)
        self.view.addSubview(button)
        

    }
    func openViewController(){
        let newViewController = NewViewController()
        newViewController.labelTxt = "传递的参数!"
        newViewController.viewController = self
        self.present(newViewController, animated: true, completion: nil)
    }

}

