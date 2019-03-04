@import "SketchToJSONUtils.js"
@import "JSONToSwiftUtils.js"
@import "SwiftColorsFileForColorAssets.js"
@import "SwiftTextStyleFileForTextStyles.js"

function save(context) {
    var save = NSSavePanel.savePanel()
    save.setNameFieldStringValue("untitled.json")
    save.setAllowedFileTypes(["json"])
    save.setAllowsOtherFileTypes(false)
    save.setExtensionHidden(false)

    if (save.runModal()) {
        var documentDataDictionary = MSDocumentDataToDictionary(context.document.documentData())
        var file = NSString.stringWithString(JSON.stringify(documentDataDictionary, null, 2))
        file.writeToFile_atomically_encoding_error(save.URL().path(), true, NSUTF8StringEncoding, null)
    }
}

function swift(context) {
    var openPanel = NSOpenPanel.openPanel()
    openPanel.setAllowsMultipleSelection(false)
    openPanel.setCanChooseDirectories(true)
    openPanel.setCanCreateDirectories(true)
    openPanel.setCanChooseFiles(false)

    if (openPanel.runModal()) {
        var documentDataDictionary = MSDocumentDataToDictionary(context.document.documentData())
        
        var colorAssets = documentDataDictionary["assets"]["colorAssets"]
        var colorFile = NSString.stringWithString(SwiftColorsFileForColorAssets(colorAssets))
        colorFile.writeToFile_atomically_encoding_error(`${openPanel.URL().path()}/Colors.swift`, true, NSUTF8StringEncoding, null)

        var textStyles = documentDataDictionary["layerTextStyles"]
        var textStylesFile = NSString.stringWithString(SwiftTextStyleFileForTextStyles(textStyles))
        textStylesFile.writeToFile_atomically_encoding_error(`${openPanel.URL().path()}/TextStyle.swift`, true, NSUTF8StringEncoding, null)
    }
}


