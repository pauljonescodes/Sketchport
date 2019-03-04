function SwiftColorsFileForColorAssets(colorAssets) {
    var colorAssetsCodeEntries = ""
    for (x in colorAssets) {
        // colorAssetsCodeEntries += `  \/\/ ${ MSColorAssetToSwiftColorComment(colorAssets[x]) } \n`
        colorAssetsCodeEntries += `  ${ MSColorAssetToSwiftColorLiteralEntry(colorAssets[x]) } \n`
    }

    var swiftColorsTemplateString = `
\/\/ swiftlint:disable all

#if os(OSX)
  import AppKit.NSColor
  public typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  public typealias Color = UIColor
#endif

\/\/ swiftlint:disable superfluous_disable_command
\/\/ swiftlint:disable file_length

\/\/ MARK: - Colors

\/\/ swiftlint:disable identifier_name line_length type_body_length
public struct ColorName {
  public let rgbaValue: UInt32
  public var color: Color { return Color(named: self) }
{{colors}}
}
\/\/ swiftlint:enable identifier_name line_length type_body_length

\/\/ MARK: - Implementation Details

\/\/ swiftlint:disable operator_usage_whitespace
public extension Color {

  var colorName: ColorName {
    var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
    getRed(&r, green: &g, blue: &b, alpha: &a)
    let rgba: UInt32 = 
        (UInt32)(max(r, 0) * 255) << 24 | 
        (UInt32)(max(g, 0) * 255) << 16 | 
        (UInt32)(max(b, 0) * 255) << 8 | 
        (UInt32)(max(a, 0) * 255) << 0
    return ColorName(rgbaValue: rgba)
  }

  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
\/\/ swiftlint:enable operator_usage_whitespace

public extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
`
    return swiftColorsTemplateString.replace(/{{colors}}/g, colorAssetsCodeEntries)
}