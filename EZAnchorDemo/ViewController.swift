//
//  ViewController.swift
//  EZAnchorDemo
//
//  Created by Alex Liu on 2019-02-12.
//  Copyright © 2019 Alex Liu. All rights reserved.
//

import UIKit
import EZAnchor

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewA = UIView()
        viewA.backgroundColor = UIColor.red
        view.addEZSubview(viewA)
        
        viewA.leading == view.leading + 5
        viewA.trailing == view.trailing - 5
        viewA.top == view.top + 15
        viewA.centerX == view.centerX
        viewA.height == view.height/2
        
        let viewB = UIView()
        viewB.backgroundColor = UIColor.yellow
        view.addEZSubview(viewB)
        
        viewB.top == viewA.bottom + 5
        viewB.leading == viewA.leading
        viewB.bottom == view.bottom - 5
        viewB.trailing == view.centerX - 5
        
        let viewC = UIView()
        viewC.backgroundColor = UIColor.green
        view.addEZSubview(viewC)
        
        viewC.top == viewB.top
        viewC.bottom == viewB.bottom
        viewC.leading == view.centerX + 5
        viewC.trailing == viewA.trailing
    }
}


