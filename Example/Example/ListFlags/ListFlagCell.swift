//
//  ListFlagCell.swift
//  Example
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit
import HypeUI

final class ListFlagCell: UICollectionViewCell {
    static let identifier = "ListFlagCell"

    @Behavior var flag: String?
    @Behavior var name: String?

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white

        contentView.addSubviewWithFit(
            HStack(alignment: .center, spacing: 10) {
                Text()
                    .foregroundColor(UIColor.black)
                    .font(UIFont.boldSystemFont(ofSize: 14.0))
                    .textAligned(.left)
                    .linked($flag, keyPath: \.text)
                Text()
                    .foregroundColor(UIColor.black)
                    .font(UIFont.systemFont(ofSize: 16, weight: .medium))
                    .textAligned(.left)
                    .linked($name, keyPath: \.text)
                Spacer()
            }
            .padding(.horizontal, 20)
        )
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
