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
        // Do any additional setup after loading the view, typically from a nib.
        let viewA = UIView()
        viewA.translatesAutoresizingMaskIntoConstraints = false
        viewA.backgroundColor = UIColor.red
        view.addSubview(viewA)
        
        viewA.width == 200
        viewA.width == viewA.height
        viewA.centerX == view.centerX
        viewA.centerY == view.centerY
        
        let viewB = UIView()
        viewB.backgroundColor = UIColor.yellow
        viewB.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewB)
        
        viewB.top == viewA.bottom + 20
        viewB.width == viewA.width * 0.5
        viewB.height == viewB.width - 10
        viewB.centerX == viewA.centerX
    }
}

