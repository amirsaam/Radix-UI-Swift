//
//  RadixCyan.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for`Cyan`
extension RadixColor {
    // Collection: cyan
    class Cyan {
        static let cyan1 = Color(h: 185, s: 0.600, l: 0.987)
        static let cyan2 = Color(h: 185, s: 0.733, l: 0.971)
        static let cyan3 = Color(h: 186, s: 0.702, l: 0.944)
        static let cyan4 = Color(h: 186, s: 0.638, l: 0.906)
        static let cyan5 = Color(h: 187, s: 0.583, l: 0.854)
        static let cyan6 = Color(h: 188, s: 0.546, l: 0.784)
        static let cyan7 = Color(h: 189, s: 0.537, l: 0.687)
        static let cyan8 = Color(h: 189, s: 0.603, l: 0.525)
        static let cyan9 = Color(h: 190, s: 0.950, l: 0.390)
        static let cyan10 = Color(h: 191, s: 0.912, l: 0.368)
        static let cyan11 = Color(h: 192, s: 0.850, l: 0.310)
        static let cyan12 = Color(h: 192, s: 0.700, l: 0.165)
    }
    // Collection: cyanA
    class CyanA {
        static let cyanA1 = Color(h: 195, s: 0.952, l: 0.412, a: 0.020)
        static let cyanA2 = Color(h: 185, s: 0.999, l: 0.423, a: 0.051)
        static let cyanA3 = Color(h: 186, s: 0.978, l: 0.422, a: 0.095)
        static let cyanA4 = Color(h: 186, s: 0.999, l: 0.385, a: 0.153)
        static let cyanA5 = Color(h: 187, s: 0.993, l: 0.366, a: 0.232)
        static let cyanA6 = Color(h: 188, s: 0.994, l: 0.354, a: 0.334)
        static let cyanA7 = Color(h: 189, s: 0.996, l: 0.350, a: 0.483)
        static let cyanA8 = Color(h: 189, s: 0.999, l: 0.376, a: 0.761)
        static let cyanA9 = Color(h: 190, s: 0.998, l: 0.378, a: 0.981)
        static let cyanA10 = Color(h: 191, s: 0.999, l: 0.346, a: 0.969)
        static let cyanA11 = Color(h: 192, s: 1.000, l: 0.276, a: 0.953)
        static let cyanA12 = Color(h: 192, s: 0.992, l: 0.123, a: 0.950)
    }
    // Collection: cyanDark
    class CyanDark {
        static let cyan1 = Color(h: 192, s: 0.600, l: 0.072)
        static let cyan2 = Color(h: 193, s: 0.511, l: 0.088)
        static let cyan3 = Color(h: 193, s: 0.519, l: 0.119)
        static let cyan4 = Color(h: 193, s: 0.526, l: 0.141)
        static let cyan5 = Color(h: 193, s: 0.534, l: 0.165)
        static let cyan6 = Color(h: 192, s: 0.546, l: 0.201)
        static let cyan7 = Color(h: 192, s: 0.566, l: 0.265)
        static let cyan8 = Color(h: 192, s: 0.598, l: 0.390)
        static let cyan9 = Color(h: 190, s: 0.950, l: 0.390)
        static let cyan10 = Color(h: 190, s: 0.840, l: 0.460)
        static let cyan11 = Color(h: 190, s: 0.900, l: 0.540)
        static let cyan12 = Color(h: 190, s: 0.800, l: 0.840)
    }
    // Collection: cyanDarkA
    class CyanDarkA {
        static let cyanA1 = Color(h: 223, s: 1.000, l: 0.493, a: 0.022)
        static let cyanA2 = Color(h: 207, s: 1.000, l: 0.493, a: 0.044)
        static let cyanA3 = Color(h: 197, s: 1.000, l: 0.496, a: 0.096)
        static let cyanA4 = Color(h: 194, s: 1.000, l: 0.497, a: 0.135)
        static let cyanA5 = Color(h: 193, s: 0.995, l: 0.502, a: 0.178)
        static let cyanA6 = Color(h: 192, s: 0.993, l: 0.537, a: 0.239)
        static let cyanA7 = Color(h: 192, s: 1.000, l: 0.575, a: 0.355)
        static let cyanA8 = Color(h: 192, s: 0.998, l: 0.600, a: 0.585)
        static let cyanA9 = Color(h: 190, s: 1.000, l: 0.500, a: 0.736)
        static let cyanA10 = Color(h: 190, s: 0.998, l: 0.535, a: 0.832)
        static let cyanA11 = Color(h: 190, s: 0.998, l: 0.563, a: 0.949)
        static let cyanA12 = Color(h: 190, s: 0.996, l: 0.867, a: 0.966)
    }
}

