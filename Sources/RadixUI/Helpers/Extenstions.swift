//
//  RadixUI+Extenstions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/18/1403 AP.
//

import SwiftUI

// MARK: Extensions used for Button
extension Button {

    public func buttonStyle<S: ButtonStyle>(
        _ style: S,
        isLoading: Binding<Bool>
    ) -> some View {
        self
            .buttonStyle(style)
            .environment(\.isLoading, isLoading)
    }

}

// MARK: - Extensions used for TextField
extension TextField {

    public func textFieldStyle<S: TextFieldStyle>(
        _ style: S,
        isLoading: Binding<Bool>
    ) -> some View {
        self
            .textFieldStyle(style)
            .environment(\.isLoading, isLoading)
    }

}

