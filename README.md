# EZAnchor
An easier way to code Autolayout

![Image of EZAnchor](https://raw.githubusercontent.com/alexliubj/EZAnchor/master/Logo.png)

- Are you annoyed of coding `.active = true` while using Autolayout Anchors over and over again?
- Are you annoyed of coding such long constraint sentence `refreshView.heightAnchor.constraint(equalToConstant: self.refreshViewHeight).isActive = true` over and over again?

Now `EZAnchor` is definitely going to shorten your time of writing Autolayout Anchors by a simple installation.
Let's see how it works:

* Anchor constraint to another anchor
```swift
viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
viewA.leading == self.view.leading
```
        
* Anchor constraint to another anchor with constant
```swift
viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
viewA.leading == self.view.leading + 10
```
        
* Anchor constraint to another anchor with negative constant
```swift
viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -10).isActive = true
viewA.leading == self.view.leading - 10
```
        
* Anchor lessThanOrEqualTo another anchor
```swift
viewA.leadingAnchor.constraint(lessThanOrEqualTo: self.view.leadingAnchor).isActive = true
viewA.leading <= self.view.leading
```
        
* Anchor greaterThanOrEqualTo another anchor
```swift
viewA.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor).isActive = true
viewA.leading >= self.view.leading
```
        
* Anchor lessThanOrEqualTo another anchor with constant
```swift
viewA.leadingAnchor.constraint(lessThanOrEqualTo: self.view.leadingAnchor, constant: 10).isActive = true
viewA.leading <= self.view.leading + 10
```
        
* Anchor greaterThanOrEqualTo another anchor with constant
```swift
viewA.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 10).isActive = true
viewA.leading >= self.view.leading - 10
```
        
* Anchor equalTo another anchor with constant and multiplier
```swift
viewA.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1, constant: -10).isActive = true
viewA.height == self.view.height * 0.1 - 10
```

* Work with Priority
```swift
viewA.leading == (self.view.leading + 0.1) ^ UILayoutPriority.defaultLow
```

## Installation

### Drag and drop
Directly drag `EZAnchor` and drop into your Xcode project.

### CocoaPods
To integrate EZAnchor into your Xcode project using CocoaPods, specify it in your Podfile:
`coming soon`

### Carthage
To integrate EZAnchor into your Xcode project using Carthage, specify it in your Cartfile:
`coming soon`

Run carthage update to build the framework and drag the built EZAnchor.framework into your Xcode project.

## Limitations

1. Better to have some basic concept of anchors, familiar with coding anchors programmatically. If not please learn from this link : [Programmatically Creating Constraints!](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/ProgrammaticallyCreatingConstraints.html)

2. Avoid defining custom `UIControl` or view has same name with `height` or `width`, there may have conflict with `EZAnchor` library

## Other helpful tools
[WTF Autolayout](https://www.wtfautolayout.com) will help you debug autolayout complaints.

## License

This code and tool is under the MIT License. 


