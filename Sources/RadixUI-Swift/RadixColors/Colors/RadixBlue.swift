//
//  RadixBlue.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Blue`
extension RadixColor {
    // Collection: blue
    class Blue {
        static let blue1 = Color(h: 206, s: 1.000, l: 0.992)
        static let blue2 = Color(h: 210, s: 1.000, l: 0.980)
        static let blue3 = Color(h: 209, s: 1.000, l: 0.965)
        static let blue4 = Color(h: 210, s: 0.988, l: 0.940)
        static let blue5 = Color(h: 209, s: 0.950, l: 0.901)
        static let blue6 = Color(h: 209, s: 0.812, l: 0.845)
        static let blue7 = Color(h: 208, s: 0.775, l: 0.769)
        static let blue8 = Color(h: 206, s: 0.819, l: 0.653)
        static let blue9 = Color(h: 206, s: 1.000, l: 0.500)
        static let blue10 = Color(h: 208, s: 0.935, l: 0.474)
        static let blue11 = Color(h: 211, s: 0.900, l: 0.420)
        static let blue12 = Color(h: 216, s: 0.710, l: 0.230)
    }
    // Collection: blueA
    class BlueA {
        static let blueA1 = Color(h: 210, s: 1.000, l: 0.510, a: 0.016)
        static let blueA2 = Color(h: 210, s: 1.000, l: 0.510, a: 0.040)
        static let blueA3 = Color(h: 210, s: 1.000, l: 0.503, a: 0.071)
        static let blueA4 = Color(h: 210, s: 1.000, l: 0.501, a: 0.118)
        static let blueA5 = Color(h: 209, s: 0.991, l: 0.492, a: 0.193)
        static let blueA6 = Color(h: 209, s: 0.995, l: 0.453, a: 0.283)
        static let blueA7 = Color(h: 208, s: 0.999, l: 0.438, a: 0.412)
        static let blueA8 = Color(h: 206, s: 0.998, l: 0.451, a: 0.632)
        static let blueA9 = Color(h: 206, s: 1.000, l: 0.500, a: 1.000)
        static let blueA10 = Color(h: 208, s: 0.999, l: 0.458, a: 0.969)
        static let blueA11 = Color(h: 211, s: 1.000, l: 0.394, a: 0.957)
        static let blueA12 = Color(h: 216, s: 0.996, l: 0.175, a: 0.934)
    }
    // Collection: blueDark
    class BlueDark {
        static let blue1 = Color(h: 212, s: 0.350, l: 0.092)
        static let blue2 = Color(h: 216, s: 0.500, l: 0.118)
        static let blue3 = Color(h: 214, s: 0.576, l: 0.156)
        static let blue4 = Color(h: 214, s: 0.623, l: 0.184)
        static let blue5 = Color(h: 213, s: 0.666, l: 0.211)
        static let blue6 = Color(h: 212, s: 0.726, l: 0.252)
        static let blue7 = Color(h: 211, s: 0.813, l: 0.324)
        static let blue8 = Color(h: 211, s: 0.852, l: 0.478)
        static let blue9 = Color(h: 206, s: 1.000, l: 0.500)
        static let blue10 = Color(h: 206, s: 1.000, l: 0.618)
        static let blue11 = Color(h: 205, s: 1.000, l: 0.710)
        static let blue12 = Color(h: 205, s: 1.000, l: 0.880)
    }
    //  Collection: blueDarkA
    class BlueDarkA {
        static let blueA1 = Color(h: 240, s: 1.000, l: 0.495, a: 0.035)
        static let blueA2 = Color(h: 227, s: 1.000, l: 0.500, a: 0.091)
        static let blueA3 = Color(h: 216, s: 1.000, l: 0.500, a: 0.169)
        static let blueA4 = Color(h: 214, s: 1.000, l: 0.498, a: 0.226)
        static let blueA5 = Color(h: 213, s: 0.998, l: 0.505, a: 0.286)
        static let blueA6 = Color(h: 212, s: 0.998, l: 0.515, a: 0.377)
        static let blueA7 = Color(h: 211, s: 0.998, l: 0.514, a: 0.546)
        static let blueA8 = Color(h: 211, s: 0.999, l: 0.533, a: 0.875)
        static let blueA9 = Color(h: 206, s: 1.000, l: 0.500, a: 1.000)
        static let blueA10 = Color(h: 206, s: 1.000, l: 0.618, a: 1.000)
        static let blueA11 = Color(h: 205, s: 1.000, l: 0.710, a: 1.000)
        static let blueA12 = Color(h: 206, s: 1.000, l: 0.880, a: 1.000)
    }
}

