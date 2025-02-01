//
//  Button.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/10/1403 AP.
//

import Foundation
import SwiftUI

public enum RadixButtonLayout {
    case icon, title, leading, trailing
}

public enum RadixButtonRadius {
    case none, large, full
}

public enum RadixButtonSize {
    case small, medium, large, custom(CGSize)

    var dimension: CGSize {
        switch self {
            case .small:
                return .init(width: 80, height: 40)
            case .medium:
                return .init(width: 100, height: 50)
            case .large:
                return .init(width: 120, height: 60)
            case .custom(let size):
                return size
        }
    }
}

public enum RadixButtonVariant {
    case custom, ghost, outline, soft, solid, surface
}
