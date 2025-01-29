//
//  RadixSwitch.swift
//
//
//  Created by Amir Mohammadi on 5/2/1403 AP.
//

import SwiftUI

public struct RadixSwitch: ToggleStyle {

    @Environment(\.colorScheme) private var colorScheme

    var onColor: Color?
    var offColor: Color?
    var thumbColor: Color?

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
    private var newThumbColor: Color {
        guard let thumbColor else {
            return colorScheme == .light ? .whiteA12 : .blackA12
        }
        return thumbColor
    }

    public func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            RoundedRectangle(cornerRadius: 16, style: .circular)
                .fill(configuration.isOn ? newOnColor : newOffColor)
                .frame(width: 42, height: 25)
                .radixShadow1()
                .overlay(
                    Circle()
                        .fill(newThumbColor)
                        .frame(width: 21, height: 21)
                        .offset(x: configuration.isOn ? 8 : -8)
                        .radixShadow1()
                )
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.2)) {
                        configuration.isOn.toggle()
                    }
                }
        }
    }
}

extension ToggleStyle where Self == RadixSwitch {
    public static func radixSwitch(
        onColor: Color? = nil,
        offColor: Color? = nil,
        thumbColor: Color? = nil
    ) -> RadixSwitch {
        .init(
            onColor: onColor,
            offColor: offColor,
            thumbColor: thumbColor
        )
    }
}
