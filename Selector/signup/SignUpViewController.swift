//
//  SignUpViewController.swift
//  Selector
//
//  Created by Jaeyong Han on 22/02/2018.
//  Copyright © 2018 Flonix. All rights reserved.
//

import UIKit
import Material
import Motion

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUp: RaisedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        isMotionEnabled = true
        motionTransitionType = .cover(direction: .up)
        prepareSignUp()
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

extension SignUpViewController {
    fileprivate func prepareSignUp() {
        signUp.cornerRadiusPreset = .cornerRadius7
        signUp.titleLabel?.font = RobotoFont.bold(with: 17)
        signUp.backgroundColor = UIColor("#C0CA33")
        signUp.titleColor = UIColor("#F9FBE7")
        signUp.layer.borderColor = UIColor("#F9FBE7").cgColor
        signUp.layer.borderWidth = 1.5
    }
    
    fileprivate func animationDepth() {
        signUp.depthPreset = .none
        
        signUp.animate(.delay(0.5),
                             .duration(0.5),
                             .depth(.depth5),
                             .completion({ [weak self] in
                                
//                                self?.signUp.animate(.delay(1),
//                                                           .duration(0.5),
//                                                           .depth(.depth5))
                             }))
    }
}
