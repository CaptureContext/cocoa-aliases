// swift-tools-version: 6.2

import PackageDescription

let package = Package(
	name: "cocoa-aliases",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v13),
		.tvOS(.v13),
		.watchOS(.v6),
		.macCatalyst(.v13)
	],
	products: [
		.library(
			name: "CocoaAliases",
			targets: ["CocoaAliases"]
		),
	],
	dependencies: [
		.package(
			url: "https://github.com/capturecontext/swift-marker-protocols.git",
			.upToNextMajor(from: "1.2.0")
		),
	],
	targets: [
		.target(
			name: "CocoaAliases",
			dependencies: [
				.product(
					name: "CocoaMarkerProtocols",
					package: "swift-marker-protocols"
				),
			]
		)
	],
	swiftLanguageModes: [.v6]
)
