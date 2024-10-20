//
//  RadixButton.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 7/29/1403 AP.
//

import SwiftUI

fileprivate struct RadixButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.92 : 1)
            .opacity(configuration.isPressed ? 0.8 : 1)
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }
}

public extension Button {
  func radixButton() -> some View {
    self.buttonStyle(RadixButton())
  }
}
