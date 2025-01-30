//
//  RadixButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 7/29/1403 AP.
//

import SwiftUI

public struct RadixButton: ButtonStyle {

    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isLoading) private var isLoading

    private var variant: RadixButtonVariant
    private var layout: RadixButtonLayout
    private var size: RadixButtonSize
    private var radius: RadixButtonRadius
    private var fgColor: Color
    private var solidColor: Color?
    private var shadeColor: Color?
    private var strokeColor: Color?

    init(
        variant: RadixButtonVariant,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        solidColor: Color? = nil,
        shadeColor: Color? = nil,
        strokeColor: Color? = nil
    ) {
        self.variant = variant
        self.layout = layout
        self.size = size
        self.radius = radius
        self.fgColor = fgColor
        self.solidColor = solidColor
        self.shadeColor = shadeColor
        self.strokeColor = strokeColor
    }

    private var opacityValue: Double {
        guard !isEnabled || isLoading.wrappedValue else { return 1.0 }
        return 0.4
    }

    private var newSolidColor: Color {
        guard let solidColor else {
            return colorScheme == .light ? .blackA2 : .whiteA2
        }
        return solidColor
    }

    private var newStrokeColor: Color {
        guard let strokeColor else {
            return colorScheme == .light ? .blackA2 : .whiteA2
        }
        return strokeColor
    }

    private var newShadeColor: Color {
        guard let shadeColor else {
            return colorScheme == .light ? .blackA9 : .whiteA9
        }
        return shadeColor
    }

    public func makeBody(configuration: Configuration) -> some View {
        switch variant {
            case .custom:
                label(config: configuration)
            case .ghost:
                label(config: configuration)
                    .labelStyle(
                        .radix(
                            layout: layout,
                            size: size,
                            radius: radius,
                            fgColor: fgColor
                        ),
                        isLoading: isLoading
                    )
            case .soft:
                label(config: configuration)
                    .labelStyle(
                        .radix(
                            layout: layout,
                            size: size,
                            radius: radius,
                            fgColor: fgColor,
                            shadeColor: newShadeColor
                        ),
                        isLoading: isLoading
                    )
            case .solid:
                label(config: configuration)
                    .labelStyle(
                        .radix(
                            layout: layout,
                            size: size,
                            radius: radius,
                            fgColor: fgColor,
                            solidColor: newSolidColor
                        ),
                        isLoading: isLoading
                    )
            case .surface:
                label(config: configuration)
                    .labelStyle(
                        .radix(
                            layout: layout,
                            size: size,
                            radius: radius,
                            fgColor: fgColor,
                            strokeColor: newStrokeColor,
                            shadeColor: newShadeColor
                        ),
                        isLoading: isLoading
                    )
            case .outline:
                label(config: configuration)
                    .labelStyle(
                        .radix(
                            layout: layout,
                            size: size,
                            radius: radius,
                            fgColor: fgColor,
                            strokeColor: newStrokeColor
                        ),
                        isLoading: isLoading
                    )
        }
    }

    private func label(config: Configuration) -> some View {
        config.label
            .opacity(opacityValue)
            .scaleEffect(config.isPressed ? 0.97 : 1)
            .saturation(config.isPressed ? 1.2 : 1)
            .animation(.easeInOut(duration: 0.2), value: config.isPressed)
    }

}

extension ButtonStyle where Self == RadixButton {

    /// Creates Ghost style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .ghost,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor
        )
    }

    /// Creates Soft style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .soft,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        shadeColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            shadeColor: shadeColor
        )
    }

    /// Creates Solid style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .solid,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        solidColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            solidColor: solidColor
        )
    }

    /// Creates Surface style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .surface,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        strokeColor: Color,
        shadeColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            shadeColor: shadeColor,
            strokeColor: strokeColor
        )
    }

    /// Creates Outline style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .outline,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        strokeColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            strokeColor: strokeColor
        )
    }

    /// Custom style RadixButton, accepts any Label
    public static func radix(variant: RadixButtonVariant = .custom) -> Self {
        return RadixButton(
            variant: variant,
            layout: .none,
            size: .full,
            radius: .none,
            fgColor: .clear
        )
    }
}
