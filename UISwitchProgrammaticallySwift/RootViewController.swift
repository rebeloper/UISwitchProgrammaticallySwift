//
//  RootViewController.swift
//  UISwitchProgrammaticallySwift
//
//  Created by Alex Nagy on 03/04/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class RootViewController: UIViewController {
    
    lazy var themeSwitch: UISwitch = {
        let themeSwitch = UISwitch()
        themeSwitch.tintColor = #colorLiteral(red: 0.9411764706, green: 0.1882352941, blue: 0.1882352941, alpha: 1)
        themeSwitch.onTintColor = #colorLiteral(red: 0.9411764706, green: 0.1882352941, blue: 0.1882352941, alpha: 1)
        themeSwitch.thumbTintColor = #colorLiteral(red: 0.1529411765, green: 0.1529411765, blue: 0.1529411765, alpha: 1)
        themeSwitch.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        themeSwitch.layer.cornerRadius = 16
        themeSwitch.layer.masksToBounds = true
        themeSwitch.addTarget(self, action: #selector(didChangeThemeSwitchValue), for: .valueChanged)
        return themeSwitch
    }()
    
    @objc func didChangeThemeSwitchValue() {
        if themeSwitch.isOn {
            print("Switch is on")
        } else {
            print("Switch is off")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.addSubview(themeSwitch)
        themeSwitch.centerInSuperview()
        
    }


}

