public extension Flag {
    public func image(size: CGSize) -> UIImage? {
        defer { UIGraphicsEndImageContext() }
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.white.set()
        let rect = CGRect(origin: .zero, size: size)
        UIRectFill(CGRect(origin: .zero, size: size))
        emoji.draw(in: rect, withAttributes: [.font: UIFont.systemFont(ofSize: size.height)])
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
