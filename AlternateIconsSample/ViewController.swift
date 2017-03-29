//
//  ViewController.swift
//  AlternateIconsSample
//
//  Created by 徐开源 on 2017/3/30.
//  Copyright © 2017年 kyxu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeAppIcon(_ sender: Any) {
        
        if UIApplication.shared.supportsAlternateIcons {
            print("you can change this app's icon")
        }else {
            print("you cannot change this app's icon")
            return
        }
        
        if let name = UIApplication.shared.alternateIconName {
            // CHANGE TO PRIMARY ICON
            UIApplication.shared.setAlternateIconName(nil) { (err:Error?) in
                print("set icon error：\(String(describing: err))")
            }
            print("the alternate icon's name is \(name)")
        }else {
            // CHANGE TO ALTERNATE ICON
            UIApplication.shared.setAlternateIconName("blackBgColor") { (err:Error?) in
                print("set icon error：\(String(describing: err))")
            }
        }
    }

}

