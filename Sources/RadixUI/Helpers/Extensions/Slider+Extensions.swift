//
//  Slider+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/18/1403 AP.
//

import SwiftUI

extension View where Self == RadixSlider {

    public func rxSliderStyle<S>(_ style: S) -> some View where S: RxSliderStyle {
        self.environment(\.rxSliderStyle, AnyRxSliderStyle(style))
    }

}

extension RxSliderStyle where Self == RadixSliderStyle {

    public static  func radixSoft(
        radius: RadixElementShapeRadius,
        size: RadixSliderSize? = nil,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .soft,
            radius: radius,
            size: size,
            color: color
        )
    }

    public static func radixSurface(
        radius: RadixElementShapeRadius,
        size: RadixSliderSize? = nil,
        color: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .surface,
            radius: radius,
            size: size,
            color: color
        )
    }

}
