#if os(iOS)
import UIKit

public typealias CocoaCollectionView                                                     = UICollectionView
public typealias CocoaCollectionViewCell                                                 = UICollectionViewCell
public typealias CocoaCollectionReusableView                                             = UICollectionReusableView

@available(iOS 13.0, *)
public typealias CocoaCollectionViewDiffableDataSource                                   = UICollectionViewDiffableDataSource

@available(iOS 13.0, *)
public typealias CocoaCollectionViewDiffableDataSourceReference                          = UICollectionViewDiffableDataSourceReference

public typealias CocoaCollectionViewDiffableDataSourceReferenceCellProvider              = UICollectionViewDiffableDataSourceReferenceCellProvider
public typealias CocoaCollectionViewDiffableDataSourceReferenceSupplementaryViewProvider = UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider

public typealias CocoaCollectionViewPrefetching                                          = UICollectionViewDataSourcePrefetching

#elseif os(macOS)
import AppKit

public typealias CocoaCollectionView                                                     = NSCollectionView
public typealias CocoaCollectionViewCell                                                 = NSCollectionViewItem
public typealias CocoaCollectionReusableView                                             = NSView

@available(macOS 10.15.1, *)
public typealias CocoaCollectionViewDiffableDataSource                                   = NSCollectionViewDiffableDataSource

@available(macOS 10.15.1, *)
public typealias CocoaCollectionViewDiffableDataSourceReference                          = NSCollectionViewDiffableDataSourceReference

public typealias CocoaCollectionViewDiffableDataSourceReferenceSupplementaryViewProvider = NSCollectionViewDiffableDataSourceReferenceSupplementaryViewProvider

public typealias CocoaCollectionViewPrefetching                                          = NSCollectionViewPrefetching

#endif

#if os(iOS)

public typealias CocoaCollectionViewDataSource                        = UICollectionViewDataSource
public typealias CocoaCollectionViewDelegate                          = UICollectionViewDelegate

public typealias CocoaCollectionViewLayout                            = UICollectionViewLayout
public typealias CocoaCollectionViewLayoutAttributes                  = UICollectionViewLayoutAttributes
public typealias CocoaCollectionViewInvalidationContext               = UICollectionViewLayoutInvalidationContext
public typealias CocoaCollectionViewFlowLayout                        = UICollectionViewFlowLayout
public typealias CocoaCollectionViewTransitionLayout                  = UICollectionViewTransitionLayout
public typealias CocoaCollectionViewDelegateFlowLayout                = UICollectionViewDelegateFlowLayout

#elseif os(macOS)

public typealias CocoaCollectionViewDataSource                        = NSCollectionViewDataSource
public typealias CocoaCollectionViewDelegate                          = NSCollectionViewDelegate

@available(macOS 10.11, *)
public typealias CocoaCollectionViewLayout                            = NSCollectionViewLayout

@available(macOS 10.11, *)
public typealias CocoaCollectionViewLayoutAttributes                  = NSCollectionViewLayoutAttributes

@available(macOS 10.11, *)
public typealias CocoaCollectionViewInvalidationContext               = NSCollectionViewLayoutInvalidationContext

@available(macOS 10.11, *)
public typealias CocoaCollectionViewFlowLayout                        = NSCollectionViewFlowLayout

@available(macOS 10.11, *)
public typealias CocoaCollectionViewGridLayout                        = NSCollectionViewGridLayout

@available(macOS 10.11, *)
public typealias CocoaCollectionViewTransitionLayout                  = NSCollectionViewTransitionLayout

@available(macOS 10.11, *)
public typealias CocoaCollectionViewDelegateFlowLayout                = NSCollectionViewDelegateFlowLayout

#endif

// MARK: - Compositional

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutAnchor = NSCollectionLayoutAnchor

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutBoundarySupplementaryItem = NSCollectionLayoutBoundarySupplementaryItem

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutDecorationItem = NSCollectionLayoutDecorationItem

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutDimension = NSCollectionLayoutDimension

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutEdgeSpacing = NSCollectionLayoutEdgeSpacing

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutEnvironment = NSCollectionLayoutEnvironment

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutGroup = NSCollectionLayoutGroup

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutGroupCustomItem = NSCollectionLayoutGroupCustomItem

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutItem = NSCollectionLayoutItem

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutSection = NSCollectionLayoutSection

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutSize = NSCollectionLayoutSize

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutSpacing = NSCollectionLayoutSpacing

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutSupplementaryItem = NSCollectionLayoutSupplementaryItem

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaCollectionLayoutVisibleItem = NSCollectionLayoutVisibleItem

@available(macOS 10.15, iOS 13.0, *)
public typealias CocoaDirectionalEdgeInsets = NSDirectionalEdgeInsets

#if os(iOS)

@available(iOS 13.0, *)
public typealias CocoaCollectionLayoutSectionOrthogonalScrollingBehavior = UICollectionLayoutSectionOrthogonalScrollingBehavior

@available(iOS 13.0, *)
public typealias CocoaCollectionViewCompositionalLayout = UICollectionViewCompositionalLayout

@available(iOS 13.0, *)
public typealias CocoaCollectionViewCompositionalLayoutConfiguration = UICollectionViewCompositionalLayoutConfiguration

@available(iOS 13.0, *)
public typealias CocoaCollectionViewCompositionalLayoutSectionProvider = UICollectionViewCompositionalLayoutSectionProvider

#elseif os(macOS)

@available(macOS 10.15, *)
public typealias CocoaCollectionLayoutSectionOrthogonalScrollingBehavior = NSCollectionLayoutSectionOrthogonalScrollingBehavior

@available(macOS 10.15, *)
public typealias CocoaCollectionViewCompositionalLayout = NSCollectionViewCompositionalLayout

@available(macOS 10.15, *)
public typealias CocoaCollectionViewCompositionalLayoutConfiguration = NSCollectionViewCompositionalLayoutConfiguration

@available(macOS 10.15, *)
public typealias CocoaCollectionViewCompositionalLayoutSectionProvider = NSCollectionViewCompositionalLayoutSectionProvider

#endif

@available(macOS 10.15, iOS 13.0, *)
extension NSDirectionalEdgeInsets {
    public static var zero: NSDirectionalEdgeInsets {
        return NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
    }
}
