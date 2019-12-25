//
//  ViewController.swift
//  Popup_Complex
//
//  Created by joon-ho kil on 2019/12/24.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showPopup(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "PopupViewController", bundle: nil)
        let popupViewController = storyBoard.instantiateViewController(withIdentifier: "popupID")
        
        popupViewController.modalPresentationStyle = .overCurrentContext
        self.present(popupViewController, animated: false, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