/// Add dynamic `RadixBlue` to `SwiftUI` colors
public extension Color {
    static let blue1 = Color(light: RadixColor.Blue.blue1, dark: RadixColor.BlueDark.blue1)
    static let blue2 = Color(light: RadixColor.Blue.blue2, dark: RadixColor.BlueDark.blue2)
    static let blue3 = Color(light: RadixColor.Blue.blue3, dark: RadixColor.BlueDark.blue3)
    static let blue4 = Color(light: RadixColor.Blue.blue4, dark: RadixColor.BlueDark.blue4)
    static let blue5 = Color(light: RadixColor.Blue.blue5, dark: RadixColor.BlueDark.blue5)
    static let blue6 = Color(light: RadixColor.Blue.blue6, dark: RadixColor.BlueDark.blue6)
    static let blue7 = Color(light: RadixColor.Blue.blue7, dark: RadixColor.BlueDark.blue7)
    static let blue8 = Color(light: RadixColor.Blue.blue8, dark: RadixColor.BlueDark.blue8)
    static let blue9 = Color(light: RadixColor.Blue.blue9, dark: RadixColor.BlueDark.blue9)
    static let blue10 = Color(light: RadixColor.Blue.blue10, dark: RadixColor.BlueDark.blue10)
    static let blue11 = Color(light: RadixColor.Blue.blue11, dark: RadixColor.BlueDark.blue11)
    static let blue12 = Color(light: RadixColor.Blue.blue12, dark: RadixColor.BlueDark.blue12)

    static let blueA1 = Color(light: RadixColor.BlueA.blueA1, dark: RadixColor.BlueDarkA.blueA1)
    static let blueA2 = Color(light: RadixColor.BlueA.blueA2, dark: RadixColor.BlueDarkA.blueA2)
    static let blueA3 = Color(light: RadixColor.BlueA.blueA3, dark: RadixColor.BlueDarkA.blueA3)
    static let blueA4 = Color(light: RadixColor.BlueA.blueA4, dark: RadixColor.BlueDarkA.blueA4)
    static let blueA5 = Color(light: RadixColor.BlueA.blueA5, dark: RadixColor.BlueDarkA.blueA5)
    static let blueA6 = Color(light: RadixColor.BlueA.blueA6, dark: RadixColor.BlueDarkA.blueA6)
    static let blueA7 = Color(light: RadixColor.BlueA.blueA7, dark: RadixColor.BlueDarkA.blueA7)
    static let blueA8 = Color(light: RadixColor.BlueA.blueA8, dark: RadixColor.BlueDarkA.blueA8)
    static let blueA9 = Color(light: RadixColor.BlueA.blueA9, dark: RadixColor.BlueDarkA.blueA9)
    static let blueA10 = Color(light: RadixColor.BlueA.blueA10, dark: RadixColor.BlueDarkA.blueA10)
    static let blueA11 = Color(light: RadixColor.BlueA.blueA11, dark: RadixColor.BlueDarkA.blueA11)
    static let blueA12 = Color(light: RadixColor.BlueA.blueA12, dark: RadixColor.BlueDarkA.blueA12)
}
