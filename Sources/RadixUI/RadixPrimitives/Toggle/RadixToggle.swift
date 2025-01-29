//
//  RadixToggle.swift
//
//
//  Created by Amir Mohammadi on 5/8/1403 AP.
//

import SwiftUI

public struct RadixToggle: ToggleStyle {

    @Environment(\.colorScheme) private var colorScheme

    var onColor: Color?
    var offColor: Color?
    var boxSize: CGFloat?

    private var newOnColor: Color {
        guard let onColor else {
            return colorScheme == .light ? .blackA12 : .whiteA12
        }
        return onColor
    }
    private var newOffColor: Color {
        guard let offColor else {
            return colorScheme == .light ? .blackA9 : .whiteA9
        }
        return offColor
    }
    private var newBoxSize: CGFloat {
        guard let boxSize else { return 27.5 }
        return boxSize
    }

    public func makeBody(configuration: Self.Configuration) -> some View {
        RoundedRectangle(cornerRadius: 4)
            .fill(configuration.isOn ? newOnColor : newOffColor)
            .frame(width: newBoxSize, height: newBoxSize)
            .radixShadow1()
            .onTapGesture {
                configuration.isOn.toggle()
            }
            .overlay(configuration.label)
    }
}

extension ToggleStyle where Self == RadixToggle {
    public static func radixToggle(
        onColor: Color? = nil,
        offColor: Color? = nil,
        boxSize: CGFloat? = nil
    ) -> RadixToggle {
        .init(
            onColor: onColor,
            offColor: offColor,
            boxSize: boxSize
        )
    }
}
