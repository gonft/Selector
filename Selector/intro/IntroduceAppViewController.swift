//
//  IntroduceAppViewController.swift
//  Selector
//
//  Created by Jaeyong Han on 22/02/2018.
//  Copyright © 2018 Flonix. All rights reserved.
//

import UIKit
import Material

class IntroduceAppViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSub: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        isMotionEnabled = true
        motionTransitionType = .fade
        
        labelTitle.font = RobotoFont.bold(with: 34)
        labelSub.font = RobotoFont.bold(with: 17)
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
