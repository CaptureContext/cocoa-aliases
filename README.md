# cocoa-aliases

[![SwiftPM 6.0](https://img.shields.io/badge/swiftpm-6.0-ED523F.svg?style=flat)](https://swift.org/download/) ![Platforms](https://img.shields.io/badge/Platforms-iOS_13_|_macOS_10.15_|_Catalyst_13_|_tvOS_14_|_watchOS_7-ED523F.svg?style=flat) [![@capture_context](https://img.shields.io/badge/contact-@capturecontext-1DA1F2.svg?style=flat&logo=twitter)](https://twitter.com/capture_context) 

Just a bunch of typealeases for the AppKit and UIKit.

This package gives an abitily to use Cocoa prefixed equivalents of NS prefixed classes from the AppKit and UI prefixed classes from UIKit (mostly for classes that have alternatives in these frameworks), makes the development of cross-platform UI frameworks a little bit easier, reduces the amount of boilerplate code.

So you can replace this

```swift
#if os(iOS)
import UIKit

extension UIView {
  func roundCorners(by value: CGFloat) {
    layer.cornerRadius = value
  }
}

#elseif os(OSX)
import AppKit // or Cocoa

extension NSView {
  func roundCorners(by value: CGFloat) {
    layer.cornerRadius = value
  }
}

#endif
```

with this

```swift
import CocoaAlises

extension CocoaView {
  func roundCorners(by value: CGFloat) {
    layer.cornerRadius = value
  }
}
```

## Installation

Just add a link to this repo to your Package.swift file.

```swift
.package(
  name: "cocoa-alaises",
  url: "https://github.com/capturecontext/cocoa-alaises.git",
  .upToNextMajor(from: "2.1.0")
)
```

```swift
.product(
  name: "CocoaAlaises",
  package: "cocoa-alaises"
)
```

## License

CocoaAliases is available under the MIT license. See the LICENSE file for more info.
