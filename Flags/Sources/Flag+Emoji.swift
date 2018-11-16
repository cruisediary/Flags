//
//  Flag+Emoji.swift
//  Flags
//
//  Created by Cruz on 10/10/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

public extension Flag {
    public var emoji: String {
        let base = 127397
        let usv = countryCode.utf16
            .map { base + Int($0) }
            .compactMap(UnicodeScalar.init)
            .reduce(String.UnicodeScalarView()) { $0 + [$1] }

        return String(usv)
    }
}
