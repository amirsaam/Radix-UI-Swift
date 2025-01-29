//
//  RadixTextField.swift
//
//
//  Created by Amir Mohammadi on 5/14/1403 AP.
//

import SwiftUI

fileprivate struct RadixTextFieldModifier: ViewModifier {

    @FocusState private var isFocused: Bool

    var strokeFocusedColor: Color?
    var strokeUnfocusedColor: Color?

    private var newOnColor: Color {
        guard let strokeFocusedColor else { return .gray12 }
        return strokeFocusedColor
    }

    private var newOffColor: Color {
        guard let strokeUnfocusedColor else { return .gray7 }
        return strokeUnfocusedColor
    }

    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(isFocused ? newOnColor : newOffColor, lineWidth: 1)
            )
            .focused($isFocused)
    }
}

extension View {
    public func radixTextFieldStyle(
        unfocusedColor: Color? = nil,
        focusedColor: Color? = nil
    ) -> some View {
        self.modifier(
            RadixTextFieldModifier(
                strokeFocusedColor: focusedColor,
                strokeUnfocusedColor: unfocusedColor
            )
        )
    }
}
