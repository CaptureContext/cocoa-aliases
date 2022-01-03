#if canImport(AppKit)
import AppKit

public typealias CocoaAccessibility                                   = NSAccessibility
public typealias CocoaAccessibilityElement                            = NSAccessibilityElement
public typealias CocoaAlert                                           = NSAlert
public typealias CocoaAppearance                                      = NSAppearance
public typealias CocoaApplication                                     = NSApplication
public typealias CocoaButton                                          = NSButton
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

#elseif canImport(UIKit)
import UIKit

public typealias CocoaAccessibility                                   = UIAccessibility
public typealias CocoaFont                                            = UIFont
public typealias CocoaFontDescriptor                                  = UIFontDescriptor
public typealias CocoaColor                                           = UIColor
public typealias CocoaImage                                           = UIImage

#if !os(watchOS)
#if !os(tvOS)
public typealias CocoaDatePicker                                      = UIDatePicker
public typealias CocoaDocument                                        = UIDocument
public typealias CocoaPasteboard                                      = UIPasteboard
public typealias CocoaPrintInfo                                       = UIPrintInfo
public typealias CocoaPrinter                                         = UIPrinter
public typealias CocoaRotationGestureRecognizer                       = UIRotationGestureRecognizer
public typealias CocoaSlider                                          = UISlider
public typealias CocoaToolbar                                         = UIToolbar
public typealias CocoaStepper                                         = UIStepper
#endif

public typealias CocoaEvent                                           = UIEvent
public typealias CocoaGestureRecognizer                               = UIGestureRecognizer

public typealias CocoaAccessibilityElement                            = UIAccessibilityElement
public typealias CocoaAppearance                                      = UIAppearance
public typealias CocoaApplication                                     = UIApplication
public typealias CocoaButton                                          = UIButton
public typealias CocoaControl                                         = UIControl

public typealias CocoaImageView                                       = UIImageView

@available(iOS 13.0, *)
public typealias CocoaMenu                                            = UIMenu

public typealias CocoaNib                                             = UINib
public typealias CocoaPanGestureRecognizer                            = UIPanGestureRecognizer
public typealias CocoaResponder                                       = UIResponder
public typealias CocoaScreen                                          = UIScreen
public typealias CocoaScrollView                                      = UIScrollView
public typealias CocoaSegmentedControl                                = UISegmentedControl
public typealias CocoaSplitViewController                             = UISplitViewController
public typealias CocoaStackView                                       = UIStackView
public typealias CocoaStoryboard                                      = UIStoryboard
public typealias CocoaStoryboardSegue                                 = UIStoryboardSegue
public typealias CocoaTextField                                       = UITextField
public typealias CocoaTextInput                                       = UITextInput
public typealias CocoaTextInputTraits                                 = UITextInputTraits
public typealias CocoaTextView                                        = UITextView
public typealias CocoaTouch                                           = UITouch
public typealias CocoaView                                            = UIView
public typealias CocoaViewController                                  = UIViewController
public typealias CocoaVisualEffectView                                = UIVisualEffectView
public typealias CocoaWindow                                          = UIWindow
#endif
#endif
