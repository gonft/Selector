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
import RxSwift
import RxKeyboard

class SignUpViewController: UIViewController {
    
    fileprivate let disposeBag = DisposeBag()

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSubtitle: UILabel!
    @IBOutlet var headerLabels: Array<UILabel>?
    
    @IBOutlet weak var nickname: ErrorTextField!
    @IBOutlet weak var email: ErrorTextField!
    @IBOutlet weak var password: ErrorTextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var signUp: RaisedButton!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        isMotionEnabled = true
//        motionTransitionType = .cover(direction: .up)
        motionTransitionType = .fade
        
        prepareLabels()
        prepareTextFields()
        prepareSignUp()
        animationDepth()
        
        RxKeyboard.instance.visibleHeight
            .drive(onNext: { keyboardVisibleHeight in
                self.scrollView.contentInset.bottom = keyboardVisibleHeight
                UIView.animate(withDuration: 0) {
                    self.scrollView.contentInset.bottom = keyboardVisibleHeight
                    self.bottomConstraint.constant =  keyboardVisibleHeight + 54
                    self.view.layoutIfNeeded()
                }
            })
            .disposed(by: disposeBag)
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
    fileprivate func prepareLabels() {
        labelTitle.font = RobotoFont.light(with: 35)
        labelSubtitle.font = RobotoFont.light(with: 18)
        for label in headerLabels! {
            label.font = RobotoFont.medium(with: 16)
        }
    }
    
    fileprivate func prepareTextFields() {
        nickname.placeholder = "nickname"
        nickname.detail = "Error, incorrect email"
        nickname.isClearIconButtonEnabled = true
        nickname.clearButtonMode = .whileEditing
        nickname.placeholderAnimation = .hidden
        
        email.placeholder = "email"
        email.detail = "Error, incorrect email"
        email.isClearIconButtonEnabled = true
        email.clearButtonMode = .whileEditing
        email.placeholderAnimation = .hidden
        
        password.placeholder = "be at least 8 characters"
        password.detail = "Error, incorrect email"
        password.isClearIconButtonEnabled = true
        password.clearButtonMode = .whileEditing
        password.placeholderAnimation = .hidden
    }
    
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
                             .depth(.depth5))
    }
}
