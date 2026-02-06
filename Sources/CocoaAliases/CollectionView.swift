#if canImport(Darwin) && canImport(ObjectiveC)
#if canImport(UIKit)
import UIKit

@available(watchOS, unavailable)
public typealias CocoaCollectionView                                                     = UICollectionView

@available(watchOS, unavailable)
public typealias CocoaCollectionViewCell                                                 = UICollectionViewCell

@available(watchOS, unavailable)
public typealias CocoaCollectionReusableView                                             = UICollectionReusableView

@available(iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionViewDiffableDataSource                                   = UICollectionViewDiffableDataSource

@available(iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionViewDiffableDataSourceReference                          = UICollectionViewDiffableDataSourceReference

@available(watchOS, unavailable)
public typealias CocoaCollectionViewDiffableDataSourceReferenceCellProvider              = UICollectionViewDiffableDataSourceReferenceCellProvider

@available(watchOS, unavailable)
public typealias CocoaCollectionViewDiffableDataSourceReferenceSupplementaryViewProvider = UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider

@available(watchOS, unavailable)
public typealias CocoaCollectionViewPrefetching                                          = UICollectionViewDataSourcePrefetching

#elseif canImport(AppKit)
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

#if canImport(UIKit)

@available(watchOS, unavailable)
public typealias CocoaCollectionViewDataSource                        = UICollectionViewDataSource

@available(watchOS, unavailable)
public typealias CocoaCollectionViewDelegate                          = UICollectionViewDelegate

@available(watchOS, unavailable)
public typealias CocoaCollectionViewLayout                            = UICollectionViewLayout

@available(watchOS, unavailable)
public typealias CocoaCollectionViewLayoutAttributes                  = UICollectionViewLayoutAttributes

@available(watchOS, unavailable)
public typealias CocoaCollectionViewInvalidationContext               = UICollectionViewLayoutInvalidationContext

@available(watchOS, unavailable)
public typealias CocoaCollectionViewFlowLayout                        = UICollectionViewFlowLayout

@available(watchOS, unavailable)
public typealias CocoaCollectionViewTransitionLayout                  = UICollectionViewTransitionLayout

@available(watchOS, unavailable)
public typealias CocoaCollectionViewDelegateFlowLayout                = UICollectionViewDelegateFlowLayout

#elseif canImport(AppKit)
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
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutAnchor = NSCollectionLayoutAnchor

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutBoundarySupplementaryItem = NSCollectionLayoutBoundarySupplementaryItem

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutDecorationItem = NSCollectionLayoutDecorationItem

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutDimension = NSCollectionLayoutDimension

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutEdgeSpacing = NSCollectionLayoutEdgeSpacing

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutEnvironment = NSCollectionLayoutEnvironment

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutGroup = NSCollectionLayoutGroup

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutGroupCustomItem = NSCollectionLayoutGroupCustomItem

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutItem = NSCollectionLayoutItem

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutSection = NSCollectionLayoutSection

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutSize = NSCollectionLayoutSize

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutSpacing = NSCollectionLayoutSpacing

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutSupplementaryItem = NSCollectionLayoutSupplementaryItem

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutVisibleItem = NSCollectionLayoutVisibleItem

@available(macOS 10.15, iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaDirectionalEdgeInsets = NSDirectionalEdgeInsets

#if canImport(UIKit)

@available(iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionLayoutSectionOrthogonalScrollingBehavior = UICollectionLayoutSectionOrthogonalScrollingBehavior

@available(iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionViewCompositionalLayout = UICollectionViewCompositionalLayout

@available(iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionViewCompositionalLayoutConfiguration = UICollectionViewCompositionalLayoutConfiguration

@available(iOS 13.0, *)
@available(watchOS, unavailable)
public typealias CocoaCollectionViewCompositionalLayoutSectionProvider = UICollectionViewCompositionalLayoutSectionProvider

#elseif canImport(AppKit)

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
#endif
