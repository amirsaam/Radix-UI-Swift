//
//  RadixPink.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Pink`
extension RadixColor {
    // Collection: pink
    class Pink {
        static let pink1 = Color(h: 322, s: 1.000, l: 0.994)
        static let pink2 = Color(h: 323, s: 1.000, l: 0.984)
        static let pink3 = Color(h: 323, s: 0.863, l: 0.965)
        static let pink4 = Color(h: 323, s: 0.787, l: 0.942)
        static let pink5 = Color(h: 323, s: 0.722, l: 0.911)
        static let pink6 = Color(h: 323, s: 0.663, l: 0.866)
        static let pink7 = Color(h: 323, s: 0.620, l: 0.801)
        static let pink8 = Color(h: 323, s: 0.603, l: 0.724)
        static let pink9 = Color(h: 322, s: 0.650, l: 0.545)
        static let pink10 = Color(h: 322, s: 0.620, l: 0.496)
        static let pink11 = Color(h: 322, s: 0.750, l: 0.440)
        static let pink12 = Color(h: 320, s: 0.700, l: 0.232)
    }
    // Collection: pinkA
    class PinkA {
        static let pinkA1 = Color(h: 320, s: 1.000, l: 0.510, a: 0.012)
        static let pinkA2 = Color(h: 323, s: 1.000, l: 0.510, a: 0.032)
        static let pinkA3 = Color(h: 323, s: 0.989, l: 0.473, a: 0.067)
        static let pinkA4 = Color(h: 323, s: 0.999, l: 0.443, a: 0.102)
        static let pinkA5 = Color(h: 324, s: 0.999, l: 0.423, a: 0.153)
        static let pinkA6 = Color(h: 323, s: 0.995, l: 0.396, a: 0.224)
        static let pinkA7 = Color(h: 323, s: 0.997, l: 0.385, a: 0.322)
        static let pinkA8 = Color(h: 323, s: 0.995, l: 0.377, a: 0.444)
        static let pinkA9 = Color(h: 322, s: 0.997, l: 0.393, a: 0.750)
        static let pinkA10 = Color(h: 322, s: 0.999, l: 0.379, a: 0.812)
        static let pinkA11 = Color(h: 322, s: 0.998, l: 0.371, a: 0.891)
        static let pinkA12 = Color(h: 320, s: 0.996, l: 0.176, a: 0.930)
    }
    // Collection: pinkDark
    class PinkDark {
        static let pink1 = Color(h: 318, s: 0.250, l: 0.096)
        static let pink2 = Color(h: 318, s: 0.323, l: 0.122)
        static let pink3 = Color(h: 318, s: 0.371, l: 0.157)
        static let pink4 = Color(h: 319, s: 0.398, l: 0.181)
        static let pink5 = Color(h: 319, s: 0.423, l: 0.208)
        static let pink6 = Color(h: 319, s: 0.458, l: 0.249)
        static let pink7 = Color(h: 320, s: 0.512, l: 0.322)
        static let pink8 = Color(h: 322, s: 0.600, l: 0.461)
        static let pink9 = Color(h: 322, s: 0.650, l: 0.545)
        static let pink10 = Color(h: 324, s: 0.715, l: 0.632)
        static let pink11 = Color(h: 325, s: 0.900, l: 0.750)
        static let pink12 = Color(h: 325, s: 0.900, l: 0.905)
    }
    // Collection: pinkDarkA
    class PinkDarkA {
        static let pinkA1 = Color(h: 331, s: 1.000, l: 0.490, a: 0.031)
        static let pinkA2 = Color(h: 319, s: 1.000, l: 0.498, a: 0.074)
        static let pinkA3 = Color(h: 318, s: 0.988, l: 0.559, a: 0.135)
        static let pinkA4 = Color(h: 319, s: 0.994, l: 0.590, a: 0.178)
        static let pinkA5 = Color(h: 319, s: 0.998, l: 0.609, a: 0.221)
        static let pinkA6 = Color(h: 319, s: 0.998, l: 0.612, a: 0.299)
        static let pinkA7 = Color(h: 320, s: 0.999, l: 0.619, a: 0.433)
        static let pinkA8 = Color(h: 322, s: 1.000, l: 0.611, a: 0.710)
        static let pinkA9 = Color(h: 322, s: 0.998, l: 0.642, a: 0.823)
        static let pinkA10 = Color(h: 324, s: 0.997, l: 0.702, a: 0.884)
        static let pinkA11 = Color(h: 325, s: 0.996, l: 0.768, a: 0.975)
        static let pinkA12 = Color(h: 326, s: 0.993, l: 0.912, a: 0.992)
    }
}

