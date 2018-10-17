public struct Flag {
    static var size = CGSize(width: 40, height: 40)
    
    let countryCode: String
    
    public init?(countryCode: String) {
        guard NSLocale.isoCountryCodes.contains(countryCode) else { return nil }
        self.countryCode = countryCode
    }
}
