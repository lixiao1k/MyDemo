//
//  ViewController.swift
//  MyDemo
//
//  Created by Shelton Lee on 2017/7/11.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let touchView = UIView(frame: CGRect(x: 60, y: 60, width: 200, height: 200))
        touchView.backgroundColor = UIColor.black
        touchView.layer.shadowColor = UIColor.black.cgColor
        touchView.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        touchView.layer.shadowOpacity = 0.45
        touchView.layer.shadowRadius = 5.0
        self.view.addSubview(touchView)
        
        let guesture = UITapGestureRecognizer(target: self, action: #selector(self.SingleTap))
        touchView.addGestureRecognizer(guesture)
        
        
    }
    
    func SingleTap(){
        print("You touched me.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

