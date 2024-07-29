//
//  RadixSegmentedPicker.swift
//
//
//  Created by Amir Mohammadi on 5/8/1403 AP.
//

import SwiftUI

public struct RadixSegmentedPicker {
  let backgroundColor: Color
  let selectedColor: Color
  let foregroundColor: Color
  @discardableResult public init(backgroundColor: Color, selectedColor: Color, foregroundColor: Color) {
    self.backgroundColor = backgroundColor
    self.selectedColor = selectedColor
    self.foregroundColor = foregroundColor
    UISegmentedControl.appearance().backgroundColor = UIColor(backgroundColor)
    UISegmentedControl.appearance().setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(selectedColor)
    UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(foregroundColor)], for: .selected)
  }
}
