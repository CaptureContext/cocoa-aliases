#if os(iOS)
import UIKit

public typealias CocoaTableView                                  = UITableView

#elseif os(macOS)
import AppKit

public typealias CocoaTableView                                  = NSTableView
#endif
