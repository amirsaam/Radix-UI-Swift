//
//  RadixBadge.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/28/1403 AP.
//

import SwiftUI

public struct RadixBadge: ViewModifier {

    @Environment(\.colorScheme) private var colorScheme

    private var variant: RadixBadgeVariant
    private var radius: RadixElementShapeRadius
    private var color: RadixAutoColor?

    init(
        variant: RadixBadgeVariant,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor?
    ) {
        self.variant = variant
        self.radius = radius
        self.color = color
    }

    private var unwrappedColor: RadixAutoColor {
        guard let color else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return color
    }

    private var badgeColor: [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .outline: [ .clear, unwrappedColor.solid1 ]
            case .soft: [ unwrappedColor.component2, .clear ]
            case .solid: [ unwrappedColor.solid1, .clear ]
            case .surface: [ unwrappedColor.background2, unwrappedColor.solid1 ]
        }
    }

    private var fgColor: Color {
        guard variant != .solid else {
            if unwrappedColor == .blackA { return .whiteA11 }
            if unwrappedColor == .whiteA { return .blackA11 }
            return colorScheme == .light
            ? unwrappedColor.background2
            : unwrappedColor.text2
        }
        return unwrappedColor.text1
    }

    public func body(content: Content) -> some View {
        content
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(shape)
            .foregroundStyle(fgColor)
    }

    @ViewBuilder
    private var shape: some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: badgeColor.first!,
                        width: nil, height: nil
                    )
                    .overlay {
                        Rectangle()
                            .radixShapeBorderApplier(
                                color: badgeColor.last!,
                                width: nil, height: nil
                            )
                    }
            case .large:
                RoundedRectangle(cornerRadius: 8)
                    .radixShapeFillApplier(
                        color: badgeColor.first!,
                        width: nil, height: nil
                    )
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .radixShapeBorderApplier(
                                color: badgeColor.last!,
                                width: nil, height: nil
                            )
                    }
            case .full:
                Capsule()
                    .radixShapeFillApplier(
                        color: badgeColor.first!,
                        width: nil, height: nil
                    )
                    .overlay {
                        Capsule()
                            .radixShapeBorderApplier(
                                color: badgeColor.last!,
                                width: nil, height: nil
                            )
                    }
        }
    }

}
