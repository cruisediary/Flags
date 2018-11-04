//
//  ListFlagsModel.swift
//  Example
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit
import Flags
import IGListKit
import RxCocoa
import RxSwift

protocol FlagType {
    var countryCode: String { get }
}

extension Flag: FlagType {}

class FlagDiffable: ListDiffable {
    var flag: FlagType
    var countryCode: String {
        return flag.countryCode
    }

    var text: String? {
        return Flag(countryCode: countryCode)?.emoji
    }

    init?(flag: FlagType?) {
        guard let flag = flag else { return nil }
        self.flag = flag
    }

    func diffIdentifier() -> NSObjectProtocol {
        return countryCode as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if let flag = object as? FlagDiffable {
            return countryCode == flag.countryCode
        }

        return self === object
    }
}

// RxIGListKit
final class DataSource: NSObject, ListAdapterDataSource, RxListAdapterDataSource {
    typealias Element = [FlagDiffable]

    var elements: Element = []

    func listAdapter(_ adapter: ListAdapter, observedEvent: Event<[FlagDiffable]>) {
        if case .next(let flags) = observedEvent {
            elements = flags
            adapter.performUpdates(animated: true)
        }
    }

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return elements as [ListDiffable]
    }

    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return ListFlagSectionController()
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
