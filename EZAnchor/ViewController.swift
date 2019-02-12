//
//  ViewController.swift
//  EZAnchor
//
//  Created by Alex Liu on 2019-02-12.
//  Copyright © 2019 Alex Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewA = UIView()
        viewA.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewA)
        
        //1. Anchor = to some other anchor
        viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        viewA.leading == self.view.leading
        
        //2.
        viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        viewA.leading == self.view.leading + 10
        
        //3.
        viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -10).isActive = true
        viewA.leading == self.view.leading - 10
        
        //4.
        viewA.leadingAnchor.constraint(lessThanOrEqualTo: self.view.leadingAnchor).isActive = true
        viewA.leading <= self.view.leading
        
        //5.
        viewA.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor).isActive = true
        viewA.leading >= self.view.leading
        
        //6.
        viewA.leadingAnchor.constraint(lessThanOrEqualTo: self.view.leadingAnchor, constant: 10).isActive = true
        viewA.leading <= self.view.leading + 10
        
        //7.
        viewA.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 10).isActive = true
        viewA.leading >= self.view.leading - 10
        
        //8.
        viewA.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1, constant: -10).isActive = true
        viewA.height == self.view.height * 0.1 - 10
        
        viewA.leading == (self.view.leading + 0.1) ^ UILayoutPriority.defaultLow
        viewA.height >= self.view.height + 10 ^ UILayoutPriority.defaultLow
        viewA.width == 100 
        viewA.width <= 100
        viewA.height >= 100
        viewA.width >= 100
        
        viewA.top == self.view.top + 1
        viewA.top >= self.view.top + 1
        viewA.bottom <= self.view.bottom + 1
        viewA.centerX == self.view.centerX
        viewA.centerX == self.view.centerX + 1
        viewA.centerX >= self.view.centerX + 1
        viewA.centerY <= self.view.centerY - 1
        
        viewA.width == self.view.height
        viewA.width == self.view.height * 0.1
    }


}

