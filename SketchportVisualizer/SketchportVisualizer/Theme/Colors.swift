import UIKit

public enum Color: String, CaseIterable {
    case myBlack
    case myGray
    case myWhite
    case myBlue
    case myGreen
    case myRed

    var color: UIColor {
        switch self {
        case .myBlack:
            return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        case .myGray:
            return #colorLiteral(red: 0.4862745098039216, green: 0.4862745098039216, blue: 0.4862745098039216, alpha: 1)
        case .myWhite:
            return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .myBlue:
            return #colorLiteral(red: 0.1999999999999997, green: 0.07843137254901959, blue: 0.803921568627451, alpha: 1)
        case .myGreen:
            return #colorLiteral(red: 0.1843137254901961, green: 0.5450980392156862, blue: 0.3882352941176471, alpha: 1)
        case .myRed:
            return #colorLiteral(red: 0.6078431372549019, green: 0.1450980392156863, blue: 0.08235294117647059, alpha: 1)

        }
    }
}
