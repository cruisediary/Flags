//
//  Flag+Country.swift
//  Flags
//
//  Created by Cruz on 17/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit

public extension Flag {
    static var locale: Locale = Locale.current

    public var countryName: String? {
        return Flag.locale.localizedString(forRegionCode: countryCode)
    }
}
