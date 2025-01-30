//
//  Button.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/10/1403 AP.
//

import Foundation
import SwiftUI

public enum RadixButtonLayout {
    case chevron, leading, trailing
}

public enum RadixButtonVariant {
    case ghost, solid, soft, surface, outline
}

public enum RadixButtonSize {
    case small, medium, large, full, custom(CGSize)

    var dimension: CGSize {
        switch self {
            case .small:
                return .init(width: 72, height: 32)
            case .medium:
                return .init(width: 84, height: 44)
            case .large:
                return .init(width: 96, height: 56)
            case .full:
                return .init(width: .max, height: 80)
            case .custom(let size):
                return size
        }
    }
}

public enum RadixButtonRadius {
    case none, large, full

    func clipShape() -> some Shape {
        switch self {
            case .none:
                return RoundedRectangle(cornerRadius: 0)
            case .large:
                return RoundedRectangle(cornerRadius: 8)
            case .full:
                return RoundedRectangle(cornerRadius: .infinity)
        }
    }
}
