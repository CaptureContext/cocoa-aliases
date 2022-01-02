// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "cocoa-aliases",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v13),
    .tvOS(.v13),
    .watchOS(.v6)
  ],
  products: [
    .library(
      name: "CocoaAliases",
      targets: ["CocoaAliases"]
    ),
  ],
  targets: [
    .target(name: "CocoaAliases")
  ]
)
