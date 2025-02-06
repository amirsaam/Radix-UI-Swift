//
//  RadixButtonStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixButtonStyle: ButtonStyle {

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isLoading) private var isLoading

    private var variant: RadixButtonVariant
    private var layout: RadixButtonLayout
    private var radius: RadixElementShapeRadius
    private var color: RadixAutoColor?

    init(
        variant: RadixButtonVariant,
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor?
    ) {
        self.variant = variant
        self.layout = layout
        self.radius = radius
        self.color = color
    }

    private var newColor: RadixAutoColor {
        guard let color else { return .blue }
        return color
    }

    public func makeBody(configuration: Configuration) -> some View {
        switch variant {
            case .custom:
                configuration.label
                    .opacity(isEnabled ? 1.0 : 0.6)
                    .scaleEffect(configuration.isPressed ? 0.98 : 1)
                    .animation(
                        .easeIn(duration: 0.2),
                        value: configuration.isPressed
                    )
            default:
                configuration.label
                    .labelStyle(
                        .radixButton(
                            isLoading: isLoading,
                            isPressed: configuration.isPressed,
                            isEnabled: isEnabled,
                            color: newColor,
                            layout: layout,
                            radius: radius,
                            variant: variant
                        )
                    )
        }
    }
}

extension ButtonStyle where Self == RadixButtonStyle {

    public static func raduxCustom() -> Self {
        .init(
            variant: .custom,
            layout: .leading,
            radius: .full,
            color: .blackA
        )
    }

    public static func radixGhost(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .ghost,
            layout: layout,
            radius: radius,
            color: color
        )
    }

    public static func radixOutline(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .outline,
            layout: layout,
            radius: radius,
            color: color
        )
    }

    public static func radixSoft(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .soft,
            layout: layout,
            radius: radius,
            color: color
        )
    }

    public static func radixSolid(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .solid,
            layout: layout,
            radius: radius,
            color: color
        )
    }

    public static func radixSurface(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .surface,
            layout: layout,
            radius: radius,
            color: color
        )
    }
}
