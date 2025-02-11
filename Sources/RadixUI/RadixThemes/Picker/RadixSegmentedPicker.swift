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

        var fgColor: Color {
            guard color != .blackA else { return .whiteA12 }
            guard color != .whiteA else { return .blackA12 }
            return color.background2
        }

        let appeareance = UISegmentedControl.appearance()

        appeareance.backgroundColor = UIColor(color.component1)
        appeareance.setDividerImage(
            UIImage(named: "divider-vertical", in: .module, compatibleWith: nil),
            forLeftSegmentState: .normal,
            rightSegmentState: .normal,
            barMetrics: .compact
        )
        appeareance.selectedSegmentTintColor = UIColor(color.solid2)
        appeareance.setTitleTextAttributes(
            [
                .foregroundColor: UIColor(fgColor),
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
