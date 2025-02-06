//
//  TextField+Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/15/1403 AP.
//

import SwiftUI

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
