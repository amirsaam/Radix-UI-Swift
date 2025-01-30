//
//  RadixButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 7/29/1403 AP.
//

import SwiftUI

public struct RadixButton: ButtonStyle {

    @Environment(\.isEnabled) var isEnabled
    @Environment(\.isLoading) var isLoading

    private var variant: RadixButtonVariant
    private var size: RadixButtonSize
    private var layout: RadixButtonLayout
    private var radius: RadixButtonRadius

    init(
        variant: RadixButtonVariant,
        size: RadixButtonSize,
        layout: RadixButtonLayout,
        radius: RadixButtonRadius
    ) {
        self.variant = variant
        self.size = size
        self.layout = layout
        self.radius = radius
    }

    private var opacityValue: Double {
        guard !isEnabled || isLoading.wrappedValue else { return 1.0 }
        return 0.4
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .labelStyle(
                .radixLabel(
                    isPressed: configuration.isPressed,
                    variant: variant,
                    size: size,
                    layout: layout,
                    radius: radius
                ),
                isLoading: isLoading
            )
            .opacity(opacityValue)
    }
}

extension ButtonStyle where Self == RadixButton {
    public static func radixButton(
        variant: RadixButtonVariant,
        size: RadixButtonSize,
        layout: RadixButtonLayout,
        radius: RadixButtonRadius
    ) -> Self {
        return RadixButton(
            variant: variant,
            size: size,
            layout: layout,
            radius: radius
        )
    }
}
