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
            .saturation(isEnabled ? 1 : 0)
            .scaleEffect(configuration.isPressed ? 0.97 : 1)
            .opacity(configuration.isPressed ? 0.8 : 1)
            .animation(.easeInOut(duration: 0.3), value: configuration.isPressed)
    }
}

public extension Button {
  func radixButton() -> some View {
    self.buttonStyle(RadixButton())
  }
}
