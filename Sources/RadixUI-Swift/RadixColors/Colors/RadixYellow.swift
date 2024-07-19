//
//  RadixYellow.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Yellow`
extension RadixColor {
    // Collection: yellow
    class Yellow {
        static let yellow1 = Color(h: 60, s: 0.540, l: 0.985)
        static let yellow2 = Color(h: 52, s: 1.000, l: 0.939)
        static let yellow3 = Color(h: 53, s: 1.000, l: 0.889)
        static let yellow4 = Color(h: 53, s: 0.937, l: 0.839)
        static let yellow5 = Color(h: 52, s: 0.847, l: 0.787)
        static let yellow6 = Color(h: 51, s: 0.730, l: 0.724)
        static let yellow7 = Color(h: 48, s: 0.596, l: 0.643)
        static let yellow8 = Color(h: 46, s: 0.550, l: 0.529)
        static let yellow9 = Color(h: 53, s: 0.960, l: 0.580)
        static let yellow10 = Color(h: 52, s: 0.950, l: 0.520)
        static let yellow11 = Color(h: 42, s: 0.500, l: 0.310)
        static let yellow12 = Color(h: 42, s: 0.400, l: 0.200)
    }
    // Collection: yellowA
    class YellowA {
        static let yellowA1 = Color(h: 60, s: 0.943, l: 0.346, a: 0.024)
        static let yellowA2 = Color(h: 52, s: 1.000, l: 0.502, a: 0.122)
        static let yellowA3 = Color(h: 53, s: 1.000, l: 0.501, a: 0.224)
        static let yellowA4 = Color(h: 53, s: 0.998, l: 0.482, a: 0.314)
        static let yellowA5 = Color(h: 52, s: 0.995, l: 0.461, a: 0.393)
        static let yellowA6 = Color(h: 51, s: 0.997, l: 0.423, a: 0.479)
        static let yellowA7 = Color(h: 48, s: 0.998, l: 0.373, a: 0.569)
        static let yellowA8 = Color(h: 46, s: 0.998, l: 0.355, a: 0.730)
        static let yellowA9 = Color(h: 53, s: 0.999, l: 0.491, a: 0.824)
        static let yellowA10 = Color(h: 52, s: 0.998, l: 0.488, a: 0.938)
        static let yellowA11 = Color(h: 42, s: 0.994, l: 0.185, a: 0.844)
        static let yellowA12 = Color(h: 42, s: 0.993, l: 0.090, a: 0.879)
    }
    // Collection: yellowDark
    class YellowDark {
        static let yellow1 = Color(h: 45, s: 1.000, l: 0.055)
        static let yellow2 = Color(h: 44, s: 0.789, l: 0.075)
        static let yellow3 = Color(h: 44, s: 0.619, l: 0.106)
        static let yellow4 = Color(h: 44, s: 0.575, l: 0.130)
        static let yellow5 = Color(h: 45, s: 0.570, l: 0.152)
        static let yellow6 = Color(h: 46, s: 0.575, l: 0.183)
        static let yellow7 = Color(h: 47, s: 0.585, l: 0.240)
        static let yellow8 = Color(h: 50, s: 0.598, l: 0.351)
        static let yellow9 = Color(h: 53, s: 0.960, l: 0.580)
        static let yellow10 = Color(h: 53, s: 0.968, l: 0.675)
        static let yellow11 = Color(h: 55, s: 1.000, l: 0.600)
        static let yellow12 = Color(h: 53, s: 1.000, l: 0.840)
    }
    // Collection: yellowDarkA
    class YellowDarkA {
        static let yellowA1 = Color(h: 0, s: 1.000, l: 0.483, a: 0.018)
        static let yellowA2 = Color(h: 17, s: 1.000, l: 0.493, a: 0.044)
        static let yellowA3 = Color(h: 36, s: 1.000, l: 0.498, a: 0.087)
        static let yellowA4 = Color(h: 41, s: 1.000, l: 0.497, a: 0.122)
        static let yellowA5 = Color(h: 44, s: 1.000, l: 0.498, a: 0.161)
        static let yellowA6 = Color(h: 46, s: 0.992, l: 0.508, a: 0.213)
        static let yellowA7 = Color(h: 47, s: 0.994, l: 0.552, a: 0.317)
        static let yellowA8 = Color(h: 50, s: 0.996, l: 0.592, a: 0.516)
        static let yellowA9 = Color(h: 53, s: 0.999, l: 0.589, a: 0.983)
        static let yellowA10 = Color(h: 53, s: 0.997, l: 0.682, a: 0.988)
        static let yellowA11 = Color(h: 55, s: 1.000, l: 0.600, a: 1.000)
        static let yellowA12 = Color(h: 53, s: 1.000, l: 0.839, a: 1.000)
    }
}

