//
//  AppDelegate.swift
//  EZAnchorDemo
//
//  Created by Alex Liu on 2019-02-12.
//  Copyright © 2019 Alex Liu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

//
//  EZAnchor.swift
//  EZAnchor
//
//  Created by Alex Liu on 2018-10-12.
//
//  Copyright © 2018 Alex Liu <alexliubo@gmail.com> All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

extension UIView {
    
    open var leading: EZLayoutXAxisAnchor {
        return EZLayoutXAxisAnchor(anchor: leadingAnchor)
    }
    
    open var trailing: EZLayoutXAxisAnchor {
        return EZLayoutXAxisAnchor(anchor: trailingAnchor)
    }
    
    open var left: EZLayoutXAxisAnchor {
        return EZLayoutXAxisAnchor(anchor: leftAnchor)
    }
    
    open var right: EZLayoutXAxisAnchor {
        return EZLayoutXAxisAnchor(anchor: rightAnchor)
    }
    
    open var top: EZLayoutYAxisAnchor {
        return EZLayoutYAxisAnchor(anchor: topAnchor)
    }
    
    open var bottom: EZLayoutYAxisAnchor {
        return EZLayoutYAxisAnchor(anchor: bottomAnchor)
    }
    
    open var width: EZLayoutDimension {
        return EZLayoutDimension(anchor: widthAnchor)
    }
    
    open var height: EZLayoutDimension {
        return EZLayoutDimension(anchor: heightAnchor)
    }
    
    open var centerX: EZLayoutXAxisAnchor {
        return EZLayoutXAxisAnchor(anchor: centerXAnchor)
    }
    
    open var centerY: EZLayoutYAxisAnchor {
        return EZLayoutYAxisAnchor(anchor: centerYAnchor)
    }
    
    open var firstBaseline: EZLayoutYAxisAnchor {
        return EZLayoutYAxisAnchor(anchor: firstBaselineAnchor)
    }
    
    open var lastBaseline: EZLayoutYAxisAnchor {
        return EZLayoutYAxisAnchor(anchor: lastBaselineAnchor)
    }
}

extension UIView {
    
