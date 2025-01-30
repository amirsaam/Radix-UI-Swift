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
    private var layout: RadixButtonLayout

    init(
        variant: RadixButtonVariant,
        layout: RadixButtonLayout
    ) {
        self.variant = variant
        self.layout = layout
    }

    private var opacityValue: Double {
        guard !isEnabled || isLoading.wrappedValue else { return 1.0 }
        return 0.4
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .labelStyle(
                .radix(
                    isPressed: configuration.isPressed,
                    variant: variant,
                    layout: layout
                ),
                isLoading: isLoading
            )
            .opacity(opacityValue)
    }
}

extension ButtonStyle where Self == RadixButton {
    public static func radix(
        variant: RadixButtonVariant,
        layout: RadixButtonLayout
    ) -> Self {
        return RadixButton(
            variant: variant,
            layout: layout
        )
    }
}
