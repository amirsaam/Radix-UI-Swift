//
//  Button+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/10/1403 AP.
//

import SwiftUI

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
