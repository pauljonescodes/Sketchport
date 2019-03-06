@import 'utils.js'
@import 'JSONToSwiftUtils.h'

function SwiftLayersFileForLayerStyles(layerStyles) {
    var swiftLayersFile = `import UIKit

enum LayerStyles: String, CaseIterable {
{{cases}}
    var layers: [CALayer] {
        switch self { {{caseEntries}}
        }
    }
}
`
    var cases = ""
    var caseEntries = ""
    for (layerStyleIndex in layerStyles) {
        var layerStyle = layerStyles[layerStyleIndex]
        var caseName = makeVariableName(layerStyle.name)
        cases += `    case ${caseName} = "${layerStyle.name}"\n`
        caseEntries += caseEntryFromLayerStyleValue(layerStyle)
    }

    return swiftLayersFile.replace(/{{cases}}/g, cases).replace(/{{caseEntries}}/g, caseEntries)
}

function caseEntryFromLayerStyleValue(layerStyle) {
    var caseName = makeVariableName(layerStyle.name)
    var layerStyleValue = layerStyle.value
    var fillDictionaries = layerStyleValue.fills
    var borderDictionaries = layerStyleValue.borders

    var caseEntry = `
        case .${caseName}:
            var layers: [CALayer] = []`

    for (fillIndex in fillDictionaries) {
        var fillDictionary = fillDictionaries[fillIndex]
        var fillEntry = fillEntryFromFillDictionary(fillDictionary, fillIndex)
        caseEntry += `        ${fillEntry}`
    }

    for (borderIndex in borderDictionaries) {
        var borderDictionary = borderDictionaries[borderIndex]
        var borderEntry = borderEntryFromBorderDictionary(borderDictionary, borderIndex)
        caseEntry += `        ${borderEntry}`
    }

    caseEntry += `
            return layers`

    return caseEntry
}

function fillEntryFromFillDictionary(fillDictionary, index) {
    var layerName = `fillLayer${index}`
    var gradientDictionary = fillDictionary.gradient

    if (gradientDictionary != null) {
        return `
            let ${layerName} = CAGradientLayer()
            ${layerName}.startPoint = ${CGPointFromDictionary(gradientDictionary.from)}
            ${layerName}.endPoint = ${CGPointFromDictionary(gradientDictionary.to)}
            ${layerName}.locations = [
                ${ NSNumbersPositionsFromFillDictionaryStops(gradientDictionary.stops) }
            ]
            ${layerName}.type = .axial
            ${layerName}.colors = [
                ${UIColorsFromFillDictionaryStops(gradientDictionary.stops)}
            ]
            layers.append(${layerName})`
    } else {
        return `
            let ${layerName} = CALayer()
            ${layerName}.backgroundColor = ${MSColorAssetToUIColor(fillDictionary.color)}.cgColor
            layers.append(${layerName})`
    }
}

function CGPointFromDictionary(fillDictionary) {
    return `CGPoint(x: ${fillDictionary.x}, y: ${fillDictionary.y})`
}

function UIColorsFromFillDictionaryStops(stops) {
    var colors = ""
    for (stopIndex in stops) {
        var stop = stops[stopIndex]
        var colorDictionary = stop.color
        colors += `${MSColorAssetToUIColor(colorDictionary)}.cgColor,\n                `
    }
    return colors
}

function NSNumbersPositionsFromFillDictionaryStops(stops) {
    var colors = ""
    for (stopIndex in stops) {
        var stop = stops[stopIndex]
        var position = stop.position
        colors += `NSNumber(value: ${position}),\n                `
    }
    return colors
}


function borderEntryFromBorderDictionary(borderDictionary, index) {
    var layerName = `borderLayer${index}`
    return `
            let ${layerName} = CALayer()
            ${layerName}.borderColor = ${MSColorAssetToUIColor(borderDictionary.color)}.cgColor
            ${layerName}.borderWidth = ${borderDictionary.thickness}
            layers.append(${layerName})`
}