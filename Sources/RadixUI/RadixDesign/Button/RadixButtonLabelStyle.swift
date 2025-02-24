//
//  RadixButtonLabelStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixButtonLabelStyle: LabelStyle {

    @Environment(\.colorScheme) private var colorScheme

    private var isLoading: Binding<Bool>
    private var isPressed: Bool
    private var isEnabled: Bool

    private var variant: RadixButtonVariant
    private var layout: RadixButtonLayout
    private var radius: RadixElementShapeRadius
    private var color: RadixAutoColor
    private var frame: (maxWitdth: CGFloat?, minHeight: CGFloat?)

    init(
        isLoading: Binding<Bool>,
        isPressed: Bool,
        isEnabled: Bool,
        variant: RadixButtonVariant,
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor,
        frame: (maxWitdth: CGFloat?, minHeight: CGFloat?)
    ) {
        self.isLoading = isLoading
        self.isPressed = isPressed
        self.isEnabled = isEnabled
        self.variant = variant
        self.layout = layout
        self.radius = radius
        self.color = color
        self.frame = frame
    }

    public func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 8) {
            switch layout {
                case .icon:
                    icon(configuration.icon)
                case .title:
                    configuration.title
                case .leading:
                    icon(configuration.icon)
                    configuration.title
                case .trailing:
                    configuration.title
                    icon(configuration.icon)
            }
        }
        .foregroundStyle(fgColor)
        .padding(.horizontal, frame == (nil, nil) ? 12 : 0)
        .padding(.vertical, frame == (nil, nil) ? 8 : 0)
        .frame(maxWidth: frame.maxWitdth, minHeight: frame.minHeight)
        .contentShape(Rectangle())
        .background(shape)
        .opacity(opacityValue)
        .scaleEffect(isPressed ? 0.98 : 1)
        .animation(
            .easeIn(duration: 0.2),
            value: isPressed
        )
    }

    @ViewBuilder
    private func icon(_ icon: LabelStyleConfiguration.Icon) -> some View {
        if isLoading.wrappedValue {
            ProgressView()
                .progressViewStyle(.circular)
                .tint(
                    variant == .solid
                    ? (colorScheme == .light ? color.background2 : color.text2)
                    : color.text1
                )
                .controlSize(.small)
        } else {
            icon
        }
    }

    @ViewBuilder
    private var shape: some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: buttonColor.first!,
                        width: nil, height: nil
                    )
                    .overlay {
                        Rectangle()
                            .radixShapeBorderApplier(
                                color: buttonColor.last!,
                                width: nil, height: nil
                            )
                    }
            case .large:
                RoundedRectangle(cornerRadius: 8)
                    .radixShapeFillApplier(
                        color: buttonColor.first!,
                        width: nil, height: nil
                    )
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .radixShapeBorderApplier(
                                color: buttonColor.last!,
                                width: nil, height: nil
                            )
                    }
            case .full:
                Capsule()
                    .radixShapeFillApplier(
                        color: buttonColor.first!,
                        width: nil, height: nil
                    )
                    .overlay {
                        Capsule()
                            .radixShapeBorderApplier(
                                color: buttonColor.last!,
                                width: nil, height: nil
                            )
                    }
        }
    }

}

extension RadixButtonLabelStyle {

    private var opacityValue: Double {
        guard !isEnabled || isLoading.wrappedValue else {
            return 1.0
        }
        return 0.6
    }

    private var isBlackOrWhite: Bool {
        let isBlack = color == .blackA
        let isWhite = color == .whiteA
        return isBlack || isWhite
    }

    private var fgColor: Color {
        guard variant != .solid else {
            if color == .blackA { return .whiteA11 }
            if color == .whiteA { return .blackA11 }
            return colorScheme == .light
            ? color.background2
            : color.text2
        }
        return color.text1
    }

    private var buttonColor: [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .ghost:
                [
                    isPressed ? color.component2 : .clear,
                    .clear
                ]
            case .outline:
                [
                    isPressed ? color.component2 : .clear,
                    isPressed ? color.solid2 : color.solid1
                ]
            case .soft:
                [
                    isPressed ? color.component3 : color.component2,
                    .clear
                ]
            case .solid:
                [
                    isPressed
                    ? (isBlackOrWhite ? color.text2 : color.solid2)
                    : (isBlackOrWhite ? color.text1 : color.solid1),
                    .clear
                ]
            case .surface:
                [
                    isPressed ? color.component2 : color.background2,
                    isPressed ? color.solid2 : color.solid1
                ]
            default: []
        }
    }

}
