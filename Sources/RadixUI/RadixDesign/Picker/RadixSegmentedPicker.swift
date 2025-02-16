//
//  RadixSegmentedPicker.swift
//
//
//  Created by Amir Mohammadi on 5/8/1403 AP.
//

import SwiftUI

#if canImport(UIKit)
public struct RadixSegmentedPicker {
    let color: RadixAutoColor
    let selectedFont: UIFont
    let notSelectedFont: UIFont

    @discardableResult public init(
        color: RadixAutoColor,
        selectedFont: UIFont,
        notSelectedFont: UIFont
    ) {
        self.color = color
        self.selectedFont = selectedFont
        self.notSelectedFont = notSelectedFont

        var fgColor: RadixAutoColor {
            guard color != .blackA else { return .whiteA }
            guard color != .whiteA else { return .blackA }
            return color
        }

        let appeareance = UISegmentedControl.appearance()

        appeareance.backgroundColor = UIColor(color.component2)
        appeareance.setDividerImage(
            UIImage(named: "divider-vertical", in: .module, compatibleWith: nil),
            forLeftSegmentState: .normal,
            rightSegmentState: .normal,
            barMetrics: .compact
        )
        appeareance.selectedSegmentTintColor = UIColor(color.text2)
        appeareance.setTitleTextAttributes(
            [
                .foregroundColor: UIColor(fgColor.background2),
                .font: selectedFont
            ],
            for: .selected
        )
        appeareance.setTitleTextAttributes(
            [.font: notSelectedFont],
            for: .normal
        )

    }
}
#elseif canImport(AppKit)
#endif
#warning("TODO: Add RadixSegmentedPicker for macOS")
