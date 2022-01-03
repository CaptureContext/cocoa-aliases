#if os(iOS)
import UIKit

public typealias CocoaTableView                                  = UITableView
public typealias CocoaTableViewCell                              = UITableViewCell
public typealias CocoaTableViewDataSource                            = UITableViewDataSource
public typealias CocoaTableViewDelegate                              = UITableViewDelegate

@available(iOS 13, *)
public typealias CocoaTableViewDiffableDataSource                = UITableViewDiffableDataSource

@available(iOS 13, *)
public typealias CocoaTableViewDiffableDataSourceReference       = UITableViewDiffableDataSourceReference

#elseif os(macOS)
import AppKit

public typealias CocoaTableView                                  = NSTableView
public typealias CocoaTableViewCell                              = NSCell
public typealias CocoaTableViewDataSource                        = NSTableViewDataSource
public typealias CocoaTableViewDelegate                          = NSTableViewDelegate

@available(macOS 11, *)
public typealias CocoaTableViewDiffableDataSource                = NSTableViewDiffableDataSource

@available(macOS 11, *)
public typealias CocoaTableViewDiffableDataSourceReference       = NSTableViewDiffableDataSourceReference

#endif

#if !os(watchOS)

@available(macOS 10.15.1, iOS 13, *)
public typealias CocoaDiffableDataSourceSnapshot = NSDiffableDataSourceSnapshot

@available(macOS 10.15.1, iOS 13, *)
public typealias CocoaDiffableDataSourceSnapshotReference = NSDiffableDataSourceSnapshotReference

#endif
