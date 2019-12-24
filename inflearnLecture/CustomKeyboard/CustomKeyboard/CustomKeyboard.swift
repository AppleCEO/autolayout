//
//  CustomKeyboard.swift
//  CustomKeyboard
//
//  Created by joon-ho kil on 2019/12/24.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

protocol CustomKeyboardDelegate {
    func keyboardTapped(name: String)
}

class CustomKeyboard: UIView {
    var delegate: CustomKeyboardDelegate?
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.keyboardTapped(name: sender.titleLabel!.text!)
        
    }
    
    

}
