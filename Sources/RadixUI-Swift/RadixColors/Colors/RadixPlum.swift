//
//  RadixPlum.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Plum`
extension RadixColor {
    // Collection: plum
    class Plum {
        static let plum1 = Color(h: 292, s: 0.900, l: 0.994)
        static let plum2 = Color(h: 300, s: 1.000, l: 0.986)
        static let plum3 = Color(h: 299, s: 0.712, l: 0.964)
        static let plum4 = Color(h: 299, s: 0.620, l: 0.938)
        static let plum5 = Color(h: 298, s: 0.561, l: 0.905)
        static let plum6 = Color(h: 296, s: 0.513, l: 0.858)
        static let plum7 = Color(h: 295, s: 0.482, l: 0.789)
        static let plum8 = Color(h: 292, s: 0.477, l: 0.708)
        static let plum9 = Color(h: 292, s: 0.450, l: 0.510)
        static let plum10 = Color(h: 292, s: 0.502, l: 0.469)
        static let plum11 = Color(h: 292, s: 0.600, l: 0.425)
        static let plum12 = Color(h: 291, s: 0.570, l: 0.232)
    }
    // Collection: plumA
    class PlumA {
        static let plumA1 = Color(h: 280, s: 1.000, l: 0.510, a: 0.012)
        static let plumA2 = Color(h: 300, s: 1.000, l: 0.510, a: 0.028)
        static let plumA3 = Color(h: 300, s: 0.990, l: 0.409, a: 0.063)
        static let plumA4 = Color(h: 300, s: 0.999, l: 0.385, a: 0.102)
        static let plumA5 = Color(h: 298, s: 0.982, l: 0.359, a: 0.150)
        static let plumA6 = Color(h: 297, s: 0.996, l: 0.337, a: 0.216)
        static let plumA7 = Color(h: 295, s: 0.997, l: 0.326, a: 0.314)
        static let plumA8 = Color(h: 292, s: 0.996, l: 0.324, a: 0.432)
        static let plumA9 = Color(h: 292, s: 0.999, l: 0.310, a: 0.710)
        static let plumA10 = Color(h: 292, s: 0.999, l: 0.308, a: 0.765)
        static let plumA11 = Color(h: 292, s: 0.998, l: 0.307, a: 0.832)
        static let plumA12 = Color(h: 291, s: 1.000, l: 0.148, a: 0.902)
    }
    // Collection: plumDark
    class PlumDark {
        static let plum1 = Color(h: 301, s: 0.200, l: 0.094)
        static let plum2 = Color(h: 300, s: 0.288, l: 0.116)
        static let plum3 = Color(h: 299, s: 0.318, l: 0.155)
        static let plum4 = Color(h: 298, s: 0.334, l: 0.183)
        static let plum5 = Color(h: 297, s: 0.346, l: 0.210)
        static let plum6 = Color(h: 296, s: 0.360, l: 0.251)
        static let plum7 = Color(h: 295, s: 0.379, l: 0.327)
        static let plum8 = Color(h: 292, s: 0.402, l: 0.478)
        static let plum9 = Color(h: 292, s: 0.450, l: 0.510)
        static let plum10 = Color(h: 291, s: 0.512, l: 0.602)
        static let plum11 = Color(h: 290, s: 0.700, l: 0.740)
        static let plum12 = Color(h: 300, s: 0.600, l: 0.895)
    }
    // Collection: plumDarkA
    class PlumDarkA {
        static let plumA1 = Color(h: 300, s: 1.000, l: 0.493, a: 0.022)
        static let plumA2 = Color(h: 300, s: 1.000, l: 0.497, a: 0.061)
        static let plumA3 = Color(h: 300, s: 0.986, l: 0.592, a: 0.122)
        static let plumA4 = Color(h: 298, s: 0.993, l: 0.629, a: 0.165)
        static let plumA5 = Color(h: 297, s: 0.997, l: 0.650, a: 0.208)
        static let plumA6 = Color(h: 296, s: 0.997, l: 0.669, a: 0.273)
        static let plumA7 = Color(h: 295, s: 1.000, l: 0.686, a: 0.394)
        static let plumA8 = Color(h: 292, s: 0.997, l: 0.697, a: 0.637)
        static let plumA9 = Color(h: 292, s: 0.997, l: 0.686, a: 0.702)
        static let plumA10 = Color(h: 291, s: 0.998, l: 0.742, a: 0.784)
        static let plumA11 = Color(h: 290, s: 0.997, l: 0.800, a: 0.914)
        static let plumA12 = Color(h: 300, s: 0.991, l: 0.934, a: 0.953)
    }
}

