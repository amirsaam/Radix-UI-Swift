//
//  Color+Hex.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/13/1403 AP.
//

import SwiftUI

/// Create `RadixAlphaColors` percise values for `Light` & `Dark` schemes
#if canImport(UIKit)
internal typealias PlatformColor = UIColor
#elseif canImport(AppKit)
internal typealias PlatformColor = NSColor
#endif

extension Color {
    public init(lightHex: String, darkHex: String) {
        func colorFromHex(_ hex: String) -> PlatformColor {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var rgba: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&rgba)

            let r, g, b, a: CGFloat
            switch hex.count {
                case 6:
                    r = CGFloat((rgba & 0xff0000) >> 16) / 255.0
                    g = CGFloat((rgba & 0x00ff00) >> 8) / 255.0
                    b = CGFloat(rgba & 0x0000ff) / 255.0
                    a = 1.0
                case 8:
                    r = CGFloat((rgba & 0xff000000) >> 24) / 255.0
                    g = CGFloat((rgba & 0x00ff0000) >> 16) / 255.0
                    b = CGFloat((rgba & 0x0000ff00) >> 8) / 255.0
                    a = CGFloat(rgba & 0x000000ff) / 255.0
                default:
                    // Fallback to White if Hex is not correct
                    r = 255
                    g = 255
                    b = 255
                    a = 1.0
            }
            return PlatformColor(red: r, green: g, blue: b, alpha: a)
        }

        let lightColor = colorFromHex(lightHex)
        let darkColor = colorFromHex(darkHex)

#if canImport(UIKit)
        self.init(
            UIColor { traitCollection in
                return traitCollection.userInterfaceStyle == .dark ? darkColor : lightColor
            }
        )
#elseif canImport(AppKit)
        self.init(
            NSColor(name: nil) { appearance in
                return appearance.name == .darkAqua ? darkColor : lightColor
            }
        )
#endif
    }
}
