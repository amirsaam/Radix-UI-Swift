//
//  Shape+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/23/1403 AP.
//

import SwiftUI

//MARK: - Slider Thumb Shape Modifiers
internal extension Shape {

    func thumbBorderShapeModifier(size: CGSize) -> some View {
        self
            .stroke(RadixAutoColor.gray.border3, lineWidth: 2)
            .background(.clear)
            .frame(width: size.width, height: size.height)
    }

    func thumbActiveShapeModifier(size: CGSize) -> some View {
        self
            .fill(RadixAutoColor.blackA.border2)
            .frame(width: size.width, height: size.height)
    }

    func thumbShapeModifier(size: CGSize) -> some View {
        self
            .fill(RadixAutoColor.whiteA.text2)
            .frame(width: size.width, height: size.height)
    }

}

// MARK: - Slider Track Shape Modifiers
internal extension Shape {

    func trackShapeBorderModifier(size: CGFloat) -> some View {
        self
            .stroke(RadixAutoColor.gray.border2, lineWidth: 1)
            .background(.clear)
            .frame(height: size)
    }

    func trackShapeBaseModifier(size: CGFloat, color: Color) -> some View {
        self
            .fill(color)
            .frame(height: size)
    }

    func trackShapeFillModifier(_ color: Color, _ percentage: CGFloat, _ size: CGFloat) -> some View {
        self
            .fill(color)
            .frame(width: percentage, height: size)
    }

}
