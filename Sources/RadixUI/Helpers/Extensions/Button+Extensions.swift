//
//  Button+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/18/1403 AP.
//

import SwiftUI

extension Button {

    public func buttonStyle<S: ButtonStyle>(
        _ style: S,
        isLoading: Binding<Bool>
    ) -> some View {
        self
            .buttonStyle(style)
            .environment(\.isLoading, isLoading)
    }

}

extension ButtonStyle where Self == RadixButtonStyle {

    public static func radixCustom() -> Self {
        .init(
            variant: .custom,
            layout: .leading,
            radius: .none,
            color: nil,
            frame: (nil, nil)
        )
    }

    public static func radixGhost(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .ghost,
            layout: layout,
            radius: radius,
            color: color,
            frame: (nil, nil)
        )
    }

    public static func radixOutline(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil,
        frame: (maxWidth: CGFloat?, minHeight: CGFloat?) = (nil, nil)
    ) -> Self {
        .init(
            variant: .outline,
            layout: layout,
            radius: radius,
            color: color,
            frame: frame
        )
    }

    public static func radixSoft(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil,
        frame: (maxWidth: CGFloat?, minHeight: CGFloat?) = (nil, nil)
    ) -> Self {
        .init(
            variant: .soft,
            layout: layout,
            radius: radius,
            color: color,
            frame: frame
        )
    }

    public static func radixSolid(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil,
        frame: (maxWidth: CGFloat?, minHeight: CGFloat?) = (nil, nil)
    ) -> Self {
        .init(
            variant: .solid,
            layout: layout,
            radius: radius,
            color: color,
            frame: frame
        )
    }

    public static func radixSurface(
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil,
        frame: (maxWidth: CGFloat?, minHeight: CGFloat?) = (nil, nil)
    ) -> Self {
        .init(
            variant: .surface,
            layout: layout,
            radius: radius,
            color: color,
            frame: frame
        )
    }
}
