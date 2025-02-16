//
//  Shape+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/23/1403 AP.
//

import SwiftUI

//MARK: - Slider Thumb Shape Modifiers
extension Shape {

    public func radixShapeBorderApplier(color: Color, width: CGFloat?, height: CGFloat?) -> some View {
        self
            .stroke(color, lineWidth: 1.25)
            .background(.clear)
            .frame(width: width, height: height)
    }

    public func radixShapeFillApplier(color: Color, width: CGFloat?, height: CGFloat?) -> some View {
        self
            .fill(color)
            .frame(width: width, height: height)
    }

}
