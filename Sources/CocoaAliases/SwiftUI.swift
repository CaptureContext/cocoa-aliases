#if canImport(Darwin) && canImport(ObjectiveC)
#if canImport(UIKit) && canImport(SwiftUI)
import SwiftUI

@available(iOS 16.0, tvOS 16.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaHostingConfiguration = UIHostingConfiguration

#if !os(watchOS)

public typealias CocoaHostingController = UIHostingController

#if !os(tvOS)
@available(iOS 26.0, tvOS 26.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaHostingSceneDelegate = UIHostingSceneDelegate
#endif

@available(iOS 16.0, tvOS 16.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaHostingControllerSizingOptions = UIHostingControllerSizingOptions

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewRepresentable: UIViewRepresentable
where UIViewType == CocoaViewType {
	associatedtype CocoaViewType
	func makeCocoaView(
		context: Context
	) -> CocoaViewType
	
	func updateCocoaView(
		_ view: CocoaViewType,
		context: Context
	)

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaView: CocoaViewType,
		context: Context
	) -> CGSize?
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewRepresentable {
	public func makeUIView(
		context: Context
	) -> CocoaViewType {
		makeCocoaView(context: context)
	}

	public func updateUIView(
		_ view: CocoaViewType,
		context: Context
	) {
		updateCocoaView(
			view,
			context: context
		)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	public func sizeThatFits(
		_ proposal: ProposedViewSize,
		uiView: CocoaViewType,
		context: Context
	) -> CGSize? {
		sizeThatFits(
			proposal,
			cocoaView: uiView,
			context: context
		)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaView: CocoaViewType,
		context: Context
	) -> CGSize? { nil }
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewControllerRepresentable: UIViewControllerRepresentable
where UIViewControllerType == CocoaViewControllerType {
	associatedtype CocoaViewControllerType
	func makeCocoaViewController(
		context: Context
	) -> CocoaViewControllerType

	func updateCocoaViewController(
		_ controller: CocoaViewControllerType,
		context: Context
	)

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaViewController: CocoaViewControllerType,
		context: Context
	) -> CGSize?
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewControllerRepresentable {
	public func makeUIViewController(
		context: Context
	) -> CocoaViewControllerType {
		makeCocoaViewController(context: context)
	}

	public func updateUIViewController(
		_ controller: CocoaViewControllerType,
		context: Context
	) {
		updateCocoaViewController(
			controller,
			context: context
		)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		uiViewController: CocoaViewControllerType,
		context: Context
	) -> CGSize? {
		sizeThatFits(
			proposal,
			cocoaViewController: uiViewController,
			context: context
		)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaViewController: CocoaViewControllerType,
		context: Context
	) -> CGSize? { nil }
}
#endif

#elseif canImport(AppKit) && canImport(SwiftUI)
import SwiftUI

public typealias CocoaHostingController = NSHostingController

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewRepresentable: NSViewRepresentable
where NSViewType == CocoaViewType  {
	associatedtype CocoaViewType
	func makeCocoaView(
		context: Context
	) -> CocoaViewType

	func updateCocoaView(
		_ view: CocoaViewType,
		context: Context
	)

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaView: CocoaViewType,
		context: Context
	) -> CGSize?
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewRepresentable {
	public func makeNSView(
		context: Context
	) -> CocoaViewType {
		makeCocoaView(context: context)
	}

	public func updateNSView(
		_ view: CocoaViewType,
		context: Context
	) {
		updateCocoaView(
			view,
			context: context
		)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	public func sizeThatFits(
		_ proposal: ProposedViewSize,
		nsView: CocoaViewType,
		context: Context
	) -> CGSize? {
		sizeThatFits(
			proposal,
			cocoaView: nsView,
			context: context
		)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaView: CocoaViewType,
		context: Context
	) -> CGSize? { nil }
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewControllerRepresentable: NSViewControllerRepresentable
where NSViewControllerType == CocoaViewControllerType {
	associatedtype CocoaViewControllerType
	func makeCocoaViewController(
		context: Context
	) -> CocoaViewControllerType

	func updateCocoaViewController(
		_ controller: CocoaViewControllerType,
		context: Context
	)

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaViewController: CocoaViewControllerType,
		context: Context
	) -> CGSize?
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewControllerRepresentable {
	public func makeNSViewController(context: Context) -> CocoaViewControllerType {
		makeCocoaViewController(context: context)
	}

	public func updateNSViewController(_ controller: CocoaViewControllerType, context: Context) {
		updateCocoaViewController(controller, context: context)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	public func sizeThatFits(
		_ proposal: ProposedViewSize,
		nsViewController: CocoaViewControllerType,
		context: Context
	) -> CGSize? {
		sizeThatFits(
			proposal,
			cocoaViewController: nsViewController,
			context: context
		)
	}

	@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
	func sizeThatFits(
		_ proposal: ProposedViewSize,
		cocoaViewController: CocoaViewControllerType,
		context: Context
	) -> CGSize? { nil }
}
#endif
#endif
