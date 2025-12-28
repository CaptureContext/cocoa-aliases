// swift-tools-version:6.0

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
		.package(path: "../swift-marker-protocols"),
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
