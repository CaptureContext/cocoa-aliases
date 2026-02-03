#if canImport(UIKit)
import UIKit

@available(watchOS, unavailable)
public typealias CocoaTableView                                  = UITableView

@available(watchOS, unavailable)
public typealias CocoaTableViewCell                              = UITableViewCell

@available(watchOS, unavailable)
public typealias CocoaTableViewDataSource                        = UITableViewDataSource

@available(watchOS, unavailable)
public typealias CocoaTableViewDelegate                          = UITableViewDelegate

@available(iOS 13, *)
@available(watchOS, unavailable)
public typealias CocoaTableViewDiffableDataSource                = UITableViewDiffableDataSource

@available(iOS 13, *)
@available(watchOS, unavailable)
public typealias CocoaTableViewDiffableDataSourceReference       = UITableViewDiffableDataSourceReference

#elseif canImport(AppKit)
import AppKit

public typealias CocoaTableView                                  = NSTableView
public typealias CocoaTableViewCell                              = NSTableCellView
public typealias CocoaTableRowView                               = NSTableRowView
public typealias CocoaTableHeaderView                            = NSTableHeaderView
public typealias CocoaTableHeaderCell                            = NSTableHeaderCell
public typealias CocoaTableViewDataSource                        = NSTableViewDataSource
public typealias CocoaTableViewDelegate                          = NSTableViewDelegate
public typealias CocoaTableSection                               = NSTableColumn


@available(macOS 11, *)
public typealias CocoaTableViewDiffableDataSource                = NSTableViewDiffableDataSource

@available(macOS 11, *)
public typealias CocoaTableViewDiffableDataSourceReference       = NSTableViewDiffableDataSourceReference

#endif

@available(macOS 10.15.1, iOS 13, *)
@available(watchOS, unavailable)
public typealias CocoaDiffableDataSourceSnapshot = NSDiffableDataSourceSnapshot

@available(macOS 10.15.1, iOS 13, *)
@available(watchOS, unavailable)
public typealias CocoaDiffableDataSourceSnapshotReference = NSDiffableDataSourceSnapshotReference
