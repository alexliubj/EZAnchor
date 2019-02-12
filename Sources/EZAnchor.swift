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

extension NSLayoutAnchor{
    
    @discardableResult
    @objc func activeConstraint(equalTo anchor: NSLayoutAnchor) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor)
        c.isActive = true
        return c
    }
    
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutAnchor) -> NSLayoutConstraint {
        let c =  self.constraint(greaterThanOrEqualTo: anchor)
        c.isActive = true
        return c
    }
    
    @objc func activeConstraint(lessThanOrEqualTo anchor: NSLayoutAnchor) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualTo: anchor)
        c.isActive = true
        return c
    }
    
    @objc func activeConstraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, constant: c)
        c.isActive = true
        return c
    }
    
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualTo: anchor, constant: c)
        c.isActive = true
        return c
    }
    
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
    @objc func activeConstraint(equalToConstant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalToConstant: c)
        c.isActive = true
        return c
    }
    
    //>= +
    @objc func activeConstraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualToConstant: c)
        c.isActive = true
        return c
    }
    
    //<= +
    @objc func activeConstraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualToConstant: c)
        c.isActive = true
        return c
    }
    
    //== *
    @objc func activeConstraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, multiplier: m)
        c.isActive = true
        return c
    }
    
    //>= *
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(greaterThanOrEqualTo: anchor, multiplier: m)
        c.isActive = true
        return c
    }
    
    //<= * +
    @objc func activeConstraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(lessThanOrEqualTo: anchor, multiplier: m)
        c.isActive = true
        return c
    }
    
    //== * +
    @objc func activeConstraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, multiplier: m, constant: c)
        c.isActive = true
        return c
    }
    
    //>= * +
    @objc func activeConstraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint {
        let c = self.constraint(equalTo: anchor, multiplier: m, constant: c)
        c.isActive = true
        return c
    }
    
    //<= * +
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

infix operator ^: PriorityPrecedence

@discardableResult
public func ^ (left: EZLayoutXAxisAnchor, right: UILayoutPriority) -> EZLayoutXAxisAnchor {
    return EZLayoutXAxisAnchor(anchor: left.anchor, constant: left.constant, multiplier: left.multiplier, priority: right)
}

@discardableResult
public func ^ (left: EZLayoutYAxisAnchor, right: UILayoutPriority) -> EZLayoutYAxisAnchor {
    return EZLayoutYAxisAnchor(anchor: left.anchor, constant: left.constant, multiplier: left.multiplier, priority: right)
}

@discardableResult
public func ^ (left: EZLayoutDimension, right: UILayoutPriority) -> EZLayoutDimension {
    return EZLayoutDimension(anchor: left.anchor, constant: left.constant, multiplier: left.multiplier, priority: right)
}
