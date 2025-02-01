//
//  RadixGhostButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixButton: ButtonStyle {

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isLoading) private var isLoading

    private var color: RadixAutoColor
    private var layout: RadixButtonLayout
    private var size: RadixButtonSize
    private var radius: RadixButtonRadius
    private var variant: RadixButtonVariant

    init(
        color: RadixAutoColor,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        variant: RadixButtonVariant
    ) {
        self.color = color
        self.layout = layout
        self.size = size
        self.radius = radius
        self.variant = variant
    }

    public func makeBody(configuration: Configuration) -> some View {
        switch variant {
            case .custom:
                configuration.label
                    .opacity(isEnabled ? 1.0 : 0.4)
                    .scaleEffect(configuration.isPressed ? 0.97 : 1)
                    .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
            default:
                configuration.label
                    .labelStyle(
                        .radix(
                            isLoading: isLoading,
                            isPressed: configuration.isPressed,
                            isEnabled: isEnabled,
                            color: color,
                            layout: layout,
                            size: size,
                            radius: radius,
                            variant: variant
                        )
                    )
        }
    }
}

extension ButtonStyle where Self == RadixButton {

    public static func raduxCustom() -> Self {
        .init(
            color: .black,
            layout: .leading,
            size: .large,
            radius: .full,
            variant: .custom
        )
    }

    public static func radixGhost(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) -> Self {
        .init(
            color: color,
            layout: layout,
            size: size,
            radius: radius,
            variant: .ghost
        )
    }

    public static func radixOutline(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) -> Self {
        .init(
            color: color,
            layout: layout,
            size: size,
            radius: radius,
            variant: .outline
        )
    }

    public static func radixSoft(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) -> Self {
        .init(
            color: color,
            layout: layout,
            size: size,
            radius: radius,
            variant: .soft
        )
    }

    public static func radixSolid(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) -> Self {
        .init(
            color: color,
            layout: layout,
            size: size,
            radius: radius,
            variant: .solid
        )
    }

    public static func radixSurface(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) -> Self {
        .init(
            color: color,
            layout: layout,
            size: size,
            radius: radius,
            variant: .surface
        )
    }
}
