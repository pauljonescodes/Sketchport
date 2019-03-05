@import 'utils.js'

function SwiftTextStyleFileForTextStyles(textStyles) {
    var dictionaryType = "[NSAttributedString.Key: Any]"
    var cgFloat = "CGFloat"
    var swiftTextStylesTemplateString = `import UIKit

public enum TextStyle: String, CaseIterable {
{{cases}}
    public func attributedString(string: String?) -> NSAttributedString {
        return NSAttributedString(string: string ?? "", attributes: textAttributes.dictionary)
    }
    
    private var textAttributes: TextAttributes {
        switch self { {{caseEntries}}
        }
    }
}

struct TextAttributes {
    let font : UIFont
    let color : UIColor
    let kern : ${cgFloat}
    let paragraphStyle : NSMutableParagraphStyle
    
    init(font: UIFont, color: UIColor, kern: CGFloat, paragraphStyle: NSMutableParagraphStyle) {
        self.kern = kern
        self.font = font
        self.color = color
        self.paragraphStyle = paragraphStyle
    }
    
    var dictionary: ${dictionaryType} {
        return [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.kern: kern,
            NSAttributedString.Key.paragraphStyle: paragraphStyle,
            NSAttributedString.Key.foregroundColor: color,
        ]
    }
}
`
    var cases = ""
    var caseEntries = ""
    for (textStyleIndex in textStyles) {
      var textStyle = textStyles[textStyleIndex]
      var caseName = camelize(textStyle.name)
      cases += `    case ${caseName}\n`
      caseEntries += caseEntryFromTextStyle(textStyle)
    }
    return swiftTextStylesTemplateString.replace(/{{cases}}/g, cases).replace(/{{caseEntries}}/g, caseEntries)
}

function caseEntryFromTextStyle(textStyle) {
  var textStyleValue = textStyle.value.textStyle
  var paragraphStyle = textStyleValue.paragraphStyle
  var color = textStyleValue.attributedStringColorAttribute
  return `
        case .${camelize(textStyle.name)}:
          let font = UIFont(name: "${textStyleValue.font.fontName}", size: ${textStyleValue.font.fontSize * 1})!
          let color = UIColor(red: ${color.red}, green: ${color.green}, blue: ${color.blue}, alpha: ${color.alpha})
          let paragraphStyle = NSMutableParagraphStyle()
          paragraphStyle.lineSpacing = ${paragraphStyle.lineSpacing}
          paragraphStyle.paragraphSpacing = ${paragraphStyle.paragraphSpacing}
          paragraphStyle.alignment = NSTextAlignment(rawValue: ${paragraphStyle.alignment}) ?? .left
          paragraphStyle.headIndent = ${paragraphStyle.headIndent}
          paragraphStyle.tailIndent = ${paragraphStyle.tailIndent}
          paragraphStyle.firstLineHeadIndent = ${paragraphStyle.firstLineHeadIndent}
          paragraphStyle.minimumLineHeight = ${paragraphStyle.minimumLineHeight}
          paragraphStyle.maximumLineHeight = ${paragraphStyle.maximumLineHeight}
          paragraphStyle.lineBreakMode = NSLineBreakMode(rawValue: ${paragraphStyle.lineBreakMode}) ?? .byWordWrapping
          paragraphStyle.baseWritingDirection = NSWritingDirection(rawValue: ${paragraphStyle.baseWritingDirection}) ?? .leftToRight
          paragraphStyle.lineHeightMultiple = ${paragraphStyle.lineHeightMultiple}
          paragraphStyle.paragraphSpacingBefore = ${paragraphStyle.paragraphSpacingBefore}
          paragraphStyle.hyphenationFactor = ${paragraphStyle.hyphenationFactor}
          paragraphStyle.defaultTabInterval = ${paragraphStyle.defaultTabInterval}
          paragraphStyle.allowsDefaultTighteningForTruncation = true
          return TextAttributes(font: font, color: color, kern: ${textStyleValue.kern}, paragraphStyle: paragraphStyle)`
}