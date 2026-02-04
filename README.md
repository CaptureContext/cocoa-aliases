# cocoa-aliases

[![CI](https://github.com/CaptureContext/cocoa-aliases/actions/workflows/ci.yml/badge.svg)](https://github.com/CaptureContext/cocoa-aliases/actions/workflows/ci.yml) [![Swift 6.0](https://img.shields.io/badge/Swift-6.0_|_5.9-ED523F.svg?style=flat)](https://swift.org/download/) ![Platforms](https://img.shields.io/badge/Platforms-iOS_13_|_macOS_10.15_|_Catalyst_13_|_tvOS_14_|_watchOS_7-ED523F.svg?style=flat)

A small Swift package that provides Cocoa-prefixed typealiases for AppKit and UIKit types.

## Table of contents

- [Motivation](#motivation)
- [Usage](#usage)
- [Installation](#installation)
- [License](#license)

## Motivation

Working with cross-platform UI code often requires conditional compilation to distinguish between AppKit and UIKit types.

This package defines a set of Cocoa-prefixed typealiases that map to the appropriate platform-specific types, allowing shared code to be written without `#if os(...)`

> [!NOTE]
>
> _UIKit and AppKit are not 1:1 equivalents, and some APIs are conditionally available across platforms. While the most common aliases are provided, some may be missing. Feel free to request additional aliases via Issues or contribute them with a pull request._

## Usage

Without this package, cross-platform extensions typically require conditional compilation:

```swift
#if os(macOS)
extension NSView {
  func rounded() {
    layer.cornerRadius = min(bounds.width, bounds.height) / 2
  }
}
#else
extension UIView {
  func rounded() {
    layer.cornerRadius = min(bounds.width, bounds.height) / 2
  }
}
#endif
```

With cocoa-aliases, the same code can be written once:

```swift
import CocoaAliases

extension CocoaView {
  func rounded() {
    layer.cornerRadius = min(bounds.width, bounds.height) / 2
  }
}
```

The Cocoa* aliases resolve to NS* types on macOS and UI* types on iOS, tvOS, and watchOS.

> [!TIP]
>
> _CocoaAliases also export Cocoa-prefixed [marker protocols](https://github.com/capturecontext/swift-marker-protocols)_.

## Installation

### Basic

You can add CocoaAliases to an Xcode project by adding it as a package dependency.

1. From the **File** menu, select **Swift Packages › Add Package Dependency…**
2. Enter [`https://github.com/capturecontext/cocoa-aliases`](https://github.com/capturecontext/cocoa-aliases) into the package repository URL text field
3. Choose the products you need to link to your project.

### Recommended

If you use SwiftPM for your project structure, add CocoaAliases to your package file.

```swift
.package(
  url: "https://github.com/capturecontext/cocoa-aliases.git",
  .upToNextMinor(from: "3.2.1")
)
```

or via HTTPS

```swift
.package(
  url: "https://github.com/capturecontext/cocoa-aliases.git",
  .upToNextMinor(from: "3.2.1")
)
```

Do not forget about target dependencies:

```swift
.product(
  name: "CocoaAliases",
  package: "cocoa-aliases"
)
```

## License

This library is released under the MIT license. See [LICENSE](LICENSE) for details.
