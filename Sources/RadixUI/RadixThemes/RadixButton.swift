//
//  RadixButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 7/29/1403 AP.
//

import SwiftUI

fileprivate struct RadixButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        Group {
            configuration.label
        }
        .scaleEffect(configuration.isPressed ? 0.97 : 1)
        .opacity(configuration.isPressed ? 0.8 : 1)
        .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }
}

extension Button {
    public func radixButton() -> some View {
        self.buttonStyle(RadixButton())
    }
}
