# EZAnchor
An easier way to code Autolayout

![Image of EZAnchor](https://raw.githubusercontent.com/alexliubj/EZAnchor/master/Logo.png)

[![Language: Swift 4](https://img.shields.io/badge/language-swift%204-f48041.svg?style=flat)](https://developer.apple.com/swift)
![Platform: iOS 9+](https://img.shields.io/badge/platform-iOS-green.svg?style=flat)
[![CocoaPods compatible](https://img.shields.io/badge/Cocoapods-compatible-4BC51D.svg?style=flat)](https://cocoapods.org/pods/SteviaLayout)
![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)

- [x] Are you annoyed of coding `.active = true` while using Autolayout Anchors over and over again?
- [x] Are you annoyed of coding such long constraint sentence `refreshView.heightAnchor.constraint(equalToConstant: self.refreshViewHeight).isActive = true` over and over again?

Now `EZAnchor` is definitely going to shorten your time of writing Autolayout Anchors by a simple installation.
Let's see how it works:

* Anchor constraint to another anchor
```swift
//Traditional way
viewA.leadingAnchor.constraint(equalTo: viewB.leadingAnchor).isActive = true

//With EZAnchor
viewA.leading == viewB.leading
```
        
* Anchor constraint to another anchor with constant
```swift
//Traditional way
viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true

//With EZAnchor
viewA.leading == self.view.leading + 10
```
        
* Anchor constraint to another anchor with negative constant
```swift
//Traditional way
viewA.leadingAnchor.constraint(equalTo: viewB.leadingAnchor, constant: -10).isActive = true

//With EZAnchor
viewA.leading == viewB.leading - 10
```
        
* Anchor lessThanOrEqualTo another anchor
```swift
//Traditional way
viewA.leadingAnchor.constraint(lessThanOrEqualTo: viewB.leadingAnchor).isActive = true

//With EZAnchor
viewA.leading <= viewB.leading
```
        
* Anchor greaterThanOrEqualTo another anchor
```swift
viewA.leadingAnchor.constraint(greaterThanOrEqualTo: viewB.leadingAnchor).isActive = true

//With EZAnchor
viewA.leading >= viewB.leading
```
        
* Anchor lessThanOrEqualTo another anchor with constant
```swift
viewA.leadingAnchor.constraint(lessThanOrEqualTo: viewB.leadingAnchor, constant: 10).isActive = true

//With EZAnchor
viewA.leading <= viewB.leading + 10
```
        
* Anchor greaterThanOrEqualTo another anchor with constant
```swift
//Traditional way
viewA.leadingAnchor.constraint(greaterThanOrEqualTo: viewB.leadingAnchor, constant: 10).isActive = true

//With EZAnchor
viewA.leading >= viewB.leading - 10
```
        
* Anchor equalTo another anchor with constant and multiplier
```swift
//Traditional way
viewA.heightAnchor.constraint(equalTo: viewB.heightAnchor, multiplier: 0.1, constant: -10).isActive = true

//With EZAnchor
viewA.height == viewB.height * 0.1 - 10
```

* Work with Priority
```swift
//With EZAnchor
viewA.leading == (viewB.leading + 0.1) ^ .defaultLow
```

## Installation

### Drag and drop
Directly drag `EZAnchor` and drop into your Xcode project.

### CocoaPods
To integrate EZAnchor into your Xcode project using CocoaPods, specify it in your Podfile:
```
target 'MyApp' do
  pod 'EZAnchor'
end
```

### Carthage
To integrate EZAnchor into your Xcode project using Carthage, specify it in your Cartfile:
`coming soon`

Run carthage update to build the framework and drag the built EZAnchor.framework into your Xcode project.

## Demo

You can easily implement the following layout with very simple and clean code:
```swift
//set viewA's layout constraints
viewA.backgroundColor = UIColor.red
viewA.width == 200
viewA.width == viewA.height
viewA.centerX == view.centerX
viewA.centerY == view.centerY

//set viewB's layout constraints
viewB.top == viewA.bottom + 20
viewB.width == viewA.width * 0.5
viewB.height == viewB.width - 10
viewB.centerX == viewA.centerX
        
```
![Image of DemoScreenshot](https://raw.githubusercontent.com/alexliubj/EZAnchor/master/demo.png)

## Limitations

1. Better to have some basic concept of anchors, familiar with coding anchors programmatically. If not please learn from this link : [Programmatically Creating Constraints!](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/ProgrammaticallyCreatingConstraints.html)

2. Avoid defining custom `UIControl` or view has same name with `height` or `width`, there may have conflict with `EZAnchor` library

## Others
##### [WTF Autolayout](https://www.wtfautolayout.com) will help you debug autolayout complaints.
##### Logo is generated with [Shopify logo maker](https://hatchful.shopify.com/)
##### Inspired by: [PureLayout](https://github.com/PureLayout/PureLayout) [Stevia](https://github.com/freshOS/Stevia) [layout](https://github.com/nicklockwood/layout) 

## Todo
- [ ] Unit tests
- [ ] UI Tests
- [ ] CI
- [ ] Fastlane

## License

This code and tool is under the MIT License. 
