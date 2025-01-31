//
//  RadixGhostButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixGhostButton: ButtonStyle {

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isLoading) private var isLoading

    private var layout: RadixButtonLayout
    private var size: RadixButtonSize
    private var radius: RadixButtonRadius
    private var color: RadixAutoColor

    init(
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        color: RadixAutoColor
    ) {
        self.layout = layout
        self.size = size
        self.radius = radius
        self.color = color
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .labelStyle(
                .radixGhost(
                    isPressed: configuration.isPressed,
                    isEnabled: isEnabled,
                    layout: layout,
                    size: size,
                    radius: radius,
                    color: color
                ),
                isLoading: isLoading
            )
    }
}

extension ButtonStyle where Self == RadixGhostButton {
    public static func radixGhost(
        layout: RadixButtonLayout = .leading,
        size: RadixButtonSize = .medium,
        radius: RadixButtonRadius = .large,
        color: RadixAutoColor = .black
    ) -> Self {
        .init(
            layout: layout,
            size: size,
            radius: radius,
            color: color
        )
    }
}
