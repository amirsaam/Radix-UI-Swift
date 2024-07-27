//
//  RadixCrimson.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Crimson`
extension RadixColor {
    // Collection: crimson
    class Crimson {
        static let crimson1 = Color(h: 332, s: 1.000, l: 0.994)
        static let crimson2 = Color(h: 330, s: 1.000, l: 0.984)
        static let crimson3 = Color(h: 331, s: 0.856, l: 0.966)
        static let crimson4 = Color(h: 331, s: 0.781, l: 0.942)
        static let crimson5 = Color(h: 332, s: 0.721, l: 0.911)
        static let crimson6 = Color(h: 333, s: 0.670, l: 0.867)
        static let crimson7 = Color(h: 335, s: 0.635, l: 0.804)
        static let crimson8 = Color(h: 336, s: 0.623, l: 0.729)
        static let crimson9 = Color(h: 336, s: 0.800, l: 0.578)
        static let crimson10 = Color(h: 336, s: 0.713, l: 0.528)
        static let crimson11 = Color(h: 336, s: 0.750, l: 0.455)
        static let crimson12 = Color(h: 332, s: 0.630, l: 0.235)
    }
    // Collection: crimsonA
    class CrimsonA {
        static let crimsonA1 = Color(h: 340, s: 1.000, l: 0.510, a: 0.012)
        static let crimsonA2 = Color(h: 330, s: 1.000, l: 0.510, a: 0.032)
        static let crimsonA3 = Color(h: 332, s: 0.991, l: 0.471, a: 0.063)
        static let crimsonA4 = Color(h: 331, s: 0.999, l: 0.443, a: 0.102)
        static let crimsonA5 = Color(h: 333, s: 0.999, l: 0.423, a: 0.153)
        static let crimsonA6 = Color(h: 333, s: 0.995, l: 0.405, a: 0.224)
        static let crimsonA7 = Color(h: 335, s: 0.997, l: 0.391, a: 0.322)
        static let crimsonA8 = Color(h: 336, s: 0.995, l: 0.385, a: 0.440)
        static let crimsonA9 = Color(h: 336, s: 0.999, l: 0.443, a: 0.761)
        static let crimsonA10 = Color(h: 336, s: 1.000, l: 0.415, a: 0.808)
        static let crimsonA11 = Color(h: 336, s: 0.998, l: 0.385, a: 0.887)
        static let crimsonA12 = Color(h: 332, s: 0.998, l: 0.163, a: 0.914)
    }
    // Collection: crimsonDark
    class CrimsonDark {
        static let crimson1 = Color(h: 335, s: 0.200, l: 0.096)
        static let crimson2 = Color(h: 336, s: 0.323, l: 0.122)
        static let crimson3 = Color(h: 336, s: 0.402, l: 0.160)
        static let crimson4 = Color(h: 336, s: 0.444, l: 0.185)
        static let crimson5 = Color(h: 336, s: 0.484, l: 0.213)
        static let crimson6 = Color(h: 336, s: 0.539, l: 0.255)
        static let crimson7 = Color(h: 336, s: 0.627, l: 0.328)
        static let crimson8 = Color(h: 336, s: 0.800, l: 0.451)
        static let crimson9 = Color(h: 336, s: 0.800, l: 0.578)
        static let crimson10 = Color(h: 339, s: 0.870, l: 0.672)
        static let crimson11 = Color(h: 341, s: 1.000, l: 0.760)
        static let crimson12 = Color(h: 330, s: 0.900, l: 0.910)
    }
    // Collection: crimsonDarkA
    class CrimsonDarkA {
        static let crimsonA1 = Color(h: 354, s: 1.000, l: 0.493, a: 0.022)
        static let crimsonA2 = Color(h: 338, s: 1.000, l: 0.498, a: 0.074)
        static let crimsonA3 = Color(h: 335, s: 0.998, l: 0.547, a: 0.143)
        static let crimsonA4 = Color(h: 336, s: 0.994, l: 0.566, a: 0.191)
        static let crimsonA5 = Color(h: 336, s: 0.998, l: 0.578, a: 0.247)
        static let crimsonA6 = Color(h: 336, s: 0.993, l: 0.581, a: 0.330)
        static let crimsonA7 = Color(h: 336, s: 0.999, l: 0.575, a: 0.485)
        static let crimsonA8 = Color(h: 336, s: 0.998, l: 0.544, a: 0.793)
        static let crimsonA9 = Color(h: 336, s: 0.999, l: 0.627, a: 0.905)
        static let crimsonA10 = Color(h: 339, s: 0.998, l: 0.701, a: 0.953)
        static let crimsonA11 = Color(h: 341, s: 1.000, l: 0.761, a: 1.000)
        static let crimsonA12 = Color(h: 330, s: 0.993, l: 0.916, a: 0.992)
    }
}

