function NSFontToDictionary(nsFont) {
    var fontAttributes = nsFont.fontDescriptor().fontAttributes()
    return {
        "fontName": String(fontAttributes.objectForKey(NSFontNameAttribute)),
        "fontSize": fontAttributes.objectForKey(NSFontSizeAttribute) * 1,
    }
}

function NSTextTabToDictionary(tabStop) { // NSTextTab
    return {
        "alignment": tabStop.alignment() * 1,
        "location": tabStop.location() * 1,
    }
}

function NSTextTabsToArray(tabStops) { // [NSTextTab] 
    var dictionaries = []
    for (tabStopIndex in tabStops) {
        dictionaries.push(NSTextTabToDictionary(tabStops[tabStopIndex]))
    }
    return dictionaries
}

function NSParagraphStyleToDictionary(paragraphStyle) {
    var paragraphyStyleDictionary = {}
    paragraphyStyleDictionary["lineSpacing"] = paragraphStyle.lineSpacing() * 1 // CGFloat
    paragraphyStyleDictionary["paragraphSpacing"] = paragraphStyle.paragraphSpacing() * 1 // CGFloat 
    paragraphyStyleDictionary["alignment"] = paragraphStyle.alignment() * 1 // NSTextAlignment
    paragraphyStyleDictionary["headIndent"] = paragraphStyle.headIndent() * 1 // CGFloat 
    paragraphyStyleDictionary["tailIndent"] = paragraphStyle.tailIndent() * 1 // CGFloat 
    paragraphyStyleDictionary["firstLineHeadIndent"] = paragraphStyle.firstLineHeadIndent() * 1 // CGFloat 
    paragraphyStyleDictionary["minimumLineHeight"] = paragraphStyle.minimumLineHeight() * 1 // CGFloat 
    paragraphyStyleDictionary["maximumLineHeight"] = paragraphStyle.maximumLineHeight() * 1 // CGFloat 
    paragraphyStyleDictionary["lineBreakMode"] = paragraphStyle.lineBreakMode() * 1 // NSLineBreakMode
    paragraphyStyleDictionary["baseWritingDirection"] = paragraphStyle.baseWritingDirection() * 1 // NSWritingDirection
    paragraphyStyleDictionary["lineHeightMultiple"] = paragraphStyle.lineHeightMultiple() * 1 // CGFloat 
    paragraphyStyleDictionary["paragraphSpacingBefore"] = paragraphStyle.paragraphSpacingBefore() * 1 // CGFloat 
    paragraphyStyleDictionary["hyphenationFactor"] = paragraphStyle.hyphenationFactor() * 1 // Float
    paragraphyStyleDictionary["tabStops"] = NSTextTabsToArray(paragraphStyle.tabStops())
    paragraphyStyleDictionary["defaultTabInterval"] = paragraphStyle.defaultTabInterval() * 1 // CGFloat 
    paragraphyStyleDictionary["allowsDefaultTighteningForTruncation"] = paragraphStyle.allowsDefaultTighteningForTruncation() * 1 // Bool 
    paragraphyStyleDictionary["tighteningFactorForTruncation"] = paragraphStyle.tighteningFactorForTruncation() * 1 // Float
    paragraphyStyleDictionary["headerLevel"] = paragraphStyle.headerLevel() * 1 // Int
    return paragraphyStyleDictionary
}