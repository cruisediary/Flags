# Flags
🇸🇪 Flag extension

![Swift](https://img.shields.io/badge/Swift-4.2-orange.svg)
[![Version](https://img.shields.io/cocoapods/v/Flags.svg?style=flat)](http://cocoapods.org/pods/Flags)
[![License](https://img.shields.io/cocoapods/l/Flags.svg?style=flat)](http://cocoapods.org/pods/Flags)
[![Platform](https://img.shields.io/cocoapods/p/Flags.svg?style=flat)](http://cocoapods.org/pods/Flags)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Codecov](https://img.shields.io/codecov/c/github/cruisediary/Flags.svg)](https://codecov.io/gh/cruisediary/Flags)

![flags](README/flags.gif)

## Usage
```swift
let flag = Flag(countryCode: "SE")

let countryLabel = UILabel()
countryLabel.text = flag?.emoji // 🇸🇪

let countryNameLabel = UILabel()
countryNameLabel.text = flag?.countryName // Sweden

let countryImage = UIImageView()
countryImage.image = flag?.image // 🇸🇪 to image

```

## Example
- [Flags](https://github.com/cruisediary/Flags/tree/master/Example) - Flags for iOS Rxswift, ReactorKit and IGListKit example

## Requirements
Flags is written in  Xcode 10, Swift 4.2, iOS 8.0 Required

## 📲 Installation
Flags is available through [Cocoapods](http://cocoapods.org) or [Carthage](https://github.com/Carthage/Carthage).

### Cocoapods
```ruby
pod "Flags"
```

### Carthage
```
github "cruisediary/Flags" ~> 0.4.0
```

## ❤️ Contribution
Pull requests are always welcomed 🏄🏼

## 👨‍💻 Author
cruz, cruzdiary@gmail.com

## 🛡 License

Flags is available under the MIT license. See the LICENSE file for more info.
