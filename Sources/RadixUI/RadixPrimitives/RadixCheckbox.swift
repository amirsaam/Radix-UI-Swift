//
//  RadixCheckbox.swift
//
//
//  Created by Amir Mohammadi on 6/5/1403 AP.
//

import SwiftUI

fileprivate struct RadixCheckbox: ToggleStyle {
    
    @Environment(\.colorScheme) private var colorScheme
    
    var backgroundColor: Color?
    var foregroundColor: Color?
    var boxSize: CGFloat?

    private var bgColor: Color {
        guard let backgroundColor else {
            return colorScheme == .light ? .blackA12 : .whiteA12
        }
        return backgroundColor
    }
    private var fgColor: Color {
        guard let foregroundColor else {
            return colorScheme == .light ? .blackA9 : .whiteA9
        }
        return foregroundColor
    }
    private var size: CGFloat {
        guard let boxSize else { return 27.5 }
        return boxSize
    }

    func makeBody(configuration: Self.Configuration) -> some View {
        RoundedRectangle(cornerRadius: 4)
            .fill(bgColor)
            .overlay {
                if configuration.isOn {
                    configuration.label
                        .foregroundColor(fgColor)
                }
            }
            .frame(width: size, height: size)
            .radixShadow1()
            .onTapGesture {
                configuration.isOn.toggle()
            }
    }
}

extension ToggleStyle where Self == RadixCheckbox {
    static func radixCheckbox(
        bgColor: Color? = nil,
        fgColor: Color? = nil,
        boxSize: CGFloat? = nil
    ) -> RadixCheckbox {
        .init(
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            boxSize: boxSize
        )
    }
}
