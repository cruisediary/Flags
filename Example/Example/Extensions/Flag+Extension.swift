//
//  Flag+Extension.swift
//  Example
//
//  Created by Cruz on 12/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import Flags

extension Flag {
    var countryName: String? {
        return Locale(identifier: "en_US").localizedString(forRegionCode: countryCode)
    }

    var emojiWithName: String {
        guard let countryName = countryName else { return emoji }
        return emoji + " " + countryName
    }
}