/// Add dynamic `RadixYellow` to `SwiftUI` colors
public extension Color {
    static let yellow1 = Color(light: RadixColor.Yellow.yellow1, dark: RadixColor.YellowDark.yellow1)
    static let yellow2 = Color(light: RadixColor.Yellow.yellow2, dark: RadixColor.YellowDark.yellow2)
    static let yellow3 = Color(light: RadixColor.Yellow.yellow3, dark: RadixColor.YellowDark.yellow3)
    static let yellow4 = Color(light: RadixColor.Yellow.yellow4, dark: RadixColor.YellowDark.yellow4)
    static let yellow5 = Color(light: RadixColor.Yellow.yellow5, dark: RadixColor.YellowDark.yellow5)
    static let yellow6 = Color(light: RadixColor.Yellow.yellow6, dark: RadixColor.YellowDark.yellow6)
    static let yellow7 = Color(light: RadixColor.Yellow.yellow7, dark: RadixColor.YellowDark.yellow7)
    static let yellow8 = Color(light: RadixColor.Yellow.yellow8, dark: RadixColor.YellowDark.yellow8)
    static let yellow9 = Color(light: RadixColor.Yellow.yellow9, dark: RadixColor.YellowDark.yellow9)
    static let yellow10 = Color(light: RadixColor.Yellow.yellow10, dark: RadixColor.YellowDark.yellow10)
    static let yellow11 = Color(light: RadixColor.Yellow.yellow11, dark: RadixColor.YellowDark.yellow11)
    static let yellow12 = Color(light: RadixColor.Yellow.yellow12, dark: RadixColor.YellowDark.yellow12)
    
    static let yellowA1 = Color(light: RadixColor.YellowA.yellowA1, dark: RadixColor.YellowDarkA.yellowA1)
    static let yellowA2 = Color(light: RadixColor.YellowA.yellowA2, dark: RadixColor.YellowDarkA.yellowA2)
    static let yellowA3 = Color(light: RadixColor.YellowA.yellowA3, dark: RadixColor.YellowDarkA.yellowA3)
    static let yellowA4 = Color(light: RadixColor.YellowA.yellowA4, dark: RadixColor.YellowDarkA.yellowA4)
    static let yellowA5 = Color(light: RadixColor.YellowA.yellowA5, dark: RadixColor.YellowDarkA.yellowA5)
    static let yellowA6 = Color(light: RadixColor.YellowA.yellowA6, dark: RadixColor.YellowDarkA.yellowA6)
    static let yellowA7 = Color(light: RadixColor.YellowA.yellowA7, dark: RadixColor.YellowDarkA.yellowA7)
    static let yellowA8 = Color(light: RadixColor.YellowA.yellowA8, dark: RadixColor.YellowDarkA.yellowA8)
    static let yellowA9 = Color(light: RadixColor.YellowA.yellowA9, dark: RadixColor.YellowDarkA.yellowA9)
    static let yellowA10 = Color(light: RadixColor.YellowA.yellowA10, dark: RadixColor.YellowDarkA.yellowA10)
    static let yellowA11 = Color(light: RadixColor.YellowA.yellowA11, dark: RadixColor.YellowDarkA.yellowA11)
    static let yellowA12 = Color(light: RadixColor.YellowA.yellowA12, dark: RadixColor.YellowDarkA.yellowA12)
}
