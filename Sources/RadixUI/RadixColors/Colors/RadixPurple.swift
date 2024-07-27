//
//  RadixPurple.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Purple`
extension RadixColor {
    // Collection: purple
    class Purple {
        static let purple1 = Color(h: 280, s: 0.650, l: 0.994)
        static let purple2 = Color(h: 276, s: 1.000, l: 0.990)
        static let purple3 = Color(h: 276, s: 0.831, l: 0.970)
        static let purple4 = Color(h: 275, s: 0.764, l: 0.947)
        static let purple5 = Color(h: 275, s: 0.708, l: 0.918)
        static let purple6 = Color(h: 274, s: 0.654, l: 0.878)
        static let purple7 = Color(h: 273, s: 0.610, l: 0.817)
        static let purple8 = Color(h: 272, s: 0.600, l: 0.735)
        static let purple9 = Color(h: 272, s: 0.510, l: 0.540)
        static let purple10 = Color(h: 272, s: 0.468, l: 0.503)
        static let purple11 = Color(h: 272, s: 0.500, l: 0.458)
        static let purple12 = Color(h: 270, s: 0.500, l: 0.250)
    }
    // Collection: purpleA
    class PurpleA {
        static let purpleA1 = Color(h: 300, s: 0.943, l: 0.346, a: 0.012)
        static let purpleA2 = Color(h: 276, s: 1.000, l: 0.510, a: 0.020)
        static let purpleA3 = Color(h: 277, s: 0.996, l: 0.465, a: 0.055)
        static let purpleA4 = Color(h: 274, s: 0.979, l: 0.443, a: 0.095)
        static let purpleA5 = Color(h: 276, s: 0.986, l: 0.420, a: 0.142)
        static let purpleA6 = Color(h: 275, s: 1.000, l: 0.392, a: 0.200)
        static let purpleA7 = Color(h: 273, s: 0.992, l: 0.382, a: 0.295)
        static let purpleA8 = Color(h: 272, s: 0.997, l: 0.376, a: 0.424)
        static let purpleA9 = Color(h: 272, s: 0.996, l: 0.340, a: 0.695)
        static let purpleA10 = Color(h: 272, s: 0.997, l: 0.320, a: 0.730)
        static let purpleA11 = Color(h: 272, s: 0.998, l: 0.297, a: 0.773)
        static let purpleA12 = Color(h: 270, s: 0.996, l: 0.144, a: 0.875)
    }
    // Collection: purpleDark
    class PurpleDark {
        static let purple1 = Color(h: 284, s: 0.200, l: 0.096)
        static let purple2 = Color(h: 284, s: 0.311, l: 0.120)
        static let purple3 = Color(h: 282, s: 0.351, l: 0.168)
        static let purple4 = Color(h: 281, s: 0.369, l: 0.201)
        static let purple5 = Color(h: 280, s: 0.381, l: 0.230)
        static let purple6 = Color(h: 278, s: 0.395, l: 0.273)
        static let purple7 = Color(h: 276, s: 0.411, l: 0.351)
        static let purple8 = Color(h: 272, s: 0.427, l: 0.500)
        static let purple9 = Color(h: 272, s: 0.510, l: 0.540)
        static let purple10 = Color(h: 271, s: 0.578, l: 0.612)
        static let purple11 = Color(h: 270, s: 0.900, l: 0.780)
        static let purple12 = Color(h: 275, s: 0.750, l: 0.915)
    }
    // Collection: purpleDarkA
    class PurpleDarkA {
        static let purpleA1 = Color(h: 278, s: 1.000, l: 0.493, a: 0.022)
        static let purpleA2 = Color(h: 283, s: 1.000, l: 0.495, a: 0.070)
        static let purpleA3 = Color(h: 282, s: 0.988, l: 0.598, a: 0.148)
        static let purpleA4 = Color(h: 281, s: 0.990, l: 0.624, a: 0.200)
        static let purpleA5 = Color(h: 280, s: 0.997, l: 0.642, a: 0.247)
        static let purpleA6 = Color(h: 278, s: 0.992, l: 0.657, a: 0.317)
        static let purpleA7 = Color(h: 276, s: 0.997, l: 0.675, a: 0.442)
        static let purpleA8 = Color(h: 272, s: 1.000, l: 0.688, a: 0.684)
        static let purpleA9 = Color(h: 272, s: 0.997, l: 0.687, a: 0.754)
        static let purpleA10 = Color(h: 271, s: 0.997, l: 0.726, a: 0.819)
        static let purpleA11 = Color(h: 270, s: 0.996, l: 0.796, a: 0.975)
        static let purpleA12 = Color(h: 275, s: 0.991, l: 0.933, a: 0.979)
    }
}

