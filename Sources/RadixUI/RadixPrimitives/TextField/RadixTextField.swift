//
//  RadixTextField.swift
//
//
//  Created by Amir Mohammadi on 5/14/1403 AP.
//

import SwiftUI

public struct RadixTextField: TextFieldStyle {
    
    @FocusState private var isFocused: Bool
    
    var color: RadixAutoColor
    var iconImage: Image?
    var iconSize: CGFloat

    init(
        color: RadixAutoColor,
        iconImage: Image?,
        iconSize: CGFloat
    ) {
        self.color = color
        self.iconImage = iconImage
        self.iconSize = iconSize
    }

    public func _body(configuration: TextField<Self._Label>) -> some View {
        VStack(alignment: .leading) {
            HStack(spacing: 8) {
                if let iconImage {
                    iconImage
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: iconSize, height: iconSize)
                }
                configuration
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .foregroundStyle(isFocused ? color.solid1 : color.border2)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(isFocused ? color.solid1 : color.border2, lineWidth: 1)
        )
        .focused($isFocused)
    }
}

extension TextFieldStyle where Self == RadixTextField {
    public static func radix(
        color: RadixAutoColor,
        iconImage: Image? = nil,
        iconSize: CGFloat = 20
    ) -> Self {
        .init(
            color: color,
            iconImage: iconImage,
            iconSize: iconSize
        )
    }
}
