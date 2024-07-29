//
//  RadixToggle.swift
//
//
//  Created by Amir Mohammadi on 5/8/1403 AP.
//

import SwiftUI

fileprivate struct RadixToggle: ToggleStyle {

    @Environment(\.colorScheme) private var colorScheme

    var onColor: Color?
    var offColor: Color?

    func makeBody(configuration: Self.Configuration) -> some View {
        let newOnColor = onColor == nil ? colorScheme == .light ? .blackA12 : .whiteA12 : onColor!
        let newOffColor = offColor == nil ? colorScheme == .light ? .blackA9 : .whiteA9 : offColor!
        RoundedRectangle(cornerRadius: 4)
            .fill(configuration.isOn ? newOnColor : newOffColor)
            .frame(width: 27.5, height: 27.5)
            .radixShadow1()
            .onTapGesture {
                configuration.isOn.toggle()
            }
            .overlay(configuration.label)
    }
}

extension Toggle {
  public func radixToggle(onColor: Color? = nil, offColor: Color? = nil) -> some View {
    self.toggleStyle(
      RadixToggle(
        onColor: onColor,
        offColor: offColor
      )
    )
  }
}
