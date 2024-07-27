//
//  RadixUI.swift
//
//
//  Created by Amir Mohammadi on 4/30/1403 AP.
//

import Foundation
import SwiftUI

// MARK: - Make RadixUI assets available to client app

/// Make `.radixUI` available as bundle for using in `Image`
public extension Bundle {
    static let radixUI: Bundle = {
        // The actual bundle name observed in the build output
        let bundleName = "RadixUI_RadixUI"

        // Construct the URL for the bundle
        guard let bundleURL = Bundle.main.bundleURL
            .appendingPathComponent(
                bundleName + ".bundle"
            ) as URL? else { return Bundle.main }

        // Load the bundle
        return Bundle(url: bundleURL) ?? Bundle.main
    }()
}

/// Make `RadixColors` entries available as `SwiftUI` colors
#if canImport(UIKit)
internal func radixColorToSwift(name: String) -> Color {
    guard let color = UIColor(named: name, in: .module, compatibleWith: nil) else { return .white }
    return Color(color)
}
#elseif canImport(AppKit)
internal func radixColorToSwift(name: String) -> Color {
    guard let color = NSColor(named: name, bundle: .module) else { return .white }
    return Color(color)
}
#endif
