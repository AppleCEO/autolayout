//
//  ViewController.swift
//  Switch_Custom1
//
//  Created by joon-ho kil on 2019/12/24.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var SwitchBackground: UIView!
    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        SwitchBackground.layer.cornerRadius = 25
       
        switchButton.layer.cornerRadius = 25
    }

    @IBAction func selectedButton(_ sender: Any) {
        buttonCenterX.constant = -buttonCenterX.constant
       
       
        if SwitchBackground.backgroundColor == UIColor.yellow {
            SwitchBackground.backgroundColor = UIColor.systemFill
        } else {
            SwitchBackground.backgroundColor = UIColor.yellow
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}

