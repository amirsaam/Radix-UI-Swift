//
//  Toggle+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/20/1403 AP.
//

import SwiftUI

extension ToggleStyle where Self == RadixToggleStyle {

    public static func radixCheckbox(
        variant: RadixToggleVariant,
        color: RadixAutoColor? = nil,
        boxSize: CGFloat? = nil
    ) -> Self {
        .init(
            type: .checkbox,
            variant: variant,
            layout: .leading,
            radius: .large,
            color: color,
            size: boxSize
        )
    }

    public static func radixRadio(
        variant: RadixToggleVariant,
        layout: RadixToggleLayout,
        color: RadixAutoColor?
    ) -> Self {
        .init(
            type: .radio,
            variant: variant,
            layout: layout,
            radius: .full,
            color: color,
            size: nil
        )
    }

    public static func radixSwitch(
        variant: RadixToggleVariant,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            type: .switch,
            variant: variant,
            layout: .leading,
            radius: radius,
            color: color,
            size: nil
        )
    }

    public static func radixToggle(
        color: RadixAutoColor? = nil,
        boxSize: CGFloat? = nil
    ) -> Self {
        .init(
            type: .toggle,
            variant: .soft,
            layout: .leading,
            radius: .large,
            color: color,
            size: boxSize
        )
    }

}
