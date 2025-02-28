//
//  Shape+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/23/1403 AP.
//

import SwiftUI

// AnyShape compatibility for earlier iOS versions than iOS16
public struct PortedAnyShape: Shape, @unchecked Sendable {

    private let pathClosure: (CGRect) -> Path

    init<S: Shape>(_ shape: S) {
        self.pathClosure = { rect in shape.path(in: rect) }
    }

    public func path(in rect: CGRect) -> Path {
        pathClosure(rect)
    }

}

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
