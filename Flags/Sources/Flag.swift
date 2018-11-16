//
//  Flag.swift
//  Flags
//
//  Created by Cruz on 10/10/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

public struct Flag {
    public let countryCode: String
    
    public init?(countryCode: String) {
        guard NSLocale.isoCountryCodes.contains(countryCode.uppercased()) else { return nil }
        self.countryCode = countryCode.uppercased()
    }
}
