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
import RxIGListKit

protocol FlagType {
    var emoji: String { get }
    var countryCode: String { get }
    var countryName: String? { get }
}

extension Flag: FlagType {}

class FlagDiffable: SectionModelDiffable {
    var flag: FlagType
    var countryCode: String {
        return flag.countryCode
    }

    var text: String? {
        return Flag(countryCode: countryCode)?.emojiWithName
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