    @discardableResult
    public func setLeft(_ ez: EZLayoutXAxisAnchor) -> Self {
        left.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setLeft(greaterThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        left.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setLeft(lessThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        left.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setRight(_ ez: EZLayoutXAxisAnchor) -> Self {
        right.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setRight(greaterThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        right.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setRight(lessThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        right.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setLeading(_ ez: EZLayoutXAxisAnchor) -> Self {
        leading.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setLeading(greaterThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        leading.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setLeading(lessThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        leading.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setTrailing(_ ez: EZLayoutXAxisAnchor) -> Self {
        trailing.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setTrailing(greaterThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        trailing.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setTrailing(lessThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        trailing.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setTop(_ ez: EZLayoutYAxisAnchor) -> Self {
        top.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setTop(greaterThanOrEqualTo ez: EZLayoutYAxisAnchor) -> Self {
        top.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setTop(lessThanOrEqualTo ez: EZLayoutYAxisAnchor) -> Self {
        top.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setBottom(_ ez: EZLayoutYAxisAnchor) -> Self {
        bottom.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setBottom(greaterThanOrEqualTo ez: EZLayoutYAxisAnchor) -> Self {
        bottom.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setBottom(lessThanOrEqualTo ez: EZLayoutYAxisAnchor) -> Self {
        bottom.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setCenterX(_ ez: EZLayoutXAxisAnchor) -> Self {
        centerX.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setCenterX(greaterThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        centerX.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setCenterX(lessThanOrEqualTo ez: EZLayoutXAxisAnchor) -> Self {
        centerX.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setCenterY(_ ez: EZLayoutYAxisAnchor) -> Self {
        centerY.anchor.activeConstraint(equalTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setCenterY(greaterThanOrEqualTo ez: EZLayoutYAxisAnchor) -> Self {
        centerY.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setCenterY(lessThanOrEqualTo ez: EZLayoutYAxisAnchor) -> Self {
        centerY.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setWidth(_ ez: EZLayoutDimension) -> Self {
        width.anchor.activeConstraint(equalTo: ez.anchor, multiplier: ez.multiplier, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setWidth(greaterThanOrEqualTo ez: EZLayoutDimension) -> Self {
        width.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, multiplier: ez.multiplier, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setWidth(lessThanOrEqualTo ez: EZLayoutDimension) -> Self {
        width.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, multiplier: ez.multiplier, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setHeight(_ ez: EZLayoutDimension) -> Self {
        height.anchor.activeConstraint(equalTo: ez.anchor, multiplier: ez.multiplier, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setHeight(greaterThanOrEqualTo ez: EZLayoutDimension) -> Self {
        height.anchor.activeConstraint(greaterThanOrEqualTo: ez.anchor, multiplier: ez.multiplier, constant: ez.constant)
        return self
    }
    
    @discardableResult
    public func setHeight(lessThanOrEqualTo ez: EZLayoutDimension) -> Self {
        height.anchor.activeConstraint(lessThanOrEqualTo: ez.anchor, multiplier: ez.multiplier, constant: ez.constant)
        return self
    }
}

extension UIView {
    func addEZSubview(_ views: UIView...) {
        views.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
}

extension NSLayoutAnchor{
    
    @discardableResult
    @objc func activeConstraint(equalTo anchor: NSLayoutAnchor) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor)
        c.isActive = true
        return c
    }
    
    @discardableResult
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutAnchor) -> NSLayoutConstraint {
        let c =  self.constraint(greaterThanOrEqualTo: anchor)
        c.isActive = true
        return c
    }
    
    @discardableResult
    @objc func activeConstraint(lessThanOrEqualTo anchor: NSLayoutAnchor) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualTo: anchor)
        c.isActive = true
        return c
    }
    
    @discardableResult
    @objc func activeConstraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, constant: c)
        c.isActive = true
        return c
    }
    
    @discardableResult
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualTo: anchor, constant: c)
        c.isActive = true
        return c
    }
    
    @discardableResult
    @objc func activeConstraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualTo: anchor, constant: c)
        c.isActive = true
        return c
    }
}

extension NSLayoutXAxisAnchor {
    
    @available(iOS 11.0, *)
    @objc func activeConstraint(equalToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalToSystemSpacingAfter: anchor, multiplier: multiplier)
        c.isActive = true
        return c
    }
    
    @available(iOS 11.0, *)
    @objc func activeConstraint(greaterThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        c.isActive = true
        return c
    }
    
    @available(iOS 11.0, *)
    @objc func activeConstraint(lessThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        c.isActive = true
        return c
    }
}

extension NSLayoutYAxisAnchor {
    
    @available(iOS 11.0, *)
    @objc func activeConstraint(equalToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalToSystemSpacingBelow: anchor, multiplier: multiplier)
        c.isActive = true
        return c
    }
    
    @available(iOS 11.0, *)
    @objc func activeConstraint(greaterThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        c.isActive = true
        return c
    }
    
    @available(iOS 11.0, *)
    @objc func activeConstraint(lessThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        c.isActive = true
        return c
    }
}

/* This layout anchor subclass is used for sizes (width & height).
 */

@available(iOS 9.0, *)
extension NSLayoutDimension{
    
    // ==
    @discardableResult
    @objc func activeConstraint(equalToConstant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalToConstant: c)
        c.isActive = true
        return c
    }
    
    //>= +
    @discardableResult
    @objc func activeConstraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualToConstant: c)
        c.isActive = true
        return c
    }
    
    //<= +
    @discardableResult
    @objc func activeConstraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualToConstant: c)
        c.isActive = true
        return c
    }
    
    //== *
    @discardableResult
    @objc func activeConstraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, multiplier: m)
        c.isActive = true
        return c
    }
    
    //>= *
    @discardableResult
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualTo: anchor, multiplier: m)
        c.isActive = true
        return c
    }
    
    //<= * +
    @discardableResult
    @objc func activeConstraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualTo: anchor, multiplier: m)
        c.isActive = true
        return c
    }
    
    //== * +
    @discardableResult
    @objc func activeConstraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, multiplier: m, constant: c)
        c.isActive = true
        return c
    }
    
    //>= * +
    @discardableResult
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, multiplier: m, constant: c)
        c.isActive = true
        return c
    }
    
    //<= * +
    @discardableResult
    @objc func activeConstraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, multiplier: m, constant: c)
        c.isActive = true
        return c
    }
}

public struct EZLayoutYAxisAnchor {
    let anchor: NSLayoutYAxisAnchor
    let constant: CGFloat
    let multiplier: CGFloat
    let priority: UILayoutPriority
    
    init(anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, multiplier: CGFloat = 1, priority: UILayoutPriority = .defaultHigh) {
        self.anchor = anchor
        self.constant = constant
        self.multiplier = multiplier
        self.priority = priority
    }
}

public struct EZLayoutXAxisAnchor {
    let anchor: NSLayoutXAxisAnchor
    let constant: CGFloat
    let multiplier: CGFloat
    let priority: UILayoutPriority
    
    init(anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, multiplier: CGFloat = 1, priority: UILayoutPriority = .defaultHigh) {
        self.anchor = anchor
        self.constant = constant
        self.multiplier = multiplier
        self.priority = priority
    }
}

public struct EZLayoutDimension {
    let anchor: NSLayoutDimension
    let constant: CGFloat
    let multiplier: CGFloat
    let priority: UILayoutPriority
    
    init(anchor: NSLayoutDimension, constant: CGFloat = 0, multiplier: CGFloat = 1, priority: UILayoutPriority = .defaultHigh) {
        self.anchor = anchor
        self.constant = constant
        self.multiplier = multiplier
        self.priority = priority
    }
}

// MARK: Operators on EZLayoutYAxisAnchor

@discardableResult
public func == (left: EZLayoutXAxisAnchor, right: EZLayoutXAxisAnchor) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(equalTo: right.anchor, constant: right.constant)
}

@discardableResult
public func >= (left: EZLayoutXAxisAnchor, right: EZLayoutXAxisAnchor) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(greaterThanOrEqualTo: right.anchor, constant: right.constant)
}

