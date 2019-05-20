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
        
        view.backgroundColor = UIColor.white
        
        let viewA = UIView()
        viewA.backgroundColor = UIColor.red
        view.addEZSubview(viewA)
        
        viewA.leading == view.leading + 5
        viewA.trailing == view.trailing - 5
        viewA.top == view.top + 15
        viewA.centerX == view.centerX
        viewA.height == view.height/2
        
        /*
         //Chaining way
         
         viewA.setLeading(view.leading + 5)
         .setTrailing(view.trailing - 5)
         .setTop(view.top + 15)
         .setCenterX(view.centerX)
         .setHeight(view.height/2)
         */
        
        let viewB = UIView()
        viewB.backgroundColor = UIColor.yellow
        view.addEZSubview(viewB)
        
        viewB.top == viewA.bottom + 5
        viewB.leading == viewA.leading
        viewB.bottom == view.bottom - 5
        viewB.trailing == view.centerX - 5
        
        /*
         //Chaining way
         
         viewB.setTop(viewA.bottom + 5)
         .setLeading(viewA.leading)
         .setBottom(view.bottom - 5)
         .setTrailing(view.centerX - 5)
         */
        
        let viewC = UIView()
        viewC.backgroundColor = UIColor.green
        view.addEZSubview(viewC)
        
        viewC.top == viewB.top
        viewC.bottom == viewB.bottom
        viewC.leading == view.centerX + 5
        viewC.trailing == viewA.trailing
        
        /*
         //Chaining way
         
         viewC.setTop(viewB.top)
         .setBottom(viewB.bottom)
         .setLeading(view.centerX + 5)
         .setTrailing(viewA.trailing)
         */
    }
}



