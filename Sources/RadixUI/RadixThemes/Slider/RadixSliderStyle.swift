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

    private var newColor: RadixAutoColor {
        guard let color else { return .blue }
        return color
    }

    private var newSize: RadixSliderSize {
        guard let size else { return .medium }
        return size
    }

    public func makeThumb(configuration: Configuration) -> some View {
        ZStack {
            thumbBorder(size: thumbSize())
            if configuration.isActive {
                thumbActive(
                    size: .init(
                        width: thumbSize().width + 10,
                        height: thumbSize().height + 10
                    )
                )
            }
            thumb(size: thumbSize())
        }
    }

    public func makeTrack(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            switch variant {
                case .soft:
                    trackBase(
                        size: trackSize(),
                        color: RadixAutoColor.gray.component3
                    )
                    trackFill(
                        percentage: configuration.filledPercentage,
                        size: trackSize(),
                        color: newColor.border2
                    )
                case .surface:
                    trackBase(
                        size: trackSize(),
                        color: RadixAutoColor.gray.component2
                    )
                    trackBorder(size: trackSize())
                    trackFill(
                        percentage: configuration.filledPercentage,
                        size: trackSize(),
                        color: newColor.solid2
                    )
            }
        }
        .opacity(configuration.isDisabled ? 0.6 : 1.0)
    }

    private func trackSize() -> CGFloat {
        switch newSize {
            case .small: 6
            case .medium: 8
            case .large: 10
        }
    }

    private func roundedRectangleRadius() -> CGFloat {
        switch newSize {
            case .small: 1
            case .medium: 2
            case .large: 3
        }
    }
    private func thumbSize() -> CGSize {
        switch newSize {
            case .small: .init(width: 12, height: 12)
            case .medium: .init(width: 16, height: 16)
            case .large: .init(width: 20, height: 20)
        }
    }
}

// MARK: - Thumb ViewBuilders
extension RadixSliderStyle {

    @ViewBuilder
    private func thumb(size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .thumbShapeModifier(size: size)
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius())
                    .thumbShapeModifier(size: size)
            case .full:
                Circle()
                    .thumbShapeModifier(
                        size: .init(
                            width: size.width + 6,
                            height: size.width + 6
                        )
                    )
        }
    }

    @ViewBuilder
    private func thumbBorder(size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .thumbBorderShapeModifier(size: size)
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius())
                    .thumbBorderShapeModifier(size: size)
            case .full:
                Circle()
                    .thumbBorderShapeModifier(
                        size: .init(
                            width: size.width + 6,
                            height: size.width + 6
                        )
                    )
        }
    }

    @ViewBuilder
    private func thumbActive(size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .thumbActiveShapeModifier(size: size)
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius())
                    .thumbActiveShapeModifier(size: size)
            case .full:
                Circle()
                    .thumbActiveShapeModifier(
                        size: .init(
                            width: size.width + 6,
                            height: size.width + 6
                        )
                    )
        }
    }

}

// MARK: - Track ViewBuilders
extension RadixSliderStyle {

    @ViewBuilder
    private func trackBase(size: CGFloat, color: Color) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .trackShapeBaseModifier(size: size, color: color)
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius())
                    .trackShapeBaseModifier(size: size, color: color)
            case .full:
                Capsule()
                    .trackShapeBaseModifier(size: size, color: color)
        }
    }

    @ViewBuilder
    private func trackBorder(size: CGFloat) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .trackShapeBorderModifier(size: size)
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius())
                    .trackShapeBorderModifier(size: size)
            case .full:
                Capsule()
                    .trackShapeBorderModifier(size: size)
        }
    }

    @ViewBuilder
    private func trackFill(percentage: CGFloat, size: CGFloat, color: Color) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .trackShapeFillModifier(color, percentage, size)
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius())
                    .trackShapeFillModifier(color, percentage, size)
            case .full:
                Capsule()
                    .trackShapeFillModifier(color, percentage, size)
        }
    }

}
