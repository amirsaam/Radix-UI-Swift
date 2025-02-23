//
//  SchemeInverter.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 12/5/1403 AP.
//

import SwiftUI

internal struct RadixColorSchemeInverter<Content: View>: View {

    @Environment(\.colorScheme) private var colorScheme

    let content: Content

    private var invertedColorScheme: ColorScheme {
        switch colorScheme {
            case .dark: .light
            case .light: .dark
            @unknown default: colorScheme
        }
    }

    var body: some View {
        content
            .environment(\.colorScheme, invertedColorScheme)
    }

}
