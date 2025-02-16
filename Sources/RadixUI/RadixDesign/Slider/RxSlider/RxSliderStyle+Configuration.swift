//
//  RxSliderConfiguration.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/21/1403 AP.
//

import SwiftUI

public struct RxSliderStyleConfiguration {

    /// current value of the slider
    public var value: Binding<Double>
    /// multipier for value of the slider
    public var step: Double
    /// minimum value of the sliders range
    public var minValue: Double
    /// maximum value of the sliders range
    public var maxValue: Double
    /// whether or not the thumb is dragging or not
    public var isActive: Bool
    /// whether or not the slider can be dragged
    public var isDisabled: Bool
    /// The percentage of the sliders track that is filled
    public var filledPercentage: Double
    /// escaping closure on the slider
    public var onEditingChanged: (Bool) -> Void

}