/// Add dynamic `RadixCyan` to `SwiftUI` colors
public extension Color {
    static let cyan1 = Color(light: RadixColor.Cyan.cyan1, dark: RadixColor.CyanDark.cyan1)
    static let cyan2 = Color(light: RadixColor.Cyan.cyan2, dark: RadixColor.CyanDark.cyan2)
    static let cyan3 = Color(light: RadixColor.Cyan.cyan3, dark: RadixColor.CyanDark.cyan3)
    static let cyan4 = Color(light: RadixColor.Cyan.cyan4, dark: RadixColor.CyanDark.cyan4)
    static let cyan5 = Color(light: RadixColor.Cyan.cyan5, dark: RadixColor.CyanDark.cyan5)
    static let cyan6 = Color(light: RadixColor.Cyan.cyan6, dark: RadixColor.CyanDark.cyan6)
    static let cyan7 = Color(light: RadixColor.Cyan.cyan7, dark: RadixColor.CyanDark.cyan7)
    static let cyan8 = Color(light: RadixColor.Cyan.cyan8, dark: RadixColor.CyanDark.cyan8)
    static let cyan9 = Color(light: RadixColor.Cyan.cyan9, dark: RadixColor.CyanDark.cyan9)
    static let cyan10 = Color(light: RadixColor.Cyan.cyan10, dark: RadixColor.CyanDark.cyan10)
    static let cyan11 = Color(light: RadixColor.Cyan.cyan11, dark: RadixColor.CyanDark.cyan11)
    static let cyan12 = Color(light: RadixColor.Cyan.cyan12, dark: RadixColor.CyanDark.cyan12)

    static let cyanA1 = Color(light: RadixColor.CyanA.cyanA1, dark: RadixColor.CyanDarkA.cyanA1)
    static let cyanA2 = Color(light: RadixColor.CyanA.cyanA2, dark: RadixColor.CyanDarkA.cyanA2)
    static let cyanA3 = Color(light: RadixColor.CyanA.cyanA3, dark: RadixColor.CyanDarkA.cyanA3)
    static let cyanA4 = Color(light: RadixColor.CyanA.cyanA4, dark: RadixColor.CyanDarkA.cyanA4)
    static let cyanA5 = Color(light: RadixColor.CyanA.cyanA5, dark: RadixColor.CyanDarkA.cyanA5)
    static let cyanA6 = Color(light: RadixColor.CyanA.cyanA6, dark: RadixColor.CyanDarkA.cyanA6)
    static let cyanA7 = Color(light: RadixColor.CyanA.cyanA7, dark: RadixColor.CyanDarkA.cyanA7)
    static let cyanA8 = Color(light: RadixColor.CyanA.cyanA8, dark: RadixColor.CyanDarkA.cyanA8)
    static let cyanA9 = Color(light: RadixColor.CyanA.cyanA9, dark: RadixColor.CyanDarkA.cyanA9)
    static let cyanA10 = Color(light: RadixColor.CyanA.cyanA10, dark: RadixColor.CyanDarkA.cyanA10)
    static let cyanA11 = Color(light: RadixColor.CyanA.cyanA11, dark: RadixColor.CyanDarkA.cyanA11)
    static let cyanA12 = Color(light: RadixColor.CyanA.cyanA12, dark: RadixColor.CyanDarkA.cyanA12)
}
