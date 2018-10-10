public struct Flag {
    static var size = CGSize(width: 40, height: 40)
    
    let countryCode: String
    
    init?(countryCode: String) {
        guard Locale.commonISOCurrencyCodes.contains(countryCode) else { return nil }
        self.countryCode = countryCode
    }
}
