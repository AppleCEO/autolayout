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
            if isValidEmail(email: textField.text) {
                emailError.isHidden = true
                return
            }
            
            emailError.isHidden = false
        }
        
        if textField == passwordTextField {
            if textField.text?.count ?? 0 >= 8 {
                passwordError.isHidden = true
                return
            }
            
            passwordError.isHidden = false
        }
    }

    func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
}

