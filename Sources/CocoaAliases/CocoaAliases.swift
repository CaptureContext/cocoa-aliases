#if canImport(Darwin) && canImport(ObjectiveC)
#if canImport(UIKit)
import UIKit
import CocoaMarkerProtocols

@available(watchOS, unavailable)
public typealias _CocoaViewProtocol                                   = _UIViewProtocol

@available(watchOS, unavailable)
public typealias _CocoaViewControllerProtocol                         = _UIViewControllerProtocol

public typealias CocoaAccessibility                                   = UIAccessibility
public typealias CocoaFont                                            = UIFont
public typealias CocoaFontDescriptor                                  = UIFontDescriptor
public typealias CocoaColor                                           = UIColor
public typealias CocoaImage                                           = UIImage

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaDatePicker                                      = UIDatePicker

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaDocument                                        = UIDocument

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaPasteboard                                      = UIPasteboard

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaPrintInfo                                       = UIPrintInfo

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaPrinter                                         = UIPrinter

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaRotationGestureRecognizer                       = UIRotationGestureRecognizer

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaSlider                                          = UISlider

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaToolbar                                         = UIToolbar

@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias CocoaStepper                                         = UIStepper


@available(watchOS, unavailable)
public typealias CocoaEvent                                           = UIEvent

@available(watchOS, unavailable)
public typealias CocoaGestureRecognizer                               = UIGestureRecognizer

@available(watchOS, unavailable)
public typealias CocoaAccessibilityElement                            = UIAccessibilityElement

@available(watchOS, unavailable)
public typealias CocoaAppearance                                      = UIAppearance

@available(watchOS, unavailable)
public typealias CocoaApplication                                     = UIApplication

@available(watchOS, unavailable)
public typealias CocoaButton                                          = UIButton

@available(watchOS, unavailable)
public typealias CocoaControl                                         = UIControl

@available(watchOS, unavailable)
public typealias CocoaImageView                                       = UIImageView

@available(iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaMenu                                            = UIMenu

@available(watchOS, unavailable)
@available(visionOS, deprecated, message: "Loading Interface Builder products will not be supported in a future version of visionOS.")
public typealias CocoaNib                                             = UINib

@available(watchOS, unavailable)
public typealias CocoaPanGestureRecognizer                            = UIPanGestureRecognizer

@available(watchOS, unavailable)
public typealias CocoaResponder                                       = UIResponder

@available(watchOS, unavailable)
@available(visionOS, unavailable)
public typealias CocoaScreen                                          = UIScreen

@available(watchOS, unavailable)
public typealias CocoaScrollView                                      = UIScrollView

@available(watchOS, unavailable)
public typealias CocoaSegmentedControl                                = UISegmentedControl

@available(watchOS, unavailable)
public typealias CocoaSplitViewController                             = UISplitViewController

@available(watchOS, unavailable)
public typealias CocoaStackView                                       = UIStackView

@available(watchOS, unavailable)
@available(visionOS, deprecated, message: "Loading Interface Builder products will not be supported in a future version of visionOS.")
public typealias CocoaStoryboard                                      = UIStoryboard

@available(watchOS, unavailable)
@available(visionOS, deprecated, message: "Loading Interface Builder products will not be supported in a future version of visionOS.")
public typealias CocoaStoryboardSegue                                 = UIStoryboardSegue

@available(watchOS, unavailable)
public typealias CocoaTextField                                       = UITextField

@available(watchOS, unavailable)
public typealias CocoaTextInput                                       = UITextInput

@available(watchOS, unavailable)
public typealias CocoaTextView                                        = UITextView

@available(watchOS, unavailable)
public typealias CocoaTouch                                           = UITouch

@available(watchOS, unavailable)
public typealias CocoaView                                            = UIView

@available(watchOS, unavailable)
public typealias CocoaViewController                                  = UIViewController

@available(watchOS, unavailable)
public typealias CocoaVisualEffectView                                = UIVisualEffectView

@available(watchOS, unavailable)
public typealias CocoaWindow                                          = UIWindow

#if !os(watchOS)
@available(watchOS, unavailable)
public typealias CocoaTextInputTraits                                 = UITextInputTraits
#endif

#elseif os(macOS)
import AppKit
import CocoaMarkerProtocols

public typealias _CocoaViewProtocol                                   = _NSViewProtocol
public typealias _CocoaViewControllerProtocol                         = _NSViewControllerProtocol

public typealias CocoaAccessibility                                   = NSAccessibility
public typealias CocoaAccessibilityElement                            = NSAccessibilityElement
public typealias CocoaAlert                                           = NSAlert
public typealias CocoaAppearance                                      = NSAppearance
public typealias CocoaApplication                                     = NSApplication
public typealias CocoaButton                                          = NSButton
public typealias CocoaCell                                            = NSCell
public typealias CocoaColor                                           = NSColor
public typealias CocoaControl                                         = NSControl
public typealias CocoaDatePicker                                      = NSDatePicker
public typealias CocoaDocument                                        = NSDocument
public typealias CocoaEvent                                           = NSEvent
public typealias CocoaFont                                            = NSFont
public typealias CocoaFontDescriptor                                  = NSFontDescriptor
public typealias CocoaGestureRecognizer                               = NSGestureRecognizer
public typealias CocoaImage                                           = NSImage
public typealias CocoaImageView                                       = NSImageView
public typealias CocoaMenu                                            = NSMenu
public typealias CocoaNib                                             = NSNib
public typealias CocoaPanGestureRecognizer                            = NSPanGestureRecognizer
public typealias CocoaPasteboard                                      = NSPasteboard
public typealias CocoaPrintInfo                                       = NSPrintInfo
public typealias CocoaPrinter                                         = NSPrinter
public typealias CocoaResponder                                       = NSResponder
public typealias CocoaRotationGestureRecognizer                       = NSRotationGestureRecognizer
public typealias CocoaScreen                                          = NSScreen
public typealias CocoaScrollView                                      = NSScrollView
public typealias CocoaSegmentedControl                                = NSSegmentedControl
public typealias CocoaSlider                                          = NSSlider
public typealias CocoaSplitViewController                             = NSSplitViewController
public typealias CocoaStackView                                       = NSStackView
public typealias CocoaStepper                                         = NSStepper
public typealias CocoaStoryboard                                      = NSStoryboard
public typealias CocoaStoryboardSegue                                 = NSStoryboardSegue
public typealias CocoaTextField                                       = NSTextField
public typealias CocoaTextInput                                       = NSTextInput
public typealias CocoaTextInputTraits                                 = NSTextInputTraits
public typealias CocoaTextView                                        = NSTextView
public typealias CocoaToolbar                                         = NSToolbar
public typealias CocoaTouch                                           = NSTouch
public typealias CocoaUserActivity                                    = NSUserActivity
public typealias CocoaView                                            = NSView
public typealias CocoaViewController                                  = NSViewController
public typealias CocoaVisualEffectView                                = NSVisualEffectView
public typealias CocoaWindow                                          = NSWindow
#endif
#endif
