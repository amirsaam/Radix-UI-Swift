//
//  Enums.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/17/1403 AP.
//

import Foundation
import SwiftUI

// MARK: - Dismiss Direction Enum
public enum DismissSwipeDirection {
    case up, down
}

// MARK: - Globally used Enums in RadixUI Elements
public enum RadixElementShapeRadius {
    case none, large, full
}

//MARK: - Enums Used in RadixAvatar
public enum RadixAvatarFallbackType {
    case name, icon
}

public enum RadixAvatarVariant {
    case soft, solid
}

public enum RadixAvatarSize: CGFloat {
    case small, medium, large

    var frame: CGFloat {
        switch self {
            case .small: return 48
            case .medium: return 80
            case .large: return 128
        }
    }

    var radius: CGFloat {
        switch self {
            case .small: return 12
            case .medium: return 16
            case .large: return 20
        }
    }
}

// MARK: - Enums used in RadixBadge
public enum RadixBadgeVariant {
    case outline, soft, solid, surface
}

// MARK: - Enums used in RadixCollout
public enum RadixCalloutRole {
    case alert, info
}

public enum RadixCalloutVariant {
    case outline, soft, surface
}

// MARK: - Enums used in ButtonStyle
public enum RadixButtonLayout {
    case icon, title, leading, trailing
}

public enum RadixButtonVariant {
    case custom, ghost, outline, soft, solid, surface
}

// MARK: - Enums used in SliderStyle
public enum RadixSliderType {
    case ranged, single
}

public enum RadixSliderSize {
    case small, medium, large
}

public enum RadixSliderVariant {
    case soft, surface
}

// MARK: - Enums used in RadixToast
public enum RadixToastPosition {
    case top, bottom

    var edge: Edge {
        switch self {
            case .top: .top
            case .bottom: .bottom
        }
    }
}

public enum RadixToastVariant {
    case soft, surface
}

// MARK: - Enums used in TextFieldStyle
public enum RadixTextFieldVariant {
    case surface, soft
}

// MARK: - Enums used in ToggleStyle
public enum RadixToggleType {
    case checkbox, radio, `switch`, toggle
}

public enum RadixToggleVariant {
    case surface, soft
}

public enum RadixToggleLayout {
    case leading, trailing
}
