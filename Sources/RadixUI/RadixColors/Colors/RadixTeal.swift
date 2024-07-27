//
//  RadixTeal.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Teal`
extension RadixColor {
    // Collection: teal
    class Teal {
        static let teal1 = Color(h: 165, s: 0.600, l: 0.988)
        static let teal2 = Color(h: 169, s: 0.647, l: 0.967)
        static let teal3 = Color(h: 169, s: 0.598, l: 0.940)
        static let teal4 = Color(h: 169, s: 0.531, l: 0.902)
        static let teal5 = Color(h: 170, s: 0.471, l: 0.850)
        static let teal6 = Color(h: 170, s: 0.426, l: 0.779)
        static let teal7 = Color(h: 170, s: 0.399, l: 0.681)
        static let teal8 = Color(h: 172, s: 0.421, l: 0.525)
        static let teal9 = Color(h: 173, s: 0.800, l: 0.360)
        static let teal10 = Color(h: 173, s: 0.834, l: 0.325)
        static let teal11 = Color(h: 174, s: 0.900, l: 0.252)
        static let teal12 = Color(h: 174, s: 0.650, l: 0.145)
    }
    // Collection: tealA
    class TealA {
        static let tealA1 = Color(h: 165, s: 0.952, l: 0.412, a: 0.020)
        static let tealA2 = Color(h: 169, s: 0.995, l: 0.394, a: 0.055)
        static let tealA3 = Color(h: 167, s: 0.976, l: 0.381, a: 0.095)
        static let tealA4 = Color(h: 168, s: 0.981, l: 0.346, a: 0.150)
        static let tealA5 = Color(h: 170, s: 0.994, l: 0.323, a: 0.220)
        static let tealA6 = Color(h: 170, s: 0.997, l: 0.301, a: 0.314)
        static let tealA7 = Color(h: 170, s: 0.993, l: 0.287, a: 0.448)
        static let tealA8 = Color(h: 172, s: 0.998, l: 0.297, a: 0.675)
        static let tealA9 = Color(h: 173, s: 0.998, l: 0.311, a: 0.930)
        static let tealA10 = Color(h: 173, s: 0.997, l: 0.287, a: 0.946)
        static let tealA11 = Color(h: 174, s: 0.998, l: 0.233, a: 0.977)
        static let tealA12 = Color(h: 174, s: 0.990, l: 0.100, a: 0.950)
    }
    // Collection: tealDark
    class TealDark {
        static let teal1 = Color(h: 167, s: 0.500, l: 0.067)
        static let teal2 = Color(h: 166, s: 0.550, l: 0.078)
        static let teal3 = Color(h: 167, s: 0.529, l: 0.106)
        static let teal4 = Color(h: 168, s: 0.525, l: 0.127)
        static let teal5 = Color(h: 169, s: 0.526, l: 0.148)
        static let teal6 = Color(h: 169, s: 0.531, l: 0.180)
        static let teal7 = Color(h: 171, s: 0.549, l: 0.238)
        static let teal8 = Color(h: 173, s: 0.598, l: 0.341)
        static let teal9 = Color(h: 173, s: 0.800, l: 0.360)
        static let teal10 = Color(h: 172, s: 0.895, l: 0.388)
        static let teal11 = Color(h: 170, s: 0.900, l: 0.445)
        static let teal12 = Color(h: 163, s: 0.700, l: 0.810)
    }
    // Collection: tealDarkA
    class TealDarkA {
        static let tealA1 = Color(h: 120, s: 1.000, l: 0.483, a: 0.009)
        static let tealA2 = Color(h: 141, s: 1.000, l: 0.490, a: 0.031)
        static let tealA3 = Color(h: 161, s: 1.000, l: 0.498, a: 0.074)
        static let tealA4 = Color(h: 167, s: 1.000, l: 0.497, a: 0.109)
        static let tealA5 = Color(h: 167, s: 1.000, l: 0.498, a: 0.148)
        static let tealA6 = Color(h: 169, s: 0.992, l: 0.525, a: 0.200)
        static let tealA7 = Color(h: 171, s: 0.993, l: 0.565, a: 0.304)
        static let tealA8 = Color(h: 173, s: 0.999, l: 0.590, a: 0.498)
        static let tealA9 = Color(h: 173, s: 0.998, l: 0.527, a: 0.611)
        static let tealA10 = Color(h: 172, s: 0.999, l: 0.508, a: 0.706)
        static let tealA11 = Color(h: 170, s: 0.998, l: 0.516, a: 0.832)
        static let tealA12 = Color(h: 163, s: 0.994, l: 0.859, a: 0.936)
    }
}

/// Add dynamic `RadixTeal` to `SwiftUI` colors
public extension Color {
    static let teal1 = Color(light: RadixColor.Teal.teal1, dark: RadixColor.TealDark.teal1)
    static let teal2 = Color(light: RadixColor.Teal.teal2, dark: RadixColor.TealDark.teal2)
    static let teal3 = Color(light: RadixColor.Teal.teal3, dark: RadixColor.TealDark.teal3)
    static let teal4 = Color(light: RadixColor.Teal.teal4, dark: RadixColor.TealDark.teal4)
    static let teal5 = Color(light: RadixColor.Teal.teal5, dark: RadixColor.TealDark.teal5)
    static let teal6 = Color(light: RadixColor.Teal.teal6, dark: RadixColor.TealDark.teal6)
    static let teal7 = Color(light: RadixColor.Teal.teal7, dark: RadixColor.TealDark.teal7)
    static let teal8 = Color(light: RadixColor.Teal.teal8, dark: RadixColor.TealDark.teal8)
    static let teal9 = Color(light: RadixColor.Teal.teal9, dark: RadixColor.TealDark.teal9)
    static let teal10 = Color(light: RadixColor.Teal.teal10, dark: RadixColor.TealDark.teal10)
    static let teal11 = Color(light: RadixColor.Teal.teal11, dark: RadixColor.TealDark.teal11)
    static let teal12 = Color(light: RadixColor.Teal.teal12, dark: RadixColor.TealDark.teal12)
    
    static let tealA1 = Color(light: RadixColor.TealA.tealA1, dark: RadixColor.TealDarkA.tealA1)
    static let tealA2 = Color(light: RadixColor.TealA.tealA2, dark: RadixColor.TealDarkA.tealA2)
    static let tealA3 = Color(light: RadixColor.TealA.tealA3, dark: RadixColor.TealDarkA.tealA3)
    static let tealA4 = Color(light: RadixColor.TealA.tealA4, dark: RadixColor.TealDarkA.tealA4)
    static let tealA5 = Color(light: RadixColor.TealA.tealA5, dark: RadixColor.TealDarkA.tealA5)
    static let tealA6 = Color(light: RadixColor.TealA.tealA6, dark: RadixColor.TealDarkA.tealA6)
    static let tealA7 = Color(light: RadixColor.TealA.tealA7, dark: RadixColor.TealDarkA.tealA7)
    static let tealA8 = Color(light: RadixColor.TealA.tealA8, dark: RadixColor.TealDarkA.tealA8)
    static let tealA9 = Color(light: RadixColor.TealA.tealA9, dark: RadixColor.TealDarkA.tealA9)
    static let tealA10 = Color(light: RadixColor.TealA.tealA10, dark: RadixColor.TealDarkA.tealA10)
    static let tealA11 = Color(light: RadixColor.TealA.tealA11, dark: RadixColor.TealDarkA.tealA11)
    static let tealA12 = Color(light: RadixColor.TealA.tealA12, dark: RadixColor.TealDarkA.tealA12)
}
