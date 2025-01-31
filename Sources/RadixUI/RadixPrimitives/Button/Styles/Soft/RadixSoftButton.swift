//
//  RadixSoftButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixSoftButton: ButtonStyle {

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

    }
}