/// Add dynamic `RadixPurple` to `SwiftUI` colors
public extension Color {
    static let purple1 = Color(light: RadixColor.Purple.purple1, dark: RadixColor.PurpleDark.purple1)
    static let purple2 = Color(light: RadixColor.Purple.purple2, dark: RadixColor.PurpleDark.purple2)
    static let purple3 = Color(light: RadixColor.Purple.purple3, dark: RadixColor.PurpleDark.purple3)
    static let purple4 = Color(light: RadixColor.Purple.purple4, dark: RadixColor.PurpleDark.purple4)
    static let purple5 = Color(light: RadixColor.Purple.purple5, dark: RadixColor.PurpleDark.purple5)
    static let purple6 = Color(light: RadixColor.Purple.purple6, dark: RadixColor.PurpleDark.purple6)
    static let purple7 = Color(light: RadixColor.Purple.purple7, dark: RadixColor.PurpleDark.purple7)
    static let purple8 = Color(light: RadixColor.Purple.purple8, dark: RadixColor.PurpleDark.purple8)
    static let purple9 = Color(light: RadixColor.Purple.purple9, dark: RadixColor.PurpleDark.purple9)
    static let purple10 = Color(light: RadixColor.Purple.purple10, dark: RadixColor.PurpleDark.purple10)
    static let purple11 = Color(light: RadixColor.Purple.purple11, dark: RadixColor.PurpleDark.purple11)
    static let purple12 = Color(light: RadixColor.Purple.purple12, dark: RadixColor.PurpleDark.purple12)
    
    static let purpleA1 = Color(light: RadixColor.PurpleA.purpleA1, dark: RadixColor.PurpleDarkA.purpleA1)
    static let purpleA2 = Color(light: RadixColor.PurpleA.purpleA2, dark: RadixColor.PurpleDarkA.purpleA2)
    static let purpleA3 = Color(light: RadixColor.PurpleA.purpleA3, dark: RadixColor.PurpleDarkA.purpleA3)
    static let purpleA4 = Color(light: RadixColor.PurpleA.purpleA4, dark: RadixColor.PurpleDarkA.purpleA4)
    static let purpleA5 = Color(light: RadixColor.PurpleA.purpleA5, dark: RadixColor.PurpleDarkA.purpleA5)
    static let purpleA6 = Color(light: RadixColor.PurpleA.purpleA6, dark: RadixColor.PurpleDarkA.purpleA6)
    static let purpleA7 = Color(light: RadixColor.PurpleA.purpleA7, dark: RadixColor.PurpleDarkA.purpleA7)
    static let purpleA8 = Color(light: RadixColor.PurpleA.purpleA8, dark: RadixColor.PurpleDarkA.purpleA8)
    static let purpleA9 = Color(light: RadixColor.PurpleA.purpleA9, dark: RadixColor.PurpleDarkA.purpleA9)
    static let purpleA10 = Color(light: RadixColor.PurpleA.purpleA10, dark: RadixColor.PurpleDarkA.purpleA10)
    static let purpleA11 = Color(light: RadixColor.PurpleA.purpleA11, dark: RadixColor.PurpleDarkA.purpleA11)
    static let purpleA12 = Color(light: RadixColor.PurpleA.purpleA12, dark: RadixColor.PurpleDarkA.purpleA12)
}
