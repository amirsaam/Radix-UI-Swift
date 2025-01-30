//
//  RadixTextField.swift
//
//
//  Created by Amir Mohammadi on 5/14/1403 AP.
//

import SwiftUI

public struct RadixTextField: TextFieldStyle {
    
    @FocusState private var isFocused: Bool
    
    var iconImage: Image?
    var iconSize: CGFloat
    var strokeUnfocusedColor: Color
    var strokeFocusedColor: Color
    
    public func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            if let iconImage {
                iconImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: iconSize, height: iconSize)
            }
            configuration
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(
            Rectangle()
                .stroke(isFocused ? strokeFocusedColor : strokeUnfocusedColor, lineWidth: 1)
                .radixRadius4()
        )
        .focused($isFocused)
    }
}

extension TextFieldStyle where Self == RadixTextField {
    public static func radixTextFieldStyle(
        iconImage: Image? = nil,
        iconSize: CGFloat = 15,
        unfocusedColor: Color = .gray7,
        focusedColor: Color = .gray12
    ) -> RadixTextField {
        .init(
            iconImage: iconImage,
            iconSize: iconSize,
            strokeUnfocusedColor: unfocusedColor,
            strokeFocusedColor: focusedColor
        )
    }
}
