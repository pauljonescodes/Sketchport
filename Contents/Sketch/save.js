@import "util.js";

function save(context) {

    var app = NSApp.delegate()
    var version = context.plugin.version().UTF8String()
    var documentData = context.document.documentData() // MSDocumentData
    var assets = documentData.assets() // MSAssetCollection

    var save = NSSavePanel.savePanel()
    save.setNameFieldStringValue("untitled.json")
    save.setAllowedFileTypes(["json"])
    save.setAllowsOtherFileTypes(false)
    save.setExtensionHidden(false)

    if (save.runModal()) {
        var textStyles = []
        var layerTextStyles = documentData.layerTextStyles() // MSSharedTextStyleContainer
        var layerTextStylesObjects = layerTextStyles.objects() // [MSSharedStyle]
        for (var i = 0; i < layerTextStylesObjects.count(); i++) {
            var sharedStyle = layerTextStylesObjects.objectAtIndex(i) // MSSharedStyle
            var style = sharedStyle.style() // MSStyle
            var textStyle = style.textStyle() // MSTextStyle
            var textStyleAttributes = textStyle.attributes()

            var color = textStyleAttributes.MSAttributedStringColorAttribute // MSImmutableColor
            var fontAttributes = textStyleAttributes.NSFont.fontDescriptor().fontAttributes()

            // NSStrikethrough, NSUnderline, MSAttributedStringTextTransformAttribute, NSFont, NSParagraphStyle, NSColor, NSLigature, NSKern
            textStyles.push({
                "color": MSColorToDictionary(color),
                "fontName": String(fontAttributes.objectForKey(NSFontNameAttribute)),
                "fontSize": fontAttributes.objectForKey(NSFontSizeAttribute) * 1,
            })
        }

        var layerStyles = MSSharedStylesToArray(documentData.layerStyles().objects())
        var colors = MSColorAssetsToArray(assets.colorAssets())

        var fileData = {
            "colors": colors,
            "textStyles": textStyles,
            "layerStyles": layerStyles
        };

        var filePath = save.URL().path();
        var file = NSString.stringWithString(JSON.stringify(fileData, null, 2));

        file.writeToFile_atomically_encoding_error(filePath, true, NSUTF8StringEncoding, null);
    }
}