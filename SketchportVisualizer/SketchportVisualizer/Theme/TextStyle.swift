import UIKit

public enum TextStyle: String, CaseIterable {
    case display = "Display"
    case headline1 = "Headline 1"
    case headline2 = "Headline 2"
    case headline3 = "Headline 3"
    case headline4 = "Headline 4"
    case headline5 = "Headline 5"
    case headline6 = "Headline 6"
    case subtitle = "Subtitle"
    case body = "Body"
    case overline = "Overline"
    case button = "Button"
    case caption = "Caption"

    public func attributedString(string: String?) -> NSAttributedString {
        return NSAttributedString(string: string ?? "", attributes: textAttributes.dictionary)
    }
    
    private var textAttributes: TextAttributes {
        switch self { 
        case .display:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 58
          paragraphStyle.maximumLineHeight = 58
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Bold", fontSize: 44, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .headline1:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 42
          paragraphStyle.maximumLineHeight = 42
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Medium", fontSize: 32, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .headline2:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 27
          paragraphStyle.maximumLineHeight = 27
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Bold", fontSize: 20, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .headline3:
          let color = UIColor(red: 0.137, green: 0.122, blue: 0.125, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 25
          paragraphStyle.maximumLineHeight = 25
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Bold", fontSize: 20, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .headline4:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 24
          paragraphStyle.maximumLineHeight = 24
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Bold", fontSize: 18, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .headline5:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 19
          paragraphStyle.maximumLineHeight = 19
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Bold", fontSize: 14, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .headline6:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 14
          paragraphStyle.maximumLineHeight = 14
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Medium", fontSize: 10, color: color, kern: 2, paragraphStyle: paragraphStyle)
        case .subtitle:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 4) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 21
          paragraphStyle.maximumLineHeight = 21
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Medium", fontSize: 16, color: color, kern: 0.5, paragraphStyle: paragraphStyle)
        case .body:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 0) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 26
          paragraphStyle.maximumLineHeight = 26
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Medium", fontSize: 18, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .overline:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 0) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 19
          paragraphStyle.maximumLineHeight = 19
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Bold", fontSize: 14, color: color, kern: 1, paragraphStyle: paragraphStyle)
        case .button:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 0) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 22
          paragraphStyle.maximumLineHeight = 22
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Bold", fontSize: 16, color: color, kern: 0, paragraphStyle: paragraphStyle)
        case .caption:
          let color = UIColor(red: 0.1725490196078431, green: 0.1725490196078431, blue: 0.1725490196078431, alpha: 1)
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = 0
          paragraphStyle.paragraphSpacing = 0
          paragraphStyle.alignment = NSTextAlignment(rawValue: 0) ?? .left
          paragraphStyle.headIndent = 0
          paragraphStyle.tailIndent = 0
          paragraphStyle.firstLineHeadIndent = 0
          paragraphStyle.minimumLineHeight = 19
          paragraphStyle.maximumLineHeight = 19
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: 0) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: -1) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = 0
          paragraphStyle.paragraphSpacingBefore = 0
          paragraphStyle.hyphenationFactor = 0
          paragraphStyle.defaultTabInterval = 0
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(fontName: "Futura-Medium", fontSize: 14, color: color, kern: 0, paragraphStyle: paragraphStyle)
        }
    }
}

struct TextAttributes {
    let fontName : String
    let fontSize : CGFloat
    let color : UIColor
    let kern : CGFloat
    let paragraphStyle : NSMutableParagraphStyle
    
    init(fontName: String, fontSize: CGFloat, color: UIColor, kern: CGFloat, paragraphStyle: NSMutableParagraphStyle) {
        self.kern = kern
        self.fontName = fontName
        self.fontSize = fontSize
        self.color = color
        self.paragraphStyle = paragraphStyle
    }
    
    var dictionary: [NSAttributedString.Key: Any] {
        return [
            NSAttributedString.Key.font: UIFont(name: fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize),
            NSAttributedString.Key.kern: kern,
            NSAttributedString.Key.paragraphStyle: paragraphStyle,
            NSAttributedString.Key.foregroundColor: color,
        ]
    }
}
