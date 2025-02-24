//
//  RadixButtonStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixButtonStyle: ButtonStyle {

    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isLoading) private var isLoading

    private var variant: RadixButtonVariant
    private var layout: RadixButtonLayout
    private var radius: RadixElementShapeRadius
    private var color: RadixAutoColor?
    private var frame: (maxWidth: CGFloat?, minHeight: CGFloat?)



    init(
        variant: RadixButtonVariant,
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor?,
        frame: (maxWidth: CGFloat?, minHeight: CGFloat?)
    ) {
        self.variant = variant
        self.layout = layout
        self.radius = radius
        self.color = color
        self.frame = frame
    }

    private var unwrappedColor: RadixAutoColor {
        guard let color else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return color
    }

    public func makeBody(configuration: Configuration) -> some View {
        switch variant {
            case .custom:
                configuration.label
                    .opacity(isEnabled ? 1.0 : 0.6)
                    .contentShape(Rectangle())
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
                            color: unwrappedColor,
                            layout: layout,
                            radius: radius,
                            variant: variant,
                            frame: frame
                        )
                    )
        }
    }
}
