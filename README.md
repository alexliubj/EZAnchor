# EZAnchor
An easier way to code Autolayout

Are you annoyed of coding `.active = true` while using Autolayout Anchors over and over again?
Are you annoyed of coding such long constraint sentence `refreshView.heightAnchor.constraint(equalToConstant: self.refreshViewHeight).isActive = true` over and over again?

Now `EZAnchor` is definitely going to shorten your time of writing Autolayout Anchors by a simple installation.
Let's see how it works:

1. Anchor constraint to another anchor
```
viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
viewA.leading == self.view.leading
```
        
2. Anchor constraint to another anchor with constant
```
viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
viewA.leading == self.view.leading + 10
```
        
3.Anchor constraint to another anchor with negative constant
```swift
viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -10).isActive = true
viewA.leading == self.view.leading - 10
```
        
4.Anchor lessThanOrEqualTo another anchor
```swift
viewA.leadingAnchor.constraint(lessThanOrEqualTo: self.view.leadingAnchor).isActive = true
viewA.leading <= self.view.leading
```
        
5.Anchor greaterThanOrEqualTo another anchor
```swift
viewA.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor).isActive = true
viewA.leading >= self.view.leading
```
        
6.Anchor lessThanOrEqualTo another anchor with constant
```swift
viewA.leadingAnchor.constraint(lessThanOrEqualTo: self.view.leadingAnchor, constant: 10).isActive = true
viewA.leading <= self.view.leading + 10
```
        
7.Anchor greaterThanOrEqualTo another anchor with constant
```swift
viewA.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 10).isActive = true
viewA.leading >= self.view.leading - 10
```
        
8.Anchor equalTo another anchor with constant and multiplier
```swift
viewA.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1, constant: -10).isActive = true
viewA.height == self.view.height * 0.1 - 10
```

9.Work with Priority
`viewA.leading == (self.view.leading + 0.1) ^ UILayoutPriority.defaultLow`

# Installation

## Drag and drop
Directly drag `EZAnchor` and drop into your Xcode project.

## CocoaPods
To integrate EZAnchor into your Xcode project using CocoaPods, specify it in your Podfile:
`coming soon`

## Carthage
To integrate EZAnchor into your Xcode project using Carthage, specify it in your Cartfile:
`coming soon`

Run carthage update to build the framework and drag the built EZAnchor.framework into your Xcode project.

# Limitations

1. Better to have some basic concept of anchors
2. Avoid defining custom `UIControl` or view has same name with `height` or `width`, there may have conflict with `EZAnchor` library

# License

This code and tool is under the MIT License. 


