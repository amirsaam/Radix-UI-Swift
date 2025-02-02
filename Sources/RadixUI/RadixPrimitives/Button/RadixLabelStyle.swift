//
//  RadixGhostLabel.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixLabelStyle: LabelStyle {

    private var isLoading: Binding<Bool>
    private var isPressed: Bool
    private var isEnabled: Bool

    private var color: RadixAutoColor
    private var layout: RadixButtonLayout
    private var size: RadixButtonSize
    private var radius: RadixButtonRadius
    private var variant: RadixButtonVariant

    init(
        isLoading: Binding<Bool>,
        isPressed: Bool,
        isEnabled: Bool,
        color: RadixAutoColor,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        variant: RadixButtonVariant
    ) {
        self.isLoading = isLoading
        self.isPressed = isPressed
        self.isEnabled = isEnabled
        self.color = color
        self.layout = layout
        self.size = size
        self.radius = radius
        self.variant = variant
    }

    private var opacityValue: Double {
        guard !isEnabled || isLoading.wrappedValue else { return 1.0 }
        return 0.4
    }

    public func makeBody(configuration: Configuration) -> some View {
        ZStack {
            switch radius {
                case .none:
                    Rectangle()
                        .fill(buttonColor(variant).first!)
                        .frame(width: size.dimension.width, height: size.dimension.height)
                        .overlay {
                            Rectangle()
                                .stroke(buttonColor(variant).last!, lineWidth: 1)
                                .background(.clear)
                        }
                case .large:
                    RoundedRectangle(cornerRadius: 8)
                        .fill(buttonColor(variant).first!)
                        .frame(width: size.dimension.width, height: size.dimension.height)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(buttonColor(variant).last!, lineWidth: 1)
                                .background(.clear)
                        }
                case .full:
                    Capsule()
                        .fill(buttonColor(variant).first!)
                        .frame(width: size.dimension.width, height: size.dimension.height)
                        .overlay {
                            Capsule()
                                .stroke(buttonColor(variant).last!, lineWidth: 1)
                                .background(.clear)
                        }
            }
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
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .foregroundStyle(variant == .solid ? color.text2 : color.text1)
        }
        .opacity(opacityValue)
        .scaleEffect(isPressed ? 0.97 : 1)
        .animation(.easeIn(duration: 0.2), value: isPressed)
    }

    @ViewBuilder
    private func icon(_ icon: LabelStyleConfiguration.Icon) -> some View {
        if isLoading.wrappedValue {
            ProgressView()
                .progressViewStyle(.circular)
        } else {
            icon
        }
    }

    private func buttonColor(_ variant: RadixButtonVariant) -> [Color] {
        switch variant {
            case .ghost:
                [
                    isPressed ? color.component2 : .clear, // fill
                    .clear // stroke
                ]
            case .outline:
                [
                    isPressed ? color.component3 : .clear, // fill
                    isPressed ? color.solid2 : color.solid1 // stroke
                ]
            case .soft:
                [
                    isPressed ? color.component3 : color.component2, // fill
                    .clear // stroke
                ]
            case .solid:
                [
                    isPressed ? color.solid1 : color.border3, // fill
                    .clear // stroke
                ]
            case .surface:
                [
                    isPressed ? color.component2 : color.component1, // fill
                    isPressed ? color.solid2 : color.solid1 // stroke
                ]
            case .custom: []
        }
    }

}

extension LabelStyle where Self == RadixLabelStyle {
    public static func radix(
        isLoading: Binding<Bool>,
        isPressed: Bool,
        isEnabled: Bool,
        color: RadixAutoColor,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        variant: RadixButtonVariant
    ) -> Self {
        .init(
            isLoading: isLoading,
            isPressed: isPressed,
            isEnabled: isEnabled,
            color: color,
            layout: layout,
            size: size,
            radius: radius,
            variant: variant
        )
    }
}
