#if canImport(Darwin)
#if canImport(UIKit)
@available(watchOS, unavailable)
public typealias CocoaLayoutPriority = UILayoutPriority

@available(watchOS, unavailable)
public typealias CocoaLayoutConstraintAxis = NSLayoutConstraint.Axis
#elseif canImport(AppKit)
public typealias CocoaLayoutPriority = NSLayoutConstraint.Priority
public typealias CocoaLayoutConstraintAxis = NSLayoutConstraint.Orientation
#endif
#endif