@discardableResult
public func <= (left: EZLayoutXAxisAnchor, right: EZLayoutXAxisAnchor) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(lessThanOrEqualTo: right.anchor, constant: right.constant)
}

@available(iOS 9.0, *)
@discardableResult
public func + (left: EZLayoutXAxisAnchor, right: CGFloat) -> EZLayoutXAxisAnchor {
    return EZLayoutXAxisAnchor(anchor: left.anchor, constant: right)
}

@discardableResult
public func - (left: EZLayoutXAxisAnchor, right: CGFloat) -> EZLayoutXAxisAnchor {
    return EZLayoutXAxisAnchor(anchor: left.anchor, constant: -right)
}

// MARK: Operators on EZLayoutYAxisAnchor

@discardableResult
public func == (left: EZLayoutYAxisAnchor, right: EZLayoutYAxisAnchor) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(equalTo: right.anchor, constant: right.constant)
}

@discardableResult
public func >= (left: EZLayoutYAxisAnchor, right: EZLayoutYAxisAnchor) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(greaterThanOrEqualTo: right.anchor, constant: right.constant)
}

@discardableResult
public func <= (left: EZLayoutYAxisAnchor, right: EZLayoutYAxisAnchor) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(lessThanOrEqualTo: right.anchor, constant: right.constant)
}

@discardableResult
public func + (left: EZLayoutYAxisAnchor, right: CGFloat) -> EZLayoutYAxisAnchor {
    return EZLayoutYAxisAnchor(anchor: left.anchor, constant: right)
}

@discardableResult
public func - (left: EZLayoutYAxisAnchor, right: CGFloat) -> EZLayoutYAxisAnchor {
    return EZLayoutYAxisAnchor(anchor: left.anchor, constant: -right)
}

