//
//  Button.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/10/1403 AP.
//

import Foundation
import SwiftUI

public enum RadixButtonLayout {
    case none, leading, trailing
}

public enum RadixButtonSize {
    case small, medium, large, custom(CGSize)

    var dimension: CGSize {
        switch self {
            case .small:
                return .init(width: 72, height: 32)
            case .medium:
                return .init(width: 84, height: 44)
            case .large:
                return .init(width: 96, height: 56)
            case .custom(let size):
                return size
        }
    }
}

public enum RadixButtonRadius {
    case none, large, full
}
