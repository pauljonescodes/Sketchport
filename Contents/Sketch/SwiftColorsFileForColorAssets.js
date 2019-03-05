@import "utils.js"

function SwiftColorsFileForColorAssets(colorAssets) {
    var colorNamesCode = ""
    var colorCasesCode = ""
    for (colorAssetIndex in colorAssets) {
        var colorAsset = colorAssets[colorAssetIndex]
        var colorAssetName = camelize(colorAsset.name)
        colorNamesCode += `    case ${colorAssetName}\n`
        colorCasesCode += `        case .${colorAssetName}:
            return ${MSColorAssetToSwiftColorLiteral(colorAsset)}\n`
    }

    var swiftColorsTemplateString = `import UIKit

public enum ColorName: String, CaseIterable {
{{colorNames}}
    var color: UIColor {
        switch self {
{{colorCases}}
        }
    }
}
`
    return swiftColorsTemplateString.replace(/{{colorNames}}/g, colorNamesCode).replace(/{{colorCases}}/g, colorCasesCode)
}

function MSColorAssetToSwiftColorLiteral(colorAsset) {
    var red = colorAsset["red"]
    var green = colorAsset["green"]
    var blue = colorAsset["blue"]
    var alpha = colorAsset["alpha"]
    var entry = `#colorLiteral(red: ${red}, green: ${green}, blue: ${blue}, alpha: ${alpha})`
    return entry
}

