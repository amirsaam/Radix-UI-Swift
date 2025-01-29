//
//  Extensions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/10/1403 AP.
//

import SwiftUI

private struct LoadingKey: EnvironmentKey {
    static let defaultValue: Binding<Bool> = .constant(false)
}

public extension EnvironmentValues {
    var isLoading: Binding<Bool> {
        get { self[LoadingKey.self] }
        set { self[LoadingKey.self] = newValue }
    }
}

public extension View {
    func buttonStyle<S: ButtonStyle>(_ style: S, isLoading: Binding<Bool>) -> some View {
        self.buttonStyle(style).environment(\.isLoading, isLoading)
    }
}
