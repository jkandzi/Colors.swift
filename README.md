# Colors.swift

![screenshot](https://raw.githubusercontent.com/jkandzi/Colors.swift/master/web/ScreenShot.png)

Add some color to your terminal.

Inspired by [colors.js](https://github.com/marak/colors.js/).

## Usage

Set foreground color:

```swift
print("Red".paint(.Red))
```

Set background color:

```swift
print("Red".paint(.RedBackground))
```

Apply style:

```swift
print("Bold".style(.Bold))
```

Chain colors and styles:

```swift
print("Nice".paint(.Green).paint(.RedBackground).style(.Bold))
```

Custom paint operator:

```swift
print("Red" >-- .Red)
print("Red" >-- .RedBackground >-- .Blue)
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

* `.BlackBackground`
* `.RedBackground`
* `.GreenBackground`
* `.YellowBackground`
* `.BlueBackground`
* `.MagentaBackground`
* `.CyanBackground`
* `.WhiteBackground`
* `.GrayBackground`

Available styles:

* `.Bold`
* `.Dim`
* `.Italic`
* `.Underline`
* `.Inverse`
* `.Hidden`
* `.Strikethrough`

## Installation

Colors.swift is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Colors.swift"
```

## Author

Justus Kandzi, justus.kandzi@gmail.com

## License

Colors.swift is available under the MIT license. See the LICENSE file for more info.
