@import "utils.js"

function MSColorAssetToSwiftColorLiteralEntry(colorAsset) {
    var red = colorAsset["red"]
    var green = colorAsset["green"]
    var blue = colorAsset["blue"]
    var alpha = colorAsset["alpha"]
    var name = camelize(colorAsset["name"]) || `${rgbToHex(red, green, blue)}`.substr(1)
    var entry = `public static let ${name} = #colorLiteral(red: ${red}, green: ${green}, blue: ${blue}, alpha: ${alpha}).colorName`
    return entry
}

function MSColorAssetToSwiftColorComment(colorAsset) {
	var red = colorAsset["red"]
    var green = colorAsset["green"]
    var blue = colorAsset["blue"]
    var alpha = colorAsset["alpha"]
    return `${rgbToHex(red, green, blue)} @ ${alpha}`
}

function MSColorAssetToUIColor(colorAsset) {
    var red = colorAsset["red"]
    var green = colorAsset["green"]
    var blue = colorAsset["blue"]
    var alpha = colorAsset["alpha"]
    return `UIColor(red: ${red}, green: ${green}, blue: ${blue}, alpha: ${alpha})`
}