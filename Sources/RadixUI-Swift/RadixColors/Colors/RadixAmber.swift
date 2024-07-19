//
//  RadixAmber.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Amber`
extension RadixColor {
    // Collection: amber
    class Amber {
        static let amber1 = Color(h: 39, s: 0.700, l: 0.990)
        static let amber2 = Color(h: 40, s: 1.000, l: 0.965)
        static let amber3 = Color(h: 45, s: 1.000, l: 0.908)
        static let amber4 = Color(h: 44, s: 1.000, l: 0.858)
        static let amber5 = Color(h: 40, s: 1.000, l: 0.815)
        static let amber6 = Color(h: 39, s: 0.836, l: 0.754)
        static let amber7 = Color(h: 37, s: 0.669, l: 0.682)
        static let amber8 = Color(h: 35, s: 0.598, l: 0.600)
        static let amber9 = Color(h: 42, s: 1.000, l: 0.620)
        static let amber10 = Color(h: 42, s: 1.000, l: 0.550)
        static let amber11 = Color(h: 25, s: 0.500, l: 0.380)
        static let amber12 = Color(h: 25, s: 0.400, l: 0.220)
    }
    // Collection: amberA
    class AmberA {
        static let amberA1 = Color(h: 40, s: 0.949, l: 0.387, a: 0.016)
        static let amberA2 = Color(h: 40, s: 1.000, l: 0.503, a: 0.071)
        static let amberA3 = Color(h: 45, s: 1.000, l: 0.502, a: 0.185)
        static let amberA4 = Color(h: 44, s: 1.000, l: 0.501, a: 0.283)
        static let amberA5 = Color(h: 40, s: 1.000, l: 0.501, a: 0.369)
        static let amberA6 = Color(h: 39, s: 1.000, l: 0.457, a: 0.451)
        static let amberA7 = Color(h: 37, s: 0.997, l: 0.401, a: 0.530)
        static let amberA8 = Color(h: 35, s: 0.997, l: 0.375, a: 0.640)
        static let amberA9 = Color(h: 42, s: 1.000, l: 0.500, a: 0.761)
        static let amberA10 = Color(h: 42, s: 1.000, l: 0.501, a: 0.899)
        static let amberA11 = Color(h: 25, s: 0.999, l: 0.235, a: 0.812)
        static let amberA12 = Color(h: 24, s: 0.996, l: 0.102, a: 0.867)
    }
    // Collection: amberDark
    class AmberDark {
        static let amber1 = Color(h: 36, s: 1.000, l: 0.061)
        static let amber2 = Color(h: 36, s: 0.805, l: 0.080)
        static let amber3 = Color(h: 35, s: 0.634, l: 0.114)
        static let amber4 = Color(h: 34, s: 0.588, l: 0.141)
        static let amber5 = Color(h: 34, s: 0.581, l: 0.167)
        static let amber6 = Color(h: 35, s: 0.583, l: 0.205)
        static let amber7 = Color(h: 35, s: 0.590, l: 0.274)
        static let amber8 = Color(h: 36, s: 0.602, l: 0.414)
        static let amber9 = Color(h: 42, s: 1.000, l: 0.620)
        static let amber10 = Color(h: 43, s: 1.000, l: 0.640)
        static let amber11 = Color(h: 43, s: 1.000, l: 0.650)
        static let amber12 = Color(h: 41, s: 1.000, l: 0.850)
    }
    // Collection: amberDarkA
    class AmberDarkA {
        static let amberA1 = Color(h: 0, s: 1.000, l: 0.490, a: 0.031)
        static let amberA2 = Color(h: 6, s: 1.000, l: 0.494, a: 0.057)
        static let amberA3 = Color(h: 24, s: 1.000, l: 0.500, a: 0.104)
        static let amberA4 = Color(h: 30, s: 1.000, l: 0.500, a: 0.143)
        static let amberA5 = Color(h: 33, s: 1.000, l: 0.498, a: 0.187)
        static let amberA6 = Color(h: 34, s: 0.996, l: 0.531, a: 0.256)
        static let amberA7 = Color(h: 35, s: 0.998, l: 0.573, a: 0.377)
        static let amberA8 = Color(h: 36, s: 0.999, l: 0.603, a: 0.628)
        static let amberA9 = Color(h: 42, s: 1.000, l: 0.620, a: 1.000)
        static let amberA10 = Color(h: 43, s: 1.000, l: 0.639, a: 1.000)
        static let amberA11 = Color(h: 43, s: 1.000, l: 0.651, a: 1.000)
        static let amberA12 = Color(h: 41, s: 1.000, l: 0.851, a: 1.000)
    }
}

