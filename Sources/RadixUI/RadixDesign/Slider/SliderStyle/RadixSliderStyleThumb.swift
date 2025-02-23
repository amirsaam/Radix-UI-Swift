//
//  RadixSliderStyleThumb.swift.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 12/5/1403 AP.
//

import SwiftUI

internal struct RadixSliderStyleThumb: View {

    @Environment(\.colorScheme) private var colorScheme

    private var configuration: RxSliderStyleConfiguration
    private var variant: RadixSliderVariant
    private var radius: RadixElementShapeRadius
    private var size: RadixSliderSize
    private var color: RadixAutoColor?

    init(
        configuration: RxSliderStyleConfiguration,
        variant: RadixSliderVariant,
        radius: RadixElementShapeRadius,
        size: RadixSliderSize,
        color: RadixAutoColor?
    ) {
        self.configuration = configuration
        self.variant = variant
        self.radius = radius
        self.size = size
        self.color = color
    }

    private var whiteA: RadixAutoColor = .whiteA
    private var gray: RadixAutoColor = .gray

    private var unwrappedColor: RadixAutoColor {
        guard let color else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return color
    }

    private var thumbSize: CGSize {
        switch size {
            case .small: .init(width: 12, height: 12)
            case .medium: .init(width: 16, height: 16)
            case .large: .init(width: 20, height: 20)
        }
    }

    private var roundedRectangleRadius: CGFloat {
        switch size {
            case .small: 1
            case .medium: 2
            case .large: 3
        }
    }

    var body: some View {
        ZStack {
            thumbBorder(size: thumbSize)
            if configuration.isActive {
                thumbActive(
                    size: .init(
                        width: thumbSize.width + 10,
                        height: thumbSize.height + 10
                    ),
                    color: unwrappedColor
                )
            }
            thumb(size: thumbSize)
        }
    }
}

extension RadixSliderStyleThumb {

    @ViewBuilder
    private func thumb(size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: whiteA.text2,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeFillApplier(
                        color: whiteA.text2,
                        width: size.width, height: size.height
                    )
            case .full:
                Circle()
                    .radixShapeFillApplier(
                        color: whiteA.text2,
                        width: size.width + 6, height: size.height + 6
                    )
        }
    }

    @ViewBuilder
    private func thumbBorder(size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeBorderApplier(
                        color: gray.border3,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeBorderApplier(
                        color: gray.border3,
                        width: size.width, height: size.height
                    )
            case .full:
                Circle()
                    .radixShapeBorderApplier(
                        color: gray.border3,
                        width: size.width + 6, height: size.height + 6
                    )
        }
    }

    @ViewBuilder
    private func thumbActive(size: CGSize, color: RadixAutoColor) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: variant == .soft ? color.border2 : color.solid2,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeFillApplier(
                        color: variant == .soft ? color.border2 : color.solid2,
                        width: size.width, height: size.height
                    )
            case .full:
                Circle()
                    .radixShapeFillApplier(
                        color: variant == .soft ? color.border2 : color.solid2,
                        width: size.width + 6, height: size.height + 6
                    )
        }
    }

}
