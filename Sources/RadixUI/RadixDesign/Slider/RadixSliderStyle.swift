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

    public func makeThumb(configuration: Configuration) -> some View {
        ZStack {
            thumbBorder(size: thumbSize)
            if configuration.isActive {
                thumbActive(
                    size: .init(
                        width: thumbSize.width + 10,
                        height: thumbSize.height + 10
                    )
                )
            }
            thumb(size: thumbSize)
        }
    }

    public func makeTrack(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            switch variant {
                case .soft:
                    trackBase(
                        height: trackSize,
                        color: RadixAutoColor.gray.component3
                    )
                    trackFill(
                        percentage: configuration.filledPercentage,
                        height: trackSize,
                        color: newColor.border2
                    )
                case .surface:
                    trackBase(
                        height: trackSize,
                        color: RadixAutoColor.gray.component2
                    )
                    trackBorder(height: trackSize)
                    trackFill(
                        percentage: configuration.filledPercentage,
                        height: trackSize,
                        color: newColor.solid2
                    )
            }
        }
        .opacity(configuration.isDisabled ? 0.6 : 1.0)
    }

}

// MARK: - Computed Variables
extension RadixSliderStyle {

    private var newColor: RadixAutoColor {
        guard let color else { return .blue }
        return color
    }

    private var newSize: RadixSliderSize {
        guard let size else { return .medium }
        return size
    }

    private var trackSize: CGFloat {
        switch newSize {
            case .small: 6
            case .medium: 8
            case .large: 10
        }
    }

    private var roundedRectangleRadius: CGFloat {
        switch newSize {
            case .small: 1
            case .medium: 2
            case .large: 3
        }
    }
    private var thumbSize: CGSize {
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
                    .radixShapeFillApplier(
                        color: RadixAutoColor.whiteA.text2,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeFillApplier(
                        color: RadixAutoColor.whiteA.text2,
                        width: size.width, height: size.height
                    )
            case .full:
                Circle()
                    .radixShapeFillApplier(
                        color: RadixAutoColor.whiteA.text2,
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
                        color: RadixAutoColor.gray.border3,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeBorderApplier(
                        color: RadixAutoColor.gray.border3,
                        width: size.width, height: size.height
                    )
            case .full:
                Circle()
                    .radixShapeBorderApplier(
                        color: RadixAutoColor.gray.border3,
                        width: size.width + 6, height: size.height + 6
                    )
        }
    }

    @ViewBuilder
    private func thumbActive(size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: RadixAutoColor.blackA.border2,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeFillApplier(
                        color: RadixAutoColor.blackA.border2,
                        width: size.width, height: size.height
                    )
            case .full:
                Circle()
                    .radixShapeFillApplier(
                        color: RadixAutoColor.blackA.border2,
                        width: size.width + 6, height: size.height + 6
                    )
        }
    }

}

// MARK: - Track ViewBuilders
extension RadixSliderStyle {

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
                        color: RadixAutoColor.gray.border2,
                        width: nil, height: height
                    )
            case .large:
                RoundedRectangle(cornerRadius: roundedRectangleRadius)
                    .radixShapeBorderApplier(
                        color: RadixAutoColor.gray.border2,
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
