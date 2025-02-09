//
//  RadixAutoColor.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import Foundation
import SwiftUI

public enum RadixAutoColor: Equatable {

    case amber
    case blackA
    case blue
    case bronze
    case brown
    case crimson
    case cyan
    case gold
    case grass
    case gray
    case green
    case indigo
    case iris
    case jade
    case lime
    case mauve
    case mint
    case olive
    case orange
    case pink
    case plum
    case purple
    case red
    case ruby
    case sage
    case sand
    case sky
    case slate
    case teal
    case tomato
    case violet
    case whiteA
    case yellow
    case custom(String)

    /// 1st level of RadixColor
    public var background1: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "1"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "1"
                )
        }
    }

    /// 2nd level of RadixColor
    public var background2: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "2"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "2"
                )
        }
    }

    /// 3rd level of RadixColor
    public var component1: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "3"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "3"
                )
        }
    }

    /// 4th level of RadixColor
    public var component2: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "4"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "4"
                )
        }
    }

    /// 5th level of RadixColor
    public var component3: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "5"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "5"
                )
        }
    }

    /// 6th level of RadixColor
    public var border1: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "6"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "6"
                )
        }
    }

    /// 7th level of RadixColor
    public var border2: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "7"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "7"
                )
        }
    }

    /// 8th level of RadixColor
    public var border3: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "8"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "8"
                )
        }
    }

    /// 9th level of RadixColor
    public var solid1: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "9"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "9"
                )
        }
    }

    /// 10th level of RadixColor
    public var solid2: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "10"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "10"
                )
        }
    }

    /// 11th level of RadixColor
    public var text1: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "11"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "11"
                )
        }
    }

    /// 12th level of RadixColor
    public var text2: Color {
        switch self {
            case .custom(let name):
                return Color(
                    capitalizeFirstLetter(name) + "12"
                )
            default:
                return radixColorToSwift(
                    name: capitalizeFirstLetter(String(describing: self)) + "12"
                )
        }
    }

    private func capitalizeFirstLetter(_ text: String) -> String {
        return text.prefix(1).uppercased() + text.dropFirst()
    }
}
