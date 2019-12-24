//
//  FloatingButtonListViewController.swift
//  FloatingButton
//
//  Created by joon-ho kil on 2019/12/24.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class FloatingButtonListViewController: ViewController {

    @IBOutlet weak var button1CenterY: NSLayoutConstraint!
    @IBOutlet weak var button2CenterY: NSLayoutConstraint!
    @IBOutlet weak var button3CenterY: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        button1CenterY.constant = 0
        button2CenterY.constant = 0
        button3CenterY.constant = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.button1CenterY.constant = 80
            self.button2CenterY.constant = 160
            self.button3CenterY.constant = 240
            
            self.view.layoutIfNeeded()
        }) { (completion) in
        
        }
    }

    @IBAction func dismissFloating(_ sender: Any) {
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.button1CenterY.constant = 0
            self.button2CenterY.constant = 0
            self.button3CenterY.constant = 0
            
            self.view.layoutIfNeeded()
        }) { (completion) in
            self.dismiss(animated: false, completion: nil)
        }
    }
    @IBAction func food3Action(_ sender: Any) {
        print("food3 selected")
    }
}