/// Add dynamic `RadixCrimson` to `SwiftUI` colors
public extension Color {
    static let crimson1 = Color(light: RadixColor.Crimson.crimson1, dark: RadixColor.CrimsonDark.crimson1)
    static let crimson2 = Color(light: RadixColor.Crimson.crimson2, dark: RadixColor.CrimsonDark.crimson2)
    static let crimson3 = Color(light: RadixColor.Crimson.crimson3, dark: RadixColor.CrimsonDark.crimson3)
    static let crimson4 = Color(light: RadixColor.Crimson.crimson4, dark: RadixColor.CrimsonDark.crimson4)
    static let crimson5 = Color(light: RadixColor.Crimson.crimson5, dark: RadixColor.CrimsonDark.crimson5)
    static let crimson6 = Color(light: RadixColor.Crimson.crimson6, dark: RadixColor.CrimsonDark.crimson6)
    static let crimson7 = Color(light: RadixColor.Crimson.crimson7, dark: RadixColor.CrimsonDark.crimson7)
    static let crimson8 = Color(light: RadixColor.Crimson.crimson8, dark: RadixColor.CrimsonDark.crimson8)
    static let crimson9 = Color(light: RadixColor.Crimson.crimson9, dark: RadixColor.CrimsonDark.crimson9)
    static let crimson10 = Color(light: RadixColor.Crimson.crimson10, dark: RadixColor.CrimsonDark.crimson10)
    static let crimson11 = Color(light: RadixColor.Crimson.crimson11, dark: RadixColor.CrimsonDark.crimson11)
    static let crimson12 = Color(light: RadixColor.Crimson.crimson12, dark: RadixColor.CrimsonDark.crimson12)

    static let crimsonA1 = Color(light: RadixColor.CrimsonA.crimsonA1, dark: RadixColor.CrimsonDarkA.crimsonA1)
    static let crimsonA2 = Color(light: RadixColor.CrimsonA.crimsonA2, dark: RadixColor.CrimsonDarkA.crimsonA2)
    static let crimsonA3 = Color(light: RadixColor.CrimsonA.crimsonA3, dark: RadixColor.CrimsonDarkA.crimsonA3)
    static let crimsonA4 = Color(light: RadixColor.CrimsonA.crimsonA4, dark: RadixColor.CrimsonDarkA.crimsonA4)
    static let crimsonA5 = Color(light: RadixColor.CrimsonA.crimsonA5, dark: RadixColor.CrimsonDarkA.crimsonA5)
    static let crimsonA6 = Color(light: RadixColor.CrimsonA.crimsonA6, dark: RadixColor.CrimsonDarkA.crimsonA6)
    static let crimsonA7 = Color(light: RadixColor.CrimsonA.crimsonA7, dark: RadixColor.CrimsonDarkA.crimsonA7)
    static let crimsonA8 = Color(light: RadixColor.CrimsonA.crimsonA8, dark: RadixColor.CrimsonDarkA.crimsonA8)
    static let crimsonA9 = Color(light: RadixColor.CrimsonA.crimsonA9, dark: RadixColor.CrimsonDarkA.crimsonA9)
    static let crimsonA10 = Color(light: RadixColor.CrimsonA.crimsonA10, dark: RadixColor.CrimsonDarkA.crimsonA10)
    static let crimsonA11 = Color(light: RadixColor.CrimsonA.crimsonA11, dark: RadixColor.CrimsonDarkA.crimsonA11)
    static let crimsonA12 = Color(light: RadixColor.CrimsonA.crimsonA12, dark: RadixColor.CrimsonDarkA.crimsonA12)
}
