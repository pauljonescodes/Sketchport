@import "utils.js"

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