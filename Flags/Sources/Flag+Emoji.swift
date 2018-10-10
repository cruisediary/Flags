public extension Flag {
    public var emoji: String {
        let base = 127397
        var usv = String.UnicodeScalarView()
        countryCode.utf16.forEach {
            if let unicode = UnicodeScalar(base + Int($0)) {
                usv.append(unicode)
            }
        }
        return String(usv)
    }
}
