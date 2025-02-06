//
//  Label+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/18/1403 AP.
//

import SwiftUI

extension Label where Title == Text, Icon == ResizableBundledImage {

    init(
        _ title: LocalizedStringKey,
        imageName: String,
        imageSize: CGFloat,
        bundle: Bundle
    ) {
        let titleView: () -> Text = { Text(title) }
        let iconView: () -> ResizableBundledImage = {
            ResizableBundledImage(
                imageName: imageName,
                imageSize: imageSize,
                bundle: bundle
            )
        }

        self.init(
            title: titleView,
            icon: iconView
        )

    }

}

extension LabelStyle where Self == RadixButtonLabelStyle {

    public static func radixButton(
        isLoading: Binding<Bool>,
        isPressed: Bool,
        isEnabled: Bool,
        color: RadixAutoColor,
        layout: RadixButtonLayout,
        radius: RadixElementShapeRadius,
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
