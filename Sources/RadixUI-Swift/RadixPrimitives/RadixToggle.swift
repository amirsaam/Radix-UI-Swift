//
//  RadixToggle.swift
//
//
//  Created by Amir Mohammadi on 5/2/1403 AP.
//

import SwiftUI

fileprivate struct RadixToggle: ToggleStyle {
  
  @Environment(\.colorScheme) private var colorScheme
  
  var onColor: Color?
  var offColor: Color?
  var thumbColor: Color?
  
  func makeBody(configuration: Self.Configuration) -> some View {
    let newOnColor = onColor == nil ? colorScheme == .light ? .blackA12 : .whiteA12 : onColor!
    let newOffColor = offColor == nil ? colorScheme == .light ? .blackA9 : .whiteA9 : offColor!
    let newThumbColor = thumbColor == nil ? colorScheme == .light ? .whiteA12 : .blackA12 : thumbColor!
    HStack {
      configuration.label
        .font(.body)
      Spacer()
      RoundedRectangle(cornerRadius: 16, style: .circular)
        .fill(configuration.isOn ? newOnColor : newOffColor)
        .frame(width: 42, height: 25)
        .overlay(
          Circle()
            .fill(newThumbColor)
            .frame(width: 21, height: 21)
            .offset(x: configuration.isOn ? 8 : -8)
        )
        .onTapGesture {
          withAnimation(.smooth(duration: 0.2)) {
            configuration.isOn.toggle()
          }
        }
    }
  }
}

extension Toggle {
    public func radixToggle(onColor: Color? = nil, offColor: Color? = nil, thumbColor: Color? = nil) -> some View {
        self.toggleStyle(RadixToggle(onColor: onColor, offColor: offColor, thumbColor: thumbColor))
    }
}
