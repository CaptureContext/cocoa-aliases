#if canImport(UIKit) && canImport(SwiftUI) && !os(watchOS)
import SwiftUI

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewRepresentable: UIViewRepresentable
where UIViewType == CocoaViewType {
  associatedtype CocoaViewType
  func makeCocoaView(context: Context) -> CocoaViewType
  func updateCocoaView(_ view: CocoaViewType, context: Context)
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewRepresentable {
  public func makeUIView(context: Context) -> CocoaViewType {
    makeCocoaView(context: context)
  }
  
  public func updateUIView(_ view: CocoaViewType, context: Context) {
    updateCocoaView(view, context: context)
  }
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewControllerRepresentable: UIViewControllerRepresentable
where UIViewControllerType == CocoaViewControllerType {
  associatedtype CocoaViewControllerType
  func makeCocoaViewController(context: Context) -> CocoaViewControllerType
  func updateCocoaViewController(_ controller: CocoaViewControllerType, context: Context)
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewControllerRepresentable {
  public func makeUIViewController(context: Context) -> CocoaViewControllerType {
    makeCocoaViewController(context: context)
  }
  
  public func updateUIViewController(_ controller: CocoaViewControllerType, context: Context) {
    updateCocoaViewController(controller, context: context)
  }
}
#elseif canImport(AppKit) && canImport(SwiftUI)
import SwiftUI

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewRepresentable: NSViewRepresentable
where NSViewType == CocoaViewType  {
  associatedtype CocoaViewType
  func makeCocoaView(context: Context) -> CocoaViewType
  func updateCocoaView(_ view: CocoaViewType, context: Context)
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewRepresentable {
  public func makeNSView(context: Context) -> CocoaViewType {
    makeCocoaView(context: context)
  }
  
  public func updateNSView(_ view: CocoaViewType, context: Context) {
    updateCocoaView(view, context: context)
  }
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewControllerRepresentable: NSViewControllerRepresentable
where NSViewControllerType == CocoaViewControllerType {
  associatedtype CocoaViewControllerType
  func makeCocoaViewController(context: Context) -> CocoaViewControllerType
  func updateCocoaViewController(_ controller: CocoaViewControllerType, context: Context)
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
}
#endif
