//
//  RadixButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 7/29/1403 AP.
//

import SwiftUI

fileprivate struct RadixButton: ButtonStyle {

    @Environment(\.isEnabled) var isEnabled

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.97 : 1)
            .opacity(
                isEnabled
                ? (configuration.isPressed ? 0.9 : 1)
                : 0.6
            )
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

public extension Button {
  func radixButton() -> some View {
    self.buttonStyle(RadixButton())
  }
}