/// Add dynamic `RadixPink` to `SwiftUI` colors
public extension Color {
    static let pink1 = Color(light: RadixColor.Pink.pink1, dark: RadixColor.PinkDark.pink1)
    static let pink2 = Color(light: RadixColor.Pink.pink2, dark: RadixColor.PinkDark.pink2)
    static let pink3 = Color(light: RadixColor.Pink.pink3, dark: RadixColor.PinkDark.pink3)
    static let pink4 = Color(light: RadixColor.Pink.pink4, dark: RadixColor.PinkDark.pink4)
    static let pink5 = Color(light: RadixColor.Pink.pink5, dark: RadixColor.PinkDark.pink5)
    static let pink6 = Color(light: RadixColor.Pink.pink6, dark: RadixColor.PinkDark.pink6)
    static let pink7 = Color(light: RadixColor.Pink.pink7, dark: RadixColor.PinkDark.pink7)
    static let pink8 = Color(light: RadixColor.Pink.pink8, dark: RadixColor.PinkDark.pink8)
    static let pink9 = Color(light: RadixColor.Pink.pink9, dark: RadixColor.PinkDark.pink9)
    static let pink10 = Color(light: RadixColor.Pink.pink10, dark: RadixColor.PinkDark.pink10)
    static let pink11 = Color(light: RadixColor.Pink.pink11, dark: RadixColor.PinkDark.pink11)
    static let pink12 = Color(light: RadixColor.Pink.pink12, dark: RadixColor.PinkDark.pink12)
    
    static let pinkA1 = Color(light: RadixColor.PinkA.pinkA1, dark: RadixColor.PinkDarkA.pinkA1)
    static let pinkA2 = Color(light: RadixColor.PinkA.pinkA2, dark: RadixColor.PinkDarkA.pinkA2)
    static let pinkA3 = Color(light: RadixColor.PinkA.pinkA3, dark: RadixColor.PinkDarkA.pinkA3)
    static let pinkA4 = Color(light: RadixColor.PinkA.pinkA4, dark: RadixColor.PinkDarkA.pinkA4)
    static let pinkA5 = Color(light: RadixColor.PinkA.pinkA5, dark: RadixColor.PinkDarkA.pinkA5)
    static let pinkA6 = Color(light: RadixColor.PinkA.pinkA6, dark: RadixColor.PinkDarkA.pinkA6)
    static let pinkA7 = Color(light: RadixColor.PinkA.pinkA7, dark: RadixColor.PinkDarkA.pinkA7)
    static let pinkA8 = Color(light: RadixColor.PinkA.pinkA8, dark: RadixColor.PinkDarkA.pinkA8)
    static let pinkA9 = Color(light: RadixColor.PinkA.pinkA9, dark: RadixColor.PinkDarkA.pinkA9)
    static let pinkA10 = Color(light: RadixColor.PinkA.pinkA10, dark: RadixColor.PinkDarkA.pinkA10)
    static let pinkA11 = Color(light: RadixColor.PinkA.pinkA11, dark: RadixColor.PinkDarkA.pinkA11)
    static let pinkA12 = Color(light: RadixColor.PinkA.pinkA12, dark: RadixColor.PinkDarkA.pinkA12)
}
