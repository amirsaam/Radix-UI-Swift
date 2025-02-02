//
//  RadixToggleStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

public struct RadixToggleStyle: ToggleStyle {

    @Environment(\.colorScheme) private var colorScheme

    private var variant: RadixToggleVariant
    private var backgroundColor: RadixAutoColor?
    private var foregroundColor: RadixAutoColor?
    private var size: CGFloat?

    init(
        variant: RadixToggleVariant,
        backgroundColor: RadixAutoColor?,
        foregroundColor: RadixAutoColor?,
        size: CGFloat?
    ) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.variant = variant
        self.size = size
    }

    private var newBackgroundColor: RadixAutoColor {
        guard let backgroundColor else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return backgroundColor
    }

    private var newForegroundColor: RadixAutoColor {
        guard let foregroundColor else {
            return colorScheme == .light ? .whiteA : .blackA
        }
        return foregroundColor
    }

    private var newSize: CGFloat {
        guard let size else { return 27.5 }
        return size
    }

    public func makeBody(configuration: Configuration) -> some View {
        switch variant {
            case .checkbox:
                RoundedRectangle(cornerRadius: 8)
                    .fill(newBackgroundColor.solid2)
                    .overlay {
                        if configuration.isOn {
                            configuration.label
                                .foregroundColor(newForegroundColor.text2)
                        }
                    }
                    .frame(width: newSize, height: newSize)
                    .radixShadow1()
                    .onTapGesture {
                        configuration.isOn.toggle()
                    }
            case .switch:
                HStack {
                    configuration.label
                    Spacer()
                    RoundedRectangle(cornerRadius: 16, style: .circular)
                        .fill(configuration.isOn ? newBackgroundColor.solid2 : newBackgroundColor.component3)
                        .frame(width: 42, height: 25)
                        .radixShadow1()
                        .overlay {
                            Circle()
                                .fill(newForegroundColor.text2)
                                .frame(width: 21, height: 21)
                                .offset(x: configuration.isOn ? 8 : -8)
                                .radixShadow1()
                        }
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.2)) {
                                configuration.isOn.toggle()
                            }
                        }
                }
            case .toggle:
                RoundedRectangle(cornerRadius: 8)
                    .fill(configuration.isOn ? newBackgroundColor.solid2 : newBackgroundColor.component3)
                    .frame(width: newSize, height: newSize)
                    .radixShadow1()
                    .overlay {
                        configuration.label
                            .foregroundColor(newForegroundColor.text2)
                    }
                    .onTapGesture {
                        configuration.isOn.toggle()
                    }
        }
    }
}

extension ToggleStyle where Self == RadixToggleStyle {

    public static func radixCheckbox(
        bgColor: RadixAutoColor? = nil,
        iconColor: RadixAutoColor? = nil,
        size: CGFloat? = nil
    ) -> Self {
        .init(
            variant: .checkbox,
            backgroundColor: bgColor,
            foregroundColor: iconColor,
            size: size
        )
    }

    public static func radixSwitch(
        bgColor: RadixAutoColor? = nil,
        thumbColor: RadixAutoColor? = nil
    ) -> Self {
        .init(
            variant: .switch,
            backgroundColor: bgColor,
            foregroundColor: thumbColor,
            size: nil
        )
    }

    public static func radixToggle(
        bgColor: RadixAutoColor? = nil,
        iconColor: RadixAutoColor? = nil,
        size: CGFloat? = nil
    ) -> Self {
        .init(
            variant: .toggle,
            backgroundColor: bgColor,
            foregroundColor: iconColor,
            size: size
        )
    }

}
