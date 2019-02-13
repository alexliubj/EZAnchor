//
//  DemoViewController.swift
//  EZAnchor
//
//  Created by Alex Liu on 2019-02-12.
//  Copyright © 2019 Alex Liu. All rights reserved.
//

import UIKit
import EZAnchor

class DemoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewA = UIView()
        viewA.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewA)
        
        //1. Anchor = to some other anchor
        viewA.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewA.leading == view.leading
        
        //2.
        viewA.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        viewA.leading == view.leading + 10
        
        //3.
        viewA.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10).isActive = true
        viewA.leading == view.leading - 10
        
        //4.
        viewA.leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor).isActive = true
        viewA.leading <= view.leading
        
        //5.
        viewA.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor).isActive = true
        viewA.leading >= view.leading
        
        //6.
        viewA.leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: 10).isActive = true
        viewA.leading <= view.leading + 10
        
        //7.
        viewA.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 10).isActive = true
        viewA.leading >= view.leading - 10
        
        //8.
        viewA.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1, constant: -10).isActive = true
        viewA.height == view.height * 0.1 - 10
        
        viewA.leading == (view.leading + 0.1) ~ .defaultLow
        viewA.height >= view.height + 10 ~ .defaultLow
        viewA.width == 100
        viewA.width <= 100
        viewA.height >= 100
        viewA.width >= 100
        
        viewA.top == view.top + 1
        viewA.top >= view.top + 1
        viewA.bottom <= view.bottom + 1
        viewA.centerX == view.centerX
        viewA.centerX == view.centerX + 1
        viewA.centerX >= view.centerX + 1
        viewA.centerY <= view.centerY - 1
        
        viewA.width == view.height
        viewA.width == view.height * 0.1
    }
}
