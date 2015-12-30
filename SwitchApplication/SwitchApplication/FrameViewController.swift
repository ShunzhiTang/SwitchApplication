//
//  FrameViewController.swift
//  SwitchApplication
//  Created by tang on 15/12/30.
//  Copyright © 2015年 shunzhitang. All rights reserved.

import UIKit

class FrameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUI()
    }
    
     private func setUI(){
        
        //巴西的按钮
//        let  brazilBtn:UIButton = UIButton(type: UIButtonType.Custom)
        
        self.view.addSubview(brazilBtn)
        
        self.view.addSubview(ChileBtn)
        
        //使用layout布局
        
        brazilBtn.translatesAutoresizingMaskIntoConstraints =  false
       self.view.addConstraint(NSLayoutConstraint(item: brazilBtn, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: brazilBtn, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 200))
        
        self.view.addConstraint(NSLayoutConstraint(item: brazilBtn, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 44))
        
        self.view.addConstraint(NSLayoutConstraint(item: brazilBtn, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 200))
        
        //智利的button进行布局
        
        ChileBtn.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraint(NSLayoutConstraint(item: ChileBtn, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: ChileBtn, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: brazilBtn, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 50))
        
        self.view.addConstraint(NSLayoutConstraint(item: ChileBtn, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 44))
        
        self.view.addConstraint(NSLayoutConstraint(item: ChileBtn, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 200))
    }
    
    @objc private func selectBrazil(){
        
        print("跳转到巴西")
        
        let vc = BraazilViewController()
        
        self.presentViewController(vc, animated: true, completion: nil)
        
    }
    
    @objc private func selectChile(){
    
        print("智利")
        
        let vc = ChileViewController()
        
        self.presentViewController(vc, animated: true, completion: nil)
        
    }
    
    // lazy loading   private lazy var loginButton: UIButton =
    private lazy var brazilBtn: UIButton = {
        
        let button = UIButton()
        
        button.setTitle("Brazil Country", forState: UIControlState.Normal)
        
        button.backgroundColor = UIColor.blueColor()
        
        // 实现圆角
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: "selectBrazil", forControlEvents: UIControlEvents.TouchUpInside)
        
        return button
    }()

    
    private lazy var ChileBtn: UIButton = {
        
        let button = UIButton()
        
        button.setTitle("Chile Country", forState: UIControlState.Normal)
        
        button.backgroundColor = UIColor.blueColor()
        
        // 实现圆角
        button.layer.cornerRadius = 10
        
        
        button.addTarget(self, action: "selectChile", forControlEvents: UIControlEvents.TouchUpInside)
        
        return button
    }()
}
