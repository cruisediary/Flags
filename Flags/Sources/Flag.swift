public struct Flag {
    
    public let countryCode: String
    
    public init?(countryCode: String) {
        guard NSLocale.isoCountryCodes.contains(countryCode.uppercased()) else { return nil }
        self.countryCode = countryCode.uppercased()
    }
}
