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
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    resultLabel.layer.cornerRadius = 20
        resultLabel.layer.masksToBounds = true
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        button1.layer.cornerRadius = button1.bounds.width / 2
        button2.layer.cornerRadius = button2.bounds.width / 2
        button3.layer.cornerRadius = button3.bounds.width / 2
        button4.layer.cornerRadius = button4.bounds.width / 2
        button5.layer.cornerRadius = button5.bounds.width / 2
        button6.layer.cornerRadius = button6.bounds.width / 2
        button7.layer.cornerRadius = button7.bounds.width / 2
        button8.layer.cornerRadius = button8.bounds.width / 2
        button9.layer.cornerRadius = button9.bounds.width / 2
        button10.layer.cornerRadius = button10.bounds.height / 2
        button11.layer.cornerRadius = button11.bounds.width / 2
    }

    
}

