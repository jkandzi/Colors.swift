# Colors.swift

[![Build Status](https://travis-ci.org/jkandzi/Colors.swift.svg?branch=master)](https://travis-ci.org/jkandzi/Colors.swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SPM ready](https://img.shields.io/badge/SPM-ready-orange.svg)](https://www.swift.org)
[![Version](https://img.shields.io/cocoapods/v/Colors.swift.svg?style=flat)](http://cocoapods.org/pods/Colors.swift)
[![License](https://img.shields.io/cocoapods/l/Colors.swift.svg?style=flat)](http://cocoapods.org/pods/Colors.swift)
[![Platform](https://img.shields.io/cocoapods/p/Colors.swift.svg?style=flat)](http://cocoapods.org/pods/Colors.swift)

![screenshot](https://raw.githubusercontent.com/jkandzi/Colors.swift/master/screen-shot.png)

Add some color to your terminal.

Inspired by [colors.js](https://github.com/marak/colors.js/).

## Usage

Set foreground color:

```swift
print("Red".paint(.Red))
```

Set background color:

```swift
print("Red".paint(.OnRed))
```

Apply style:

```swift
print("Bold".style(.Bold))
```

Chain colors and styles:

```swift
print("Nice".paint(.Green).paint(.OnRed).style(.Bold))

print("Nice".paint(.Green, .OnRed))
print("Nice".paint(.Green, .OnRed, .Bold))
```

Available colors:

* `.Black`
* `.Red`
* `.Green`
* `.Yellow`
* `.Blue`
* `.Magenta`
* `.Cyan`
* `.White`
* `.Gray`

Available background colors:

* `.OnBlack`
* `.OnRed`
* `.OnGreen`
* `.OnYellow`
* `.OnBlue`
* `.OnMagenta`
* `.OnCyan`
* `.OnWhite`
* `.OnGray`

Available styles:

* `.Bold`
* `.Dim`
* `.Italic`
* `.Underline`
* `.Inverse`
* `.Hidden`
* `.Strikethrough`

## Installation

### CocoaPods

Progress.swift is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Colors.swift"
```

### Carthage

To integrate Colors.swift into your Xcode project using Carthage, specify it in your Cartfile:

```
github "jkandzi/Colors.swift"
```

Run `carthage update` to build the framework and drag the built `Progress.framework` into your Xcode project.

### Swift Package Manager

To install with the Swift Package Manager, add the following in your `Package.swift`:

```swift
import PackageDescription

let package = Package(
    name: "MyProject",
    dependencies: [
        .Package(url: "https://github.com/jkandzi/Colors.swift", majorVersion: 0)
    ]
)
```

### Manual

You can also copy the `Colors.swift` file into your Xcode project.

## Author

Justus Kandzi, justus.kandzi@gmail.com

## License

Colors.swift is available under the MIT license. See the LICENSE file for more info.
