//
//  RadixSliderStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/21/1403 AP.
//

import SwiftUI

public struct RadixSliderStyle: RxSliderStyle {

    private var variant: RadixSliderVariant
    private var radius: RadixElementShapeRadius
    private var size: RadixSliderSize?
    private var color: RadixAutoColor?

    init(
        variant: RadixSliderVariant,
        radius: RadixElementShapeRadius,
        size: RadixSliderSize?,
        color: RadixAutoColor?
    ) {
        self.variant = variant
        self.radius = radius
        self.size = size
        self.color = color
    }

    private var unwrappedSize: RadixSliderSize {
        guard let size else { return .medium }
        return size
    }

    public func makeThumb(configuration: Configuration) -> some View {
        return RadixSliderStyleThumb(
            configuration: configuration,
            variant: variant,
            radius: radius,
            size: unwrappedSize,
            color: color
        )
    }

    public func makeTrack(configuration: Configuration) -> some View {
        return RadixSliderStyleTrack(
            configuration: configuration,
            variant: variant,
            radius: radius,
            size: unwrappedSize,
            color: color
        )
    }

}
