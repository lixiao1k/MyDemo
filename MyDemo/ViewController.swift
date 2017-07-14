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
        let rect = CGRect(x: 20, y: 60, width: 240, height: 240)
        let gradientView = UIView(frame: rect)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.frame
        
        let fromColor = UIColor.yellow.cgColor
        let midColor = UIColor.blue.cgColor
        let endColor = UIColor.red.cgColor
        
        gradientLayer.colors = [fromColor,midColor,endColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.locations = [0,0.3,1]
        
        gradientView.layer.addSublayer(gradientLayer)
        self.view.addSubview(gradientView)
    }
    
    func SingleTap(){
        print("You touched me.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

