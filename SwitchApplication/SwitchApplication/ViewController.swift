//
//  ViewController.swift
//  SwitchApplication
//
//  Created by tang on 15/12/30.
//  Copyright © 2015年 shunzhitang. All rights reserved.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置一个背景色
        self.view.backgroundColor = UIColor .cyanColor()
        
        
        let tipLabl:UIButton = UIButton()
        
        tipLabl.frame = CGRectMake(0, 64, 250, 36)
        
        tipLabl.setTitle("我是swift程序", forState: UIControlState.Normal)
        
        self.view.addSubview(tipLabl)
        
    }

    
}

