@import "utils.js"

function SwiftColorsFileForColorAssets(colorAssets) {
    var colorNamesCode = ""
    var colorCasesCode = ""
    for (colorAssetIndex in colorAssets) {
        var colorAsset = colorAssets[colorAssetIndex] || `unnamedColor${colorAssetIndex}`
        var colorAssetName = makeVariableName(colorAsset.name)
        colorNamesCode += `    case ${colorAssetName} = "${colorAsset.name}"\n`
        colorCasesCode += `        case .${colorAssetName}:
            return ${MSColorAssetToSwiftColorLiteral(colorAsset)}\n`
    }

    var swiftColorsTemplateString = `import UIKit

public enum Color: String, CaseIterable {
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
    return `#colorLiteral(red: ${colorAsset.red}, green: ${colorAsset.green}, blue: ${colorAsset.blue}, alpha: ${colorAsset.alpha})`
}

