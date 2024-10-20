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
            .opacity(isEnabled ? 1 : 0.8)
            .scaleEffect(configuration.isPressed ? 0.97 : 1)
            .saturation(configuration.isPressed ? 1.2 : 1)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

public extension Button {
  func radixButton() -> some View {
    self.buttonStyle(RadixButton())
  }
}