// MARK: Operators on system NSLayoutDimension and a constant

@discardableResult
public func * (left: NSLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left, multiplier: right)
}

@discardableResult
public func * (left: EZLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left.anchor, multiplier: right)
}

@discardableResult
public func / (left: NSLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left, multiplier: 1/right)
}

@discardableResult
public func / (left: EZLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left.anchor, multiplier: 1/right)
}

@discardableResult
public func + (left: NSLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left, constant: right)
}

@discardableResult
public func + (left: EZLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left.anchor, constant: right)
}

@discardableResult
public func - (left: EZLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left.anchor, constant: -right)
}

@discardableResult
public func - (left: NSLayoutDimension, right: CGFloat) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left, constant: -right)
}

// MARK: Operators on system NSLayoutDimension and customed ones

@discardableResult
public func == (left: NSLayoutDimension, right: EZLayoutDimension) -> NSLayoutConstraint {
    return left.activeConstraint(equalTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
}

@discardableResult
public func >= (left: NSLayoutDimension, right: EZLayoutDimension) -> NSLayoutConstraint {
    return left.activeConstraint(greaterThanOrEqualTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
}

@discardableResult
public func <= (left: NSLayoutDimension, right: EZLayoutDimension) -> NSLayoutConstraint {
    return left.activeConstraint(lessThanOrEqualTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
}

// MARK: Operators between two NSLayoutDimension

@discardableResult
public func == (left: NSLayoutDimension, right: NSLayoutDimension) -> NSLayoutConstraint {
    return left.activeConstraint(equalTo: right)
}

@discardableResult
public func >= (left: NSLayoutDimension, right: NSLayoutDimension) -> NSLayoutConstraint {
    return left.activeConstraint(greaterThanOrEqualTo: right)
}

@discardableResult
public func <= (left: NSLayoutDimension, right: NSLayoutDimension) -> NSLayoutConstraint {
    return left.activeConstraint(lessThanOrEqualTo: right)
}

// MARK: Operators on height and a constant

@discardableResult
public func == (left: EZLayoutDimension, right: CGFloat) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(equalToConstant: right)
}

@discardableResult
public func >= (left: EZLayoutDimension, right: CGFloat) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(greaterThanOrEqualToConstant: right)
}

@discardableResult
public func <= (left: EZLayoutDimension, right: CGFloat) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(lessThanOrEqualToConstant: right)
}

// MARK: operators between EZLayoutDimension

@discardableResult
public func == (left: EZLayoutDimension, right: EZLayoutDimension) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(equalTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
}

@discardableResult
public func >= (left: EZLayoutDimension, right: EZLayoutDimension) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(greaterThanOrEqualTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
}

@discardableResult
public func <= (left: EZLayoutDimension, right: EZLayoutDimension) -> NSLayoutConstraint {
    return left.anchor.activeConstraint(lessThanOrEqualTo: right.anchor, multiplier: right.multiplier, constant: right.constant)
}

// MARK: UILayoutPriority

precedencegroup PriorityPrecedence {
    associativity: none
    higherThan: ComparisonPrecedence
    lowerThan: AdditionPrecedence
}

infix operator ~: PriorityPrecedence

@discardableResult
public func ~ (left: EZLayoutXAxisAnchor, right: UILayoutPriority) -> EZLayoutXAxisAnchor {
    return EZLayoutXAxisAnchor(anchor: left.anchor, constant: left.constant, multiplier: left.multiplier, priority: right)
}

@discardableResult
public func ~ (left: EZLayoutYAxisAnchor, right: UILayoutPriority) -> EZLayoutYAxisAnchor {
    return EZLayoutYAxisAnchor(anchor: left.anchor, constant: left.constant, multiplier: left.multiplier, priority: right)
}

@discardableResult
public func ~ (left: EZLayoutDimension, right: UILayoutPriority) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left.anchor, constant: left.constant, multiplier: left.multiplier, priority: right)
}
