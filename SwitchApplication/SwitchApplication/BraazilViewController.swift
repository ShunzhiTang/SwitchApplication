//
//  ViewController.swift
//  SwitchApplication
//  Created by tang on 15/12/30.
//  Copyright © 2015年 shunzhitang. All rights reserved.

import UIKit

class BraazilViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let profile:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        let  hasBool:Bool = profile.boolForKey("flag")
        
        print("hasBool =\(hasBool) " )
        
        // 设置一个背景色
        self.view.backgroundColor = UIColor .darkGrayColor()
        
        let tipLabl:UIButton = UIButton()
        
        tipLabl.frame = CGRectMake(0, 64, 250, 36)
        
        tipLabl.setTitle("我是巴西的项目", forState: UIControlState.Normal)
        
        self.view.addSubview(tipLabl)
        
        //创建一个button
        
        let firstBtn:UIButton = UIButton(frame: CGRectMake(50 , 200 , 80 , 44))
        
        firstBtn.setTitle("点击我", forState: UIControlState.Normal)
        
        firstBtn.addTarget(self, action: "firstClick", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(firstBtn)
    }
    
     func firstClick(){
        
        let vc = FirstViewController()
        
        self.presentViewController(vc, animated: true, completion: nil)
    }
}

