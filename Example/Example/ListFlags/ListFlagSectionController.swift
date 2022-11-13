//
//  ListFlagSectionController.swift
//  Example
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit
import Flags
import IGListKit

class ListFlagSectionController: ListSectionController {
    var model: FlagDiffable?

    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }
        return CGSize(width: context.containerSize.width, height: 50.0)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(
            of: ListFlagCell.self,
            withReuseIdentifier: ListFlagCell.identifier,
            for: self,
            at: index) as? ListFlagCell else {
            fatalError()
        }
        cell.flag = model?.flag.emoji
        cell.name = model?.flag.countryName
        return cell
    }

    override func didUpdate(to object: Any) {
        model = object as? FlagDiffable
    }
}
