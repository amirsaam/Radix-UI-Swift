//
//  Color+Hex&Bundled.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

/// Make `RadixColors` asset catalog entries available as `SwiftUI` colors
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
