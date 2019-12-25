//
//  ViewController.swift
//  SignInTest
//
//  Created by joon-ho kil on 2019/12/25.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailError: UILabel!
    @IBOutlet weak var passwordError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
    }

    @objc func textFieldEdited(textField: UITextField) {
        if textField == emailTextField {
            
        }
        
        if passwordTextField == passwordTextField {
            
        }
    }

}

