//
//  Toggle+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/20/1403 AP.
//

import SwiftUI

extension ToggleStyle where Self == RadixToggleStyle {

    public static func radixCheckbox(
        bgColor: RadixAutoColor? = nil,
        iconColor: RadixAutoColor? = nil,
        boxSize: CGFloat? = nil
    ) -> Self {
        .init(
            variant: .checkbox,
            backgroundColor: bgColor,
            foregroundColor: iconColor,
            size: boxSize
        )
    }

    public static func radixSwitch(
        onColor: RadixAutoColor? = nil,
        thumbColor: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .switch,
            backgroundColor: onColor,
            foregroundColor: thumbColor,
            size: nil
        )
    }

    public static func radixToggle(
        bgColor: RadixAutoColor? = nil,
        iconColor: RadixAutoColor? = nil,
        boxSize: CGFloat? = nil
    ) -> Self {
        .init(
            variant: .toggle,
            backgroundColor: bgColor,
            foregroundColor: iconColor,
            size: boxSize
        )
    }

}
