import UIKit

enum LayerStyles: String, CaseIterable {
    case gray = "Gray"
    case multicolor = "Multicolor"
    case borders = "Borders"
    case bordersGreen = "Borders Green"

    var layers: [CALayer] {
        switch self { 
        case .gray:
            var layers: [CALayer] = []        
            let fillLayer0 = CAGradientLayer()
            fillLayer0.startPoint = CGPoint(x: 0, y: 0)
            fillLayer0.endPoint = CGPoint(x: 1, y: 1)
            fillLayer0.locations = [
                NSNumber(value: 0),
                NSNumber(value: 1),
                
            ]
            fillLayer0.type = .axial
            fillLayer0.colors = [
                UIColor(red: 0.4862745098039216, green: 0.4862745098039216, blue: 0.4862745098039216, alpha: 1).cgColor,
                UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1).cgColor,
                
            ]
            layers.append(fillLayer0)        
            let borderLayer0 = CALayer()
            borderLayer0.borderColor = UIColor(red: 0.4862745098039216, green: 0.4862745098039216, blue: 0.4862745098039216, alpha: 1).cgColor
            borderLayer0.borderWidth = 3
            layers.append(borderLayer0)
            return layers
        case .multicolor:
            var layers: [CALayer] = []        
            let fillLayer0 = CAGradientLayer()
            fillLayer0.startPoint = CGPoint(x: 0, y: 0)
            fillLayer0.endPoint = CGPoint(x: 0.9974398226351351, y: 0.9974398226351351)
            fillLayer0.locations = [
                NSNumber(value: 0),
                NSNumber(value: 0.32772909628378377),
                NSNumber(value: 0.7323690878378378),
                NSNumber(value: 1),
                
            ]
            fillLayer0.type = .axial
            fillLayer0.colors = [
                UIColor(red: 0.1999999999999997, green: 0.07843137254901959, blue: 0.803921568627451, alpha: 1).cgColor,
                UIColor(red: 0.1843137254901961, green: 0.5450980392156862, blue: 0.3882352941176471, alpha: 1).cgColor,
                UIColor(red: 0.6078431372549019, green: 0.1450980392156863, blue: 0.08235294117647059, alpha: 1).cgColor,
                UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor,
                
            ]
            layers.append(fillLayer0)        
            let borderLayer0 = CALayer()
            borderLayer0.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
            borderLayer0.borderWidth = 3
            layers.append(borderLayer0)
            return layers
        case .borders:
            var layers: [CALayer] = []        
            let borderLayer0 = CALayer()
            borderLayer0.borderColor = UIColor(red: 0.1999999999999997, green: 0.07843137254901959, blue: 0.803921568627451, alpha: 1).cgColor
            borderLayer0.borderWidth = 3
            layers.append(borderLayer0)
            return layers
        case .bordersGreen:
            var layers: [CALayer] = []        
            let borderLayer0 = CALayer()
            borderLayer0.borderColor = UIColor(red: 0.1843137254901961, green: 0.5450980392156862, blue: 0.3882352941176471, alpha: 1).cgColor
            borderLayer0.borderWidth = 3
            layers.append(borderLayer0)
            return layers
        }
    }
}
