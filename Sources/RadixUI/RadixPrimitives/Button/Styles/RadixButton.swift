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
        Group {
            switch variant {
                case .custom:
                    configuration.label
                case .ghost:
                    configuration.label
                        .labelStyle(
                            .radixGhost(
                                layout: layout,
                                size: size,
                                radius: radius,
                                fgColor: fgColor
                            ),
                            isLoading: isLoading
                        )
                case .soft:
                    configuration.label
                        .labelStyle(
                            .radixSoft(
                                layout: layout,
                                size: size,
                                radius: radius,
                                fgColor: fgColor,
                                shadeColor: newShadeColor
                            ),
                            isLoading: isLoading
                        )
                case .solid:
                    configuration.label
                        .labelStyle(
                            .radixSolid(
                                layout: layout,
                                size: size,
                                radius: radius,
                                fgColor: fgColor,
                                solidColor: newSolidColor
                            ),
                            isLoading: isLoading
                        )
                case .surface:
                    configuration.label
                        .labelStyle(
                            .radixSurface(
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
                    configuration.label
                        .labelStyle(
                            .radixOutline(
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
        .opacity(opacityValue)
        .scaleEffect(configuration.isPressed ? 0.97 : 1)
        .saturation(configuration.isPressed ? 1.2 : 1)
        .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

extension ButtonStyle where Self == RadixButton {

    /// Creates Ghost style for RadixButton
    public static func radix(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        fgColor: Color
    ) -> Self {
        return RadixButton(
            variant: .ghost,
            layout: layout,
            size: size,
            radius: .none,
            fgColor: fgColor
        )
    }

    /// Creates Soft style for RadixButton
    public static func radix(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        shadeColor: Color
    ) -> Self {
        .init(
            variant: .soft,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            shadeColor: shadeColor
        )
    }

    /// Creates Solid style for RadixButton
    public static func radix(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        solidColor: Color
    ) -> Self {
        .init(
            variant: .solid,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            solidColor: solidColor
        )
    }

    /// Creates Surface style for RadixButton
    public static func radix(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        strokeColor: Color,
        shadeColor: Color
    ) -> Self {
        .init(
            variant: .surface,
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
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        strokeColor: Color
    ) -> Self {
        .init(
            variant: .outline,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            strokeColor: strokeColor
        )
    }

    /// Custom style RadixButton, accepts any Label
    public static func radix() -> Self {
        .init(
            variant: .custom,
            layout: .none,
            size: .full,
            radius: .none,
            fgColor: .clear
        )
    }
}
