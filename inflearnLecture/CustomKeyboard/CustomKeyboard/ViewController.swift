//
//  ViewController.swift
//  CustomKeyboard
//
//  Created by joon-ho kil on 2019/12/24.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil)
        let myKeyboardView = loadNib?.first as! CustomKeyboard
        myKeyboardView.delegate = self
        firstTextField.inputView = myKeyboardView
        
    }
}

extension ViewController: CustomKeyboardDelegate {
    func keyboardTapped(name: String) {
        let oldNumber = Int(firstTextField.text!)
        var newNumber = Int(name)!
        
        if name == "00" && oldNumber != nil {
            newNumber = oldNumber! * 100
        }
        
        if name == "000" && oldNumber != nil {
            newNumber = oldNumber! * 1000
        }
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        if let formatted = numberFormatter.string(from: NSNumber(value: newNumber)) {
            
            firstTextField.text = String(describing: formatted)
        }
    }
    
}
