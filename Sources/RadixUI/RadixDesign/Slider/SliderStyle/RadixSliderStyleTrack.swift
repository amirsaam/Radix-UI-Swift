//
//  RadixSliderStyleTrack.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 12/5/1403 AP.
//

import SwiftUI

internal struct RadixSliderStyleTrack: View {

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

    private var gray: RadixAutoColor = .gray

    private var unwrappedColor: RadixAutoColor {
        guard let color else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return color
    }

    private var trackSize: CGFloat {
        switch size {
            case .small: 6
            case .medium: 8
            case .large: 10
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
        ZStack(alignment: .leading) {
            switch variant {
                case .soft:
                    trackBase(
                        height: trackSize,
                        color: gray.component3
                    )
                    trackFill(
                        percentage: configuration.filledPercentage,
                        height: trackSize,
                        color: unwrappedColor.border2
                    )
                case .surface:
                    trackBase(
                        height: trackSize,
                        color: gray.component2
                    )
                    trackBorder(height: trackSize)
                    trackFill(
                        percentage: configuration.filledPercentage,
                        height: trackSize,
                        color: unwrappedColor.solid2
                    )
            }
        }
        .opacity(configuration.isDisabled ? 0.6 : 1.0)
    }
}

extension RadixSliderStyleTrack {

    @ViewBuilder
    private func trackBase(height: CGFloat, color: Color) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: color,
                        width: nil, height: height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeFillApplier(
                        color: color,
                        width: nil, height: height
                    )
            case .full:
                Capsule()
                    .radixShapeFillApplier(
                        color: color,
                        width: nil, height: height
                    )
        }
    }

    @ViewBuilder
    private func trackBorder(height: CGFloat) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeBorderApplier(
                        color: gray.border2,
                        width: nil, height: height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeBorderApplier(
                        color: gray.border2,
                        width: nil, height: height
                    )
            case .full:
                Capsule()
                    .radixShapeBorderApplier(
                        color: RadixAutoColor.gray.border2,
                        width: nil, height: height
                    )
        }
    }

    @ViewBuilder
    private func trackFill(percentage: CGFloat, height: CGFloat, color: Color) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: color,
                        width: percentage, height: height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeFillApplier(
                        color: color,
                        width: percentage, height: height
                    )
            case .full:
                Capsule()
                    .radixShapeFillApplier(
                        color: color,
                        width: percentage, height: height
                    )
        }
    }

}
