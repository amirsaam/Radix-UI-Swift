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
    private var fgColor: Color
    private var solidColor: Color?
    private var shadeColor: Color?
    private var strokeColor: Color?

    init(
        variant: RadixButtonVariant,
        fgColor: Color,
        solidColor: Color? = nil,
        shadeColor: Color? = nil,
        strokeColor: Color? = nil
    ) {
        self.variant = variant
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
        if isLoading.wrappedValue {
            ProgressView()
                .progressViewStyle(.circular)
                .tint(.gray9.opacity(opacityValue))
        } else {
            switch variant {
                case .ghost:
                    label(config: configuration)
                        .foregroundStyle(fgColor)
                case .solid:
                    label(config: configuration)
                        .background(newSolidColor)
                        .foregroundStyle(fgColor)
                case .soft:
                    label(config: configuration)
                        .background(newShadeColor)
                        .foregroundStyle(fgColor)
                case .surface:
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(newStrokeColor, lineWidth: 1)
                        .background(newShadeColor)
                        .overlay {
                            label(config: configuration)
                                .foregroundStyle(fgColor)
                        }
                case .outline:
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(newStrokeColor, lineWidth: 1)
                        .overlay {
                            label(config: configuration)
                                .foregroundStyle(fgColor)
                        }
                case .custom:
                    label(config: configuration)
            }
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
        fgColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            fgColor: fgColor
        )
    }

    /// Creates Solid style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .solid,
        fgColor: Color,
        solidColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            fgColor: fgColor,
            solidColor: solidColor
        )
    }

    /// Creates Soft style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .soft,
        fgColor: Color,
        shadeColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            fgColor: fgColor,
            shadeColor: shadeColor
        )
    }

    /// Creates Surface style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .surface,
        fgColor: Color,
        strokeColor: Color,
        shadeColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            fgColor: fgColor,
            shadeColor: shadeColor,
            strokeColor: strokeColor
        )
    }

    /// Creates Outline style for RadixButton
    public static func radix(
        variant: RadixButtonVariant = .outline,
        fgColor: Color,
        strokeColor: Color
    ) -> Self {
        return RadixButton(
            variant: variant,
            fgColor: fgColor,
            strokeColor: strokeColor
        )
    }

    /// Custom style RadixButton, accepts any Label
    public static func radix(variant: RadixButtonVariant = .custom) -> Self {
        return RadixButton(variant: variant, fgColor: .clear)
    }
}