/// Add dynamic `RadixAmber` to `SwiftUI` colors
public extension Color {
    static let amber1 = Color(light: RadixColor.Amber.amber1, dark: RadixColor.AmberDark.amber1)
    static let amber2 = Color(light: RadixColor.Amber.amber2, dark: RadixColor.AmberDark.amber2)
    static let amber3 = Color(light: RadixColor.Amber.amber3, dark: RadixColor.AmberDark.amber3)
    static let amber4 = Color(light: RadixColor.Amber.amber4, dark: RadixColor.AmberDark.amber4)
    static let amber5 = Color(light: RadixColor.Amber.amber5, dark: RadixColor.AmberDark.amber5)
    static let amber6 = Color(light: RadixColor.Amber.amber6, dark: RadixColor.AmberDark.amber6)
    static let amber7 = Color(light: RadixColor.Amber.amber7, dark: RadixColor.AmberDark.amber7)
    static let amber8 = Color(light: RadixColor.Amber.amber8, dark: RadixColor.AmberDark.amber8)
    static let amber9 = Color(light: RadixColor.Amber.amber9, dark: RadixColor.AmberDark.amber9)
    static let amber10 = Color(light: RadixColor.Amber.amber10, dark: RadixColor.AmberDark.amber10)
    static let amber11 = Color(light: RadixColor.Amber.amber11, dark: RadixColor.AmberDark.amber11)
    static let amber12 = Color(light: RadixColor.Amber.amber12, dark: RadixColor.AmberDark.amber12)

    static let amberA1 = Color(light: RadixColor.AmberA.amberA1, dark: RadixColor.AmberDarkA.amberA1)
    static let amberA2 = Color(light: RadixColor.AmberA.amberA2, dark: RadixColor.AmberDarkA.amberA2)
    static let amberA3 = Color(light: RadixColor.AmberA.amberA3, dark: RadixColor.AmberDarkA.amberA3)
    static let amberA4 = Color(light: RadixColor.AmberA.amberA4, dark: RadixColor.AmberDarkA.amberA4)
    static let amberA5 = Color(light: RadixColor.AmberA.amberA5, dark: RadixColor.AmberDarkA.amberA5)
    static let amberA6 = Color(light: RadixColor.AmberA.amberA6, dark: RadixColor.AmberDarkA.amberA6)
    static let amberA7 = Color(light: RadixColor.AmberA.amberA7, dark: RadixColor.AmberDarkA.amberA7)
    static let amberA8 = Color(light: RadixColor.AmberA.amberA8, dark: RadixColor.AmberDarkA.amberA8)
    static let amberA9 = Color(light: RadixColor.AmberA.amberA9, dark: RadixColor.AmberDarkA.amberA9)
    static let amberA10 = Color(light: RadixColor.AmberA.amberA10, dark: RadixColor.AmberDarkA.amberA10)
    static let amberA11 = Color(light: RadixColor.AmberA.amberA11, dark: RadixColor.AmberDarkA.amberA11)
    static let amberA12 = Color(light: RadixColor.AmberA.amberA12, dark: RadixColor.AmberDarkA.amberA12)
}
