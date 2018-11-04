public struct Flag {
    static var size = CGSize(width: 40, height: 40)
    
    public let countryCode: String
    
    public init?(countryCode: String) {
        guard NSLocale.isoCountryCodes.contains(countryCode.uppercased()) else { return nil }
        self.countryCode = countryCode.uppercased()
    }
}
