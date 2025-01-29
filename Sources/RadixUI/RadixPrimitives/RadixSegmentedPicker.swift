//
//  RadixSegmentedPicker.swift
//
//
//  Created by Amir Mohammadi on 5/8/1403 AP.
//

import SwiftUI

#if canImport(UIKit)
public struct RadixSegmentedPicker {
    let backgroundColor: Color
    let selectedColor: Color
    let foregroundColor: Color
    let selectedFont: UIFont
    let unselectedFont: UIFont

    @discardableResult public init(
        backgroundColor: Color,
        selectedColor: Color,
        foregroundColor: Color,
        selectedFont: UIFont,
        unselectedFont: UIFont
    ) {
        self.backgroundColor = backgroundColor
        self.selectedColor = selectedColor
        self.foregroundColor = foregroundColor
        self.selectedFont = selectedFont
        self.unselectedFont = unselectedFont

        let appeareance = UISegmentedControl.appearance()

        appeareance.backgroundColor = UIColor(backgroundColor)
        appeareance.setDividerImage(
            UIImage(),
            forLeftSegmentState: .normal,
            rightSegmentState: .normal,
            barMetrics: .default
        )
        appeareance.selectedSegmentTintColor = UIColor(selectedColor)
        appeareance.setTitleTextAttributes(
            [
                .foregroundColor: UIColor(foregroundColor),
                .font: selectedFont
            ],
            for: .selected
        )
        appeareance.setTitleTextAttributes(
            [.font: unselectedFont],
            for: .normal
        )

    }
}
#elseif canImport(AppKit)
#warning("TODO: Add RadixSegmentedPicker for macOS")
#endif
