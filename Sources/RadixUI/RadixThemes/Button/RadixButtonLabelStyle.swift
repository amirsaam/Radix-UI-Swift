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
    private var radius: RadixElementRadius
    private var color: RadixAutoColor

    init(
        isLoading: Binding<Bool>,
        isPressed: Bool,
        isEnabled: Bool,
        variant: RadixButtonVariant,
        layout: RadixButtonLayout,
        radius: RadixElementRadius,
        color: RadixAutoColor
    ) {
        self.isLoading = isLoading
        self.isPressed = isPressed
        self.isEnabled = isEnabled
        self.variant = variant
        self.layout = layout
        self.radius = radius
        self.color = color
    }

    private var opacityValue: Double {
        guard !isEnabled || isLoading.wrappedValue else {
            return 1.0
        }
        return 0.6
    }

    public func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Group {
                switch layout {
                    case .icon:
                        icon(configuration.icon)
                    case .title:
                        configuration.title
                    case .leading:
                        HStack(spacing: 8) {
                            icon(configuration.icon)
                            configuration.title
                        }
                    case .trailing:
                        HStack(spacing: 8) {
                            configuration.title
                            icon(configuration.icon)
                        }
                }
            }
            .foregroundStyle(
                variant == .solid
                ? (colorScheme == .light ? color.background2 : color.text2)
                : color.text1
            )
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(shape())
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
    private func shape() -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .fill(buttonColor().first!)
                    .overlay {
                        Rectangle()
                            .stroke(
                                buttonColor().last!,
                                lineWidth: 1
                            )
                            .background(.clear)
                    }
            case .large:
                RoundedRectangle(cornerRadius: 8)
                    .fill(buttonColor().first!)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(
                                buttonColor().last!,
                                lineWidth: 1
                            )
                            .background(.clear)
                    }
            case .full:
                Capsule()
                    .fill(buttonColor().first!)
                    .overlay {
                        Capsule()
                            .stroke(
                                buttonColor().last!,
                                lineWidth: 1
                            )
                            .background(.clear)
                    }
        }
    }

    private func buttonColor() -> [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .ghost:
                [
                    isPressed ? color.component1 : .clear,
                    .clear
                ]
            case .outline:
                [
                    isPressed ? color.component3 : .clear,
                    isPressed ? color.solid2 : color.solid1
                ]
            case .soft:
                [
                    isPressed ? color.component2 : color.component1,
                    .clear
                ]
            case .solid:
                [
                    isPressed ? color.solid1 : color.border3,
                    .clear
                ]
            case .surface:
                [
                    isPressed ? color.component1 : color.background2,
                    isPressed ? color.solid2 : color.solid1
                ]
            default: []
        }
    }

}

extension LabelStyle where Self == RadixButtonLabelStyle {

    public static func radixButton(
        isLoading: Binding<Bool>,
        isPressed: Bool,
        isEnabled: Bool,
        color: RadixAutoColor,
        layout: RadixButtonLayout,
        radius: RadixElementRadius,
        variant: RadixButtonVariant
    ) -> Self {
        .init(
            isLoading: isLoading,
            isPressed: isPressed,
            isEnabled: isEnabled,
            variant: variant,
            layout: layout,
            radius: radius,
            color: color
        )
    }

}
