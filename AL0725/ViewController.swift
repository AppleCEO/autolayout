//
//  ViewController.swift
//  AL0725
//
//  Created by joon-ho kil on 7/25/19.
//  Copyright © 2019 길준호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let square: UIView = UIView()
        self.view.addSubview(square)
        
        square.translatesAutoresizingMaskIntoConstraints = false
        square.backgroundColor = .red
        
        let safeArea = self.view.safeAreaLayoutGuide
        
        // 방법1
        var centerXConstraint: NSLayoutConstraint = NSLayoutConstraint(item: safeArea, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: square, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        var centerYConstraint: NSLayoutConstraint = NSLayoutConstraint(item: safeArea, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: square, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
    
        var ratioConstraint: NSLayoutConstraint = NSLayoutConstraint(item: square, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: square, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1, constant: 0)
        
        var widthConstraint: NSLayoutConstraint = NSLayoutConstraint(item: square, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: safeArea, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.33, constant: 0)
        
//        square.addConstraints([centerXConstraint, centerYConstraint, ratioConstraint, widthConstraint])
        
        NSLayoutConstraint.activate([centerXConstraint, centerYConstraint, ratioConstraint, widthConstraint])
        
        NSLayoutConstraint.deactivate([centerXConstraint, centerYConstraint, ratioConstraint, widthConstraint])
        
        square.removeConstraints([centerXConstraint, centerYConstraint, ratioConstraint, widthConstraint])
        
        // 방법2
        centerXConstraint = square.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        centerYConstraint = square.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor)
        ratioConstraint = square.heightAnchor.constraint(equalTo: square.widthAnchor)
        widthConstraint = square.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.33)
        
        NSLayoutConstraint.activate([centerXConstraint, centerYConstraint, ratioConstraint, widthConstraint])
    }
}

