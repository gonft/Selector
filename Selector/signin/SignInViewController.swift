//
//  SignInViewController.swift
//  Selector
//
//  Created by Jaeyong Han on 22/02/2018.
//  Copyright © 2018 Flonix. All rights reserved.
//

import UIKit
import Material
import Motion

class SignInViewController: UIViewController {

    @IBOutlet weak var signIn: RaisedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        isMotionEnabled = true
        motionTransitionType = .cover(direction: .up)
        prepareSignIn()
        animationDepth()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SignInViewController {
    fileprivate func prepareSignIn() {
        signIn.cornerRadiusPreset = .cornerRadius7
        signIn.titleLabel?.font = RobotoFont.bold(with: 17)
        signIn.backgroundColor = UIColor("#F9FBE7")
        signIn.titleColor = UIColor("#9E9D24")
    }
    
    fileprivate func animationDepth() {
        signIn.depthPreset = .none
        
        signIn.animate(.delay(0.5),
                       .duration(0.5),
                       .depth(.depth5),
                       .completion({ [weak self] in
                        
//                        self?.signIn.animate(.delay(1),
//                                             .duration(0.5),
//                                             .depth(.depth5))
                       }))
    }
}
