//
//  TextField+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/18/1403 AP.
//

import SwiftUI

extension TextField {

    public func textFieldStyle<S: TextFieldStyle>(
        _ style: S,
        isLoading: Binding<Bool>
    ) -> some View {
        self
            .textFieldStyle(style)
            .environment(\.isLoading, isLoading)
    }

}

extension TextFieldStyle where Self == RadixTextFieldStyle {

    public static func radixSoft(
        radius: RadixElementShapeRadius = .large,
        color: RadixAutoColor? = nil,
        iconLabel: Image? = nil,
        iconButton: Image? = nil,
        iconSize: CGFloat = 20,
        action: (() -> Void)? = nil
    ) -> Self {
        .init(
            variant: .soft,
            radius: radius,
            color: color,
            iconLabel: iconLabel,
            iconButton: iconButton,
            iconSize: iconSize,
            action: action
        )
    }

    public static func radixSurface(
        radius: RadixElementShapeRadius = .large,
        color: RadixAutoColor? = nil,
        iconLabel: Image? = nil,
        iconButton: Image? = nil,
        iconSize: CGFloat = 20,
        action: (() -> Void)? = nil
    ) -> Self {
        .init(
            variant: .surface,
            radius: radius,
            color: color,
            iconLabel: iconLabel,
            iconButton: iconButton,
            iconSize: iconSize,
            action: action
        )
    }

}
