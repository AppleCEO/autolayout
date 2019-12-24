//
//  ViewController.swift
//  Calc_Exam
//
//  Created by joon-ho kil on 2019/12/24.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    resultLabel.layer.cornerRadius = 20
        resultLabel.layer.masksToBounds = true
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         button1.layer.cornerRadius = button1.bounds.width / 2
    }

    
}

