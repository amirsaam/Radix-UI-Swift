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
    
    func makeBody(configuration: Self.Configuration) -> some View {
        let bgColor = backgroundColor == nil ? colorScheme == .light ? .blackA12 : .whiteA12 : backgroundColor!
        let fgColor = foregroundColor == nil ? colorScheme == .light ? .blackA9 : .whiteA9 : foregroundColor!
        let size = boxSize == nil ? 27.5 : boxSize!
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

extension Toggle {
    public func radixCheckbox(bgColor: Color? = nil, fgColor: Color? = nil, boxSize: CGFloat? = nil) -> some View {
        self.toggleStyle(
            RadixCheckbox(
                backgroundColor: bgColor,
                foregroundColor: fgColor,
                boxSize: boxSize
            )
        )
    }
}
