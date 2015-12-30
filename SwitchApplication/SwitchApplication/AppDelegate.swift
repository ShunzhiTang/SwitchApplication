//
//  AppDelegate.swift
//  SwitchApplication
//
//  Created by tang on 15/12/30.
//  Copyright © 2015年 shunzhitang. All rights reserved.
//

import UIKit

var flag:Bool = false
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        flag = self.getprofile()
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds);
        
        self.window?.backgroundColor = UIColor.whiteColor()
        
        self.window?.makeKeyAndVisible()
        
        var rootVC:UIViewController = ChileViewController()
    
        
        
        if(flag){
            rootVC = ViewController()
        }
        
        self.window?.rootViewController = rootVC
       
//        flag = true
        self.setprofile(true)
        
        
        //我们需要把这个变量存储起来
        
        return true
    }

    //存储
    private func setprofile(let hasRun:Bool){
        
        let profile:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        profile.setBool(hasRun, forKey: "flag")
    }

    //解析
    private func getprofile() ->Bool{
        
       var hasBool = false
        
        let profile:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        hasBool = profile.boolForKey("flag")
    
        return hasBool
    }
}

