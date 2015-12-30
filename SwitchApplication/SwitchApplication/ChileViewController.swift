//
//  ChileViewController.swift
//  SwitchApplication
//
//  Created by tang on 15/12/30.
//  Copyright © 2015年 shunzhitang. All rights reserved.
//

import UIKit

class ChileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orangeColor()
        
        self.setUI()
    }

    private func setUI(){
        
        let switchBtn:UIButton = UIButton(frame: CGRectMake(0,100,200,36))
        
       
        switchBtn.setTitle("点击我切换控制器", forState: UIControlState.Normal)
        
        switchBtn.addTarget(self, action: "pushVC", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(switchBtn)
    }
    
    func pushVC(){
        
        print("切换控制器")
        
        let vc = ViewController()
        
        self.presentViewController(vc, animated: true, completion: nil)
        
    }
}
