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

// MARK: - isLoading EnvironmentKey
struct LoadingKey: EnvironmentKey {
    static let defaultValue: Binding<Bool> = .constant(false)
}

public extension EnvironmentValues {
    var isLoading: Binding<Bool> {
        get { self[LoadingKey.self] }
        set { self[LoadingKey.self] = newValue }
    }
}
