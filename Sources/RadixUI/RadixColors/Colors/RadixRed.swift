//
//  RadixRed.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Red`
extension RadixColor {
    // Collection: red
    class Red {
        static let red1 = Color(h: 359, s: 1.000, l: 0.994)
        static let red2 = Color(h: 0, s: 1.000, l: 0.984)
        static let red3 = Color(h: 360, s: 1.000, l: 0.968)
        static let red4 = Color(h: 360, s: 0.979, l: 0.948)
        static let red5 = Color(h: 360, s: 0.902, l: 0.919)
        static let red6 = Color(h: 360, s: 0.817, l: 0.878)
        static let red7 = Color(h: 359, s: 0.742, l: 0.817)
        static let red8 = Color(h: 359, s: 0.695, l: 0.743)
        static let red9 = Color(h: 358, s: 0.750, l: 0.590)
        static let red10 = Color(h: 358, s: 0.674, l: 0.546)
        static let red11 = Color(h: 358, s: 0.650, l: 0.470)
        static let red12 = Color(h: 350, s: 0.630, l: 0.240)
    }
    // Collection: redA
    class RedA {
        static let redA1 = Color(h: 0, s: 1.000, l: 0.510, a: 0.012)
        static let redA2 = Color(h: 0, s: 1.000, l: 0.510, a: 0.032)
        static let redA3 = Color(h: 0, s: 1.000, l: 0.502, a: 0.063)
        static let redA4 = Color(h: 0, s: 1.000, l: 0.500, a: 0.102)
        static let redA5 = Color(h: 0, s: 0.999, l: 0.475, a: 0.153)
        static let redA6 = Color(h: 0, s: 0.995, l: 0.449, a: 0.224)
        static let redA7 = Color(h: 359, s: 0.997, l: 0.427, a: 0.318)
        static let redA8 = Color(h: 359, s: 0.996, l: 0.411, a: 0.436)
        static let redA9 = Color(h: 358, s: 0.999, l: 0.429, a: 0.718)
        static let redA10 = Color(h: 358, s: 0.999, l: 0.402, a: 0.761)
        static let redA11 = Color(h: 358, s: 0.998, l: 0.367, a: 0.836)
        static let redA12 = Color(h: 351, s: 0.999, l: 0.166, a: 0.910)
    }
    // Collection: redDark
    class RedDark {
        static let red1 = Color(h: 353, s: 0.230, l: 0.098)
        static let red2 = Color(h: 354, s: 0.302, l: 0.124)
        static let red3 = Color(h: 353, s: 0.408, l: 0.164)
        static let red4 = Color(h: 353, s: 0.463, l: 0.192)
        static let red5 = Color(h: 353, s: 0.512, l: 0.221)
        static let red6 = Color(h: 353, s: 0.573, l: 0.262)
        static let red7 = Color(h: 354, s: 0.657, l: 0.332)
        static let red8 = Color(h: 358, s: 0.750, l: 0.471)
        static let red9 = Color(h: 358, s: 0.750, l: 0.590)
        static let red10 = Color(h: 359, s: 0.848, l: 0.676)
        static let red11 = Color(h: 358, s: 1.000, l: 0.760)
        static let red12 = Color(h: 350, s: 1.000, l: 0.910)
    }
    // Collection: redDarkA
    class RedDarkA {
        static let redA1 = Color(h: 0, s: 1.000, l: 0.490, a: 0.031)
        static let redA2 = Color(h: 354, s: 1.000, l: 0.498, a: 0.074)
        static let redA3 = Color(h: 353, s: 0.993, l: 0.559, a: 0.152)
        static let redA4 = Color(h: 352, s: 0.998, l: 0.565, a: 0.208)
        static let redA5 = Color(h: 354, s: 0.993, l: 0.575, a: 0.265)
        static let redA6 = Color(h: 354, s: 0.998, l: 0.575, a: 0.351)
        static let redA7 = Color(h: 354, s: 0.997, l: 0.566, a: 0.503)
        static let redA8 = Color(h: 358, s: 0.998, l: 0.561, a: 0.806)
        static let redA9 = Color(h: 358, s: 0.998, l: 0.653, a: 0.888)
        static let redA10 = Color(h: 359, s: 0.999, l: 0.709, a: 0.944)
        static let redA11 = Color(h: 358, s: 1.000, l: 0.761, a: 1.000)
        static let redA12 = Color(h: 350, s: 1.000, l: 0.910, a: 1.000)
    }
}

/// Add dynamic `RadixRed` to `SwiftUI` colors
public extension Color {
    static let red1 = Color(light: RadixColor.Red.red1, dark: RadixColor.RedDark.red1)
    static let red2 = Color(light: RadixColor.Red.red2, dark: RadixColor.RedDark.red2)
    static let red3 = Color(light: RadixColor.Red.red3, dark: RadixColor.RedDark.red3)
    static let red4 = Color(light: RadixColor.Red.red4, dark: RadixColor.RedDark.red4)
    static let red5 = Color(light: RadixColor.Red.red5, dark: RadixColor.RedDark.red5)
    static let red6 = Color(light: RadixColor.Red.red6, dark: RadixColor.RedDark.red6)
    static let red7 = Color(light: RadixColor.Red.red7, dark: RadixColor.RedDark.red7)
    static let red8 = Color(light: RadixColor.Red.red8, dark: RadixColor.RedDark.red8)
    static let red9 = Color(light: RadixColor.Red.red9, dark: RadixColor.RedDark.red9)
    static let red10 = Color(light: RadixColor.Red.red10, dark: RadixColor.RedDark.red10)
    static let red11 = Color(light: RadixColor.Red.red11, dark: RadixColor.RedDark.red11)
    static let red12 = Color(light: RadixColor.Red.red12, dark: RadixColor.RedDark.red12)
    
    static let redA1 = Color(light: RadixColor.RedA.redA1, dark: RadixColor.RedDarkA.redA1)
    static let redA2 = Color(light: RadixColor.RedA.redA2, dark: RadixColor.RedDarkA.redA2)
    static let redA3 = Color(light: RadixColor.RedA.redA3, dark: RadixColor.RedDarkA.redA3)
    static let redA4 = Color(light: RadixColor.RedA.redA4, dark: RadixColor.RedDarkA.redA4)
    static let redA5 = Color(light: RadixColor.RedA.redA5, dark: RadixColor.RedDarkA.redA5)
    static let redA6 = Color(light: RadixColor.RedA.redA6, dark: RadixColor.RedDarkA.redA6)
    static let redA7 = Color(light: RadixColor.RedA.redA7, dark: RadixColor.RedDarkA.redA7)
    static let redA8 = Color(light: RadixColor.RedA.redA8, dark: RadixColor.RedDarkA.redA8)
    static let redA9 = Color(light: RadixColor.RedA.redA9, dark: RadixColor.RedDarkA.redA9)
    static let redA10 = Color(light: RadixColor.RedA.redA10, dark: RadixColor.RedDarkA.redA10)
    static let redA11 = Color(light: RadixColor.RedA.redA11, dark: RadixColor.RedDarkA.redA11)
    static let redA12 = Color(light: RadixColor.RedA.redA12, dark: RadixColor.RedDarkA.redA12)
}
