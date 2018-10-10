public extension Flag {
    public var image: UIImage? {
        defer { UIGraphicsEndImageContext() }
        UIGraphicsBeginImageContextWithOptions(Flag.size, false, 0)
        UIColor.white.set()
        let rect = CGRect(origin: .zero, size: Flag.size)
        UIRectFill(CGRect(origin: .zero, size: Flag.size))
        emoji.draw(in: rect, withAttributes: [.font: UIFont.systemFont(ofSize: Flag.size.height)])
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
