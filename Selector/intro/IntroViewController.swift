//
//  ViewController.swift
//  Selector
//
//  Created by Jaeyong Han on 2018. 1. 21..
//  Copyright © 2018년 Flonix. All rights reserved.
//

import UIKit
import Material
import Motion
import FSPagerView
import UIColor_Hex_Swift

class IntroViewController: UIViewController {

    @IBOutlet weak var pagerView: FSPagerView!
    @IBOutlet weak var pageControl: FSPageControl!
    
    @IBOutlet weak var signUp: RaisedButton!
    @IBOutlet weak var signIn: RaisedButton!
    @IBOutlet weak var introduceApp: FlatButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        prepareSignUp()
        prepareSignIn()
        prepareIntroduceApp()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension IntroViewController {
    fileprivate func prepareSignUp() {
        signUp.cornerRadiusPreset = .cornerRadius7
        signUp.titleLabel?.font = RobotoFont.bold(with: 17)
        signUp.backgroundColor = UIColor("#F9FBE7")
        signUp.titleColor = UIColor("#9E9D24")
    }
    
    fileprivate func prepareSignIn() {
        signIn.cornerRadiusPreset = .cornerRadius7
        signIn.titleLabel?.font = RobotoFont.bold(with: 17)
        signIn.backgroundColor = UIColor("#C0CA33")
        signIn.titleColor = UIColor("#F9FBE7")
        signIn.layer.borderColor = UIColor("#F9FBE7").cgColor
        signIn.layer.borderWidth = 1.5
    }
    
    fileprivate func prepareIntroduceApp() {
        introduceApp.titleLabel?.font = RobotoFont.medium(with: 17)
        introduceApp.titleColor = UIColor("#9E9D24")
    }
}

