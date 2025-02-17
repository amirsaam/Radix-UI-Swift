//
//  RadixCallout.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/28/1403 AP.
//

import SwiftUI

public struct RadixCallout: ViewModifier {

    private var variant: RadixCalloutVariant
    private var role: RadixCalloutRole
    private var color: RadixAutoColor

    init(
        variant: RadixCalloutVariant,
        role: RadixCalloutRole,
        color: RadixAutoColor
    ) {
        self.variant = variant
        self.role = role
        self.color = color
    }

    private var calloutColor: [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .outline: [ .clear, color.solid1 ]
            case .soft: [ color.component2, .clear ]
            case .surface: [ color.background2, color.solid1 ]
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
        .foregroundStyle(color.solid2)
    }

}
