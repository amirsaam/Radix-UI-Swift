//
//  RadixSlider.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/18/1403 AP.
//

import SwiftUI

public struct RadixSlider: View {

    @Environment(\.rxSliderStyle) private var rxStyle
    @Environment(\.isEnabled) private var isEnabled

    private var value: Binding<Double>
    private var step: Double = 0.1
    private var range: ClosedRange<Double> = 0.0...1.0
    private var onEditingChanged: ((Bool) -> Void)?

    @State private var isActive: Bool = false
    @State private var frameWidth: CGFloat = 0

    private let space: String = "RadixSlider"

    // Configuration Definition
    private var configuration: RxSliderStyleConfiguration {

        .init(
            value: value,
            step: step,
            minValue: range.lowerBound,
            maxValue: range.upperBound,
            isActive: isActive,
            isDisabled: !isEnabled,
            filledPercentage: (value.wrappedValue - range.lowerBound) / (range.upperBound-range.lowerBound) * frameWidth,
            onEditingChanged: onEditingChanged ?? { _ in }
        )

    }

    public var body: some View {
        rxStyle.makeTrack(configuration: configuration)
            .overlay {
                GeometryReader { proxy in
                    ZStack(alignment: .center) {
                        rxStyle.makeThumb(configuration: configuration)
                            .offset(thumbOffset(proxy))
                            .gesture(makeGesture(proxy))
                            .allowsHitTesting(isEnabled)
                    }
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .onAppear {
                        frameWidth = proxy.size.width
                    }
                }
            }
            .coordinateSpace(name: space)
    }

}

// MARK: - RadixSlider Ini
extension RadixSlider {

    public init(
        value: Binding<Double>,
        step: Double = 1.0,
        onEditingChanged: ((Bool) -> Void)? = nil
    ) {
        self.value = value
        self.step = step
        self.onEditingChanged = onEditingChanged
    }

    public init(
        value: Binding<Double>,
        step: Double = 1.0,
        in range: ClosedRange<Double>,
        onEditingChanged: ((Bool) -> Void)? = nil
    ) {
        self.value = value
        self.step = step
        self.range = range
        self.onEditingChanged = onEditingChanged
    }

}

// MARK: - Calculations
extension RadixSlider {

    /*
     uses an arbitrarily large number to gesture a line segment
     that is guarenteed to intersect with the bounding box,
     then finds those points of intersection to be used as
     the start and end points of the slider
     */
    private func calculateEndPoints(
        _ proxy: GeometryProxy
    ) -> (
        start: CGPoint, end: CGPoint
    ) {
        let w = proxy.size.width
        let h = proxy.size.height

        return (CGPoint(x: 0, y: h / 2), CGPoint(x: w, y: h / 2))
    }

    /*
     calculates the normalized position of the point `p`
     along the horizontal line segment defined by `L1` and `L2`,
     clamping the value between 0 and 1.
     */
    public func calculateParameter(
        _ L1: CGPoint,
        _ L2: CGPoint,
        _ p: CGPoint
    ) -> CGFloat {
        return max(min((p.x - L1.x) / (L2.x - L1.x), 1), 0)
    }

    private func thumbOffset(
        _ proxy: GeometryProxy
    ) -> CGSize {

        let ends = calculateEndPoints(proxy)

        let vP1 = value.wrappedValue - range.lowerBound
        let vP2 = range.upperBound - range.lowerBound

        let value = vP1 / vP2

        let xP1 = (1 - value) * Double(ends.start.x)
        let xP2 = value * Double(ends.end.x)
        let xP3 = Double(proxy.size.width / 2)

        let width = xP1 + xP2 - xP3

        return CGSize(width: width, height: 0)
    }

}

// MARK: - RadixSlider Gesture
extension RadixSlider {

    private func makeGesture(_ proxy: GeometryProxy) -> some Gesture {

        DragGesture(minimumDistance: 10, coordinateSpace: .named(space))
            .onChanged { drag in
                configuration.onEditingChanged(true)
                let ends = calculateEndPoints(proxy)
                let parameter = Double(calculateParameter(ends.start, ends.end, drag.location))
                let rawValue = (range.upperBound - range.lowerBound) * parameter + range.lowerBound
                let steppedValue = (rawValue / step).rounded() * step
                self.value.wrappedValue = min(max(steppedValue, range.lowerBound), range.upperBound)
                isActive = true
            }
            .onEnded { drag in
                let ends = calculateEndPoints(proxy)
                let parameter = Double(calculateParameter(
                    ends.start,
                    ends.end,
                    drag.location
                ))
                let rawValue = (range.upperBound - range.lowerBound) * parameter + range.lowerBound
                let steppedValue = (rawValue / step).rounded() * step
                self.value.wrappedValue = min(
                    max(
                        steppedValue,
                        range.lowerBound
                    ),
                    range.upperBound
                )
                isActive = false
                configuration.onEditingChanged(false)
            }

    }

}