/// Add dynamic `RadixPlum` to `SwiftUI` colors
public extension Color {
    static let plum1 = Color(light: RadixColor.Plum.plum1, dark: RadixColor.PlumDark.plum1)
    static let plum2 = Color(light: RadixColor.Plum.plum2, dark: RadixColor.PlumDark.plum2)
    static let plum3 = Color(light: RadixColor.Plum.plum3, dark: RadixColor.PlumDark.plum3)
    static let plum4 = Color(light: RadixColor.Plum.plum4, dark: RadixColor.PlumDark.plum4)
    static let plum5 = Color(light: RadixColor.Plum.plum5, dark: RadixColor.PlumDark.plum5)
    static let plum6 = Color(light: RadixColor.Plum.plum6, dark: RadixColor.PlumDark.plum6)
    static let plum7 = Color(light: RadixColor.Plum.plum7, dark: RadixColor.PlumDark.plum7)
    static let plum8 = Color(light: RadixColor.Plum.plum8, dark: RadixColor.PlumDark.plum8)
    static let plum9 = Color(light: RadixColor.Plum.plum9, dark: RadixColor.PlumDark.plum9)
    static let plum10 = Color(light: RadixColor.Plum.plum10, dark: RadixColor.PlumDark.plum10)
    static let plum11 = Color(light: RadixColor.Plum.plum11, dark: RadixColor.PlumDark.plum11)
    static let plum12 = Color(light: RadixColor.Plum.plum12, dark: RadixColor.PlumDark.plum12)
    
    static let plumA1 = Color(light: RadixColor.PlumA.plumA1, dark: RadixColor.PlumDarkA.plumA1)
    static let plumA2 = Color(light: RadixColor.PlumA.plumA2, dark: RadixColor.PlumDarkA.plumA2)
    static let plumA3 = Color(light: RadixColor.PlumA.plumA3, dark: RadixColor.PlumDarkA.plumA3)
    static let plumA4 = Color(light: RadixColor.PlumA.plumA4, dark: RadixColor.PlumDarkA.plumA4)
    static let plumA5 = Color(light: RadixColor.PlumA.plumA5, dark: RadixColor.PlumDarkA.plumA5)
    static let plumA6 = Color(light: RadixColor.PlumA.plumA6, dark: RadixColor.PlumDarkA.plumA6)
    static let plumA7 = Color(light: RadixColor.PlumA.plumA7, dark: RadixColor.PlumDarkA.plumA7)
    static let plumA8 = Color(light: RadixColor.PlumA.plumA8, dark: RadixColor.PlumDarkA.plumA8)
    static let plumA9 = Color(light: RadixColor.PlumA.plumA9, dark: RadixColor.PlumDarkA.plumA9)
    static let plumA10 = Color(light: RadixColor.PlumA.plumA10, dark: RadixColor.PlumDarkA.plumA10)
    static let plumA11 = Color(light: RadixColor.PlumA.plumA11, dark: RadixColor.PlumDarkA.plumA11)
    static let plumA12 = Color(light: RadixColor.PlumA.plumA12, dark: RadixColor.PlumDarkA.plumA12)
}
