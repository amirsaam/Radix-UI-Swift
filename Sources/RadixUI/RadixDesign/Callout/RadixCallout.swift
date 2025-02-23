//
//  RadixCallout.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/28/1403 AP.
//

import SwiftUI

public struct RadixCallout: ViewModifier {

    @Environment(\.colorScheme) private var colorScheme

    private var variant: RadixCalloutVariant
    private var role: RadixCalloutRole
    private var color: RadixAutoColor?

    init(
        variant: RadixCalloutVariant,
        role: RadixCalloutRole,
        color: RadixAutoColor?
    ) {
        self.variant = variant
        self.role = role
        self.color = color
    }

    private var unwrappedColor: RadixAutoColor {
        guard let color else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return color
    }

    private var calloutColor: [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .outline: [ .clear, unwrappedColor.solid1 ]
            case .soft: [ unwrappedColor.component2, .clear ]
            case .surface: [ unwrappedColor.background2, unwrappedColor.solid1 ]
        }
    }

    public func body(content: Content) -> some View {
        HStack(spacing: 12) {
            Image(role == .info ? "info-circled" : "exclamation-triangle", bundle: .module)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
            content
            Spacer()
        }
        .padding(.leading, 20)
        .padding(.vertical)
        .frame(width: 380)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .radixShapeFillApplier(
                    color: calloutColor.first!,
                    width: nil, height: nil
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .radixShapeBorderApplier(
                            color: calloutColor.last!,
                            width: nil, height: nil
                        )
                }
        )
        .foregroundStyle(unwrappedColor.solid2)
    }

}
