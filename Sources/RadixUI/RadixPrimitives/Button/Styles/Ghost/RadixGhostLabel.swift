//
//  RadixGhostLabel.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixGhostLabel: LabelStyle {

    private var isPressed: Bool
    private var isEnabled: Bool
    
    private var layout: RadixButtonLayout
    private var size: RadixButtonSize
    private var radius: RadixButtonRadius
    private var color: RadixAutoColor

    init(
        isPressed: Bool,
        isEnabled: Bool,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) {
        self.isPressed = isPressed
        self.isEnabled = isEnabled
        self.layout = layout
        self.size = size
        self.radius = radius
        self.color = color
    }

    private var opacityValue: Double {
        guard !isEnabled else { return 1.0 }
        return 0.4
    }

    public func makeBody(configuration: Self.Configuration) -> some View {
        ZStack {
            switch radius {
                case .none:
                    Rectangle()
                        .fill(isPressed ? color.component1 : .clear)
                        .border(isPressed ? color.border3 : .clear)
                        .frame(width: size.dimension.width, height: size.dimension.height)
                case .large:
                    RoundedRectangle(cornerRadius: 8)
                        .fill(isPressed ? color.component1 : .clear)
                        .border(isPressed ? color.border3 : .clear)
                        .frame(width: size.dimension.width, height: size.dimension.height)
                case .full:
                    Capsule()
                        .fill(isPressed ? color.component1 : .clear)
                        .border(isPressed ? color.border3 : .clear)
                        .frame(width: size.dimension.width, height: size.dimension.height)
            }
            HStack(spacing: 8) {
                if layout == .leading {
                    configuration.icon
                }
                configuration.title
                if layout == .trailing {
                    configuration.icon
                }
            }
            .foregroundStyle(isPressed ? color.text1 : color.text2)
        }
        .opacity(opacityValue)
        .scaleEffect(isPressed ? 0.97 : 1)
        .saturation(isPressed ? 1.2 : 1)
        .animation(.easeInOut(duration: 0.2), value: isPressed)
    }
}

extension LabelStyle where Self == RadixGhostLabel {
    public static func radixGhost(
        isPressed: Bool,
        isEnabled: Bool,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) -> Self {
        .init(
            isPressed: isPressed,
            isEnabled: isEnabled,
            layout: layout,
            size: size,
            radius: radius,
            color: color
        )
    }
}
