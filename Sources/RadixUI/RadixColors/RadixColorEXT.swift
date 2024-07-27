//
//  RadixColorEXT.swift
//  
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

// MARK: - HSV to HSL Convertor Extension
// Algorithm coming from: https://en.wikipedia.org/wiki/HSL_and_HSV#HSV_to_HSL
public extension Color {
    /**
     - Parameter h: Range from 0 to 360.
     - Parameter s: Range from 0 to 1.
     - Parameter l: Range from 0 to 1.
     - Parameter a: Range from 0 to 1.
     */
    init(h hue: Double, s saturation: Double, l lightness: Double, a opacity: Double = 1) {
        let brightness = lightness + saturation * min(lightness, 1 - lightness)
        let saturation = brightness == 0 ? 0 : 2 * (1 - lightness / brightness)

        // Map to Color initializer.
        self.init(hue: hue / 360, saturation: saturation, brightness: brightness, opacity: opacity)
    }
}

// MARK: - Dynamic Light/Dark Mode Color Extenstion
#if canImport(UIKit)
public extension UIColor {
    convenience init(light lightModeColor: @escaping @autoclosure () -> UIColor, dark darkModeColor: @escaping @autoclosure () -> UIColor) {
        self.init { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .light: return lightModeColor()
            case .dark: return darkModeColor()
            default: return lightModeColor()
            }
        }
    }
}

public extension Color {
    init(light lightModeColor: @escaping @autoclosure () -> Color, dark darkModeColor: @escaping @autoclosure () -> Color) {
        self.init(UIColor(light: UIColor(lightModeColor()), dark: UIColor(darkModeColor())))
    }
}
#elseif canImport(AppKit)
public extension NSColor {
    convenience init(light lightModeColor: @escaping @autoclosure () -> NSColor, dark darkModeColor: @escaping @autoclosure () -> NSColor) {
        self.init(light: lightModeColor(), dark: darkModeColor())
    }
}

public extension Color {
    init(light lightModeColor: @escaping @autoclosure () -> Color, dark darkModeColor: @escaping @autoclosure () -> Color) {
        self.init(NSColor(light: NSColor(lightModeColor()), dark: NSColor(darkModeColor())))
    }
}
#endif
