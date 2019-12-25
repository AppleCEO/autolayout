//
//  ViewController.swift
//  Chat_App
//
//  Created by joon-ho kil on 2019/12/25.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var chatTableView: UITableView!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var inputViewBottomMargin: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "myCell")
        chatTableView.register(UINib(nibName: "YourCell", bundle: nil), forCellReuseIdentifier: "yourCell")
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func keyboardWillShow(noti: Notification) {
        let notiInfo = noti.userInfo!
        let keyboardFrame = notiInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        let height = keyboardFrame.size.height
        
        inputViewBottomMargin.constant = height - self.view.safeAreaInsets.bottom
        
        let animationDuration = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        UIView.animate(withDuration: animationDuration) {
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func keyboardWillHide(noti: Notification) {
        let notiInfo = noti.userInfo!
        
        let animationDuration = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        inputViewBottomMargin.constant = 0
        UIView.animate(withDuration: animationDuration) {
            self.view.layoutIfNeeded()
        }
        
        
    }
    
    @IBAction func sendString(_ sender: Any) {
        
    }
    
}

