//
//  RadixOlive.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Olive`
extension RadixColor {
    // Collection: olive
    class Olive {
        static let olive1 = Color(h: 110, s: 0.200, l: 0.990)
        static let olive2 = Color(h: 120, s: 0.167, l: 0.976)
        static let olive3 = Color(h: 118, s: 0.084, l: 0.948)
        static let olive4 = Color(h: 116, s: 0.060, l: 0.921)
        static let olive5 = Color(h: 115, s: 0.049, l: 0.894)
        static let olive6 = Color(h: 113, s: 0.042, l: 0.865)
        static let olive7 = Color(h: 111, s: 0.036, l: 0.826)
        static let olive8 = Color(h: 105, s: 0.029, l: 0.729)
        static let olive9 = Color(h: 110, s: 0.030, l: 0.545)
        static let olive10 = Color(h: 105, s: 0.027, l: 0.494)
        static let olive11 = Color(h: 110, s: 0.030, l: 0.385)
        static let olive12 = Color(h: 110, s: 0.080, l: 0.120)
    }
    // Collection: oliveA
    class OliveA {
        static let oliveA1 = Color(h: 120, s: 0.893, l: 0.183, a: 0.012)
        static let oliveA2 = Color(h: 120, s: 0.877, l: 0.160, a: 0.028)
        static let oliveA3 = Color(h: 120, s: 0.976, l: 0.073, a: 0.055)
        static let oliveA4 = Color(h: 120, s: 0.858, l: 0.055, a: 0.083)
        static let oliveA5 = Color(h: 120, s: 0.952, l: 0.037, a: 0.110)
        static let oliveA6 = Color(h: 120, s: 0.877, l: 0.047, a: 0.142)
        static let oliveA7 = Color(h: 100, s: 0.906, l: 0.036, a: 0.181)
        static let oliveA8 = Color(h: 105, s: 0.932, l: 0.030, a: 0.279)
        static let oliveA9 = Color(h: 103, s: 0.971, l: 0.030, a: 0.471)
        static let oliveA10 = Color(h: 110, s: 0.971, l: 0.023, a: 0.518)
        static let oliveA11 = Color(h: 110, s: 0.955, l: 0.020, a: 0.628)
        static let oliveA12 = Color(h: 108, s: 0.924, l: 0.012, a: 0.891)
    }
    // Collection: oliveDark
    class OliveDark {
        static let olive1 = Color(h: 110, s: 0.050, l: 0.092)
        static let olive2 = Color(h: 120, s: 0.057, l: 0.104)
        static let olive3 = Color(h: 120, s: 0.043, l: 0.154)
        static let olive4 = Color(h: 120, s: 0.039, l: 0.185)
        static let olive5 = Color(h: 120, s: 0.036, l: 0.212)
        static let olive6 = Color(h: 120, s: 0.033, l: 0.243)
        static let olive7 = Color(h: 120, s: 0.030, l: 0.287)
        static let olive8 = Color(h: 120, s: 0.026, l: 0.371)
        static let olive9 = Color(h: 110, s: 0.060, l: 0.415)
        static let olive10 = Color(h: 106, s: 0.046, l: 0.493)
        static let olive11 = Color(h: 110, s: 0.050, l: 0.688)
        static let olive12 = Color(h: 110, s: 0.070, l: 0.930)
    }
    // Collection: oliveDarkA
    class OliveDarkA {
        static let oliveA1 = Color(h: 120, s: 1.000, l: 0.439, a: 0.005)
        static let oliveA2 = Color(h: 120, s: 0.905, l: 0.639, a: 0.018)
        static let oliveA3 = Color(h: 120, s: 0.941, l: 0.916, a: 0.074)
        static let oliveA4 = Color(h: 120, s: 0.918, l: 0.922, a: 0.109)
        static let oliveA5 = Color(h: 120, s: 0.948, l: 0.940, a: 0.139)
        static let oliveA6 = Color(h: 120, s: 0.912, l: 0.951, a: 0.174)
        static let oliveA7 = Color(h: 120, s: 0.975, l: 0.964, a: 0.221)
        static let oliveA8 = Color(h: 120, s: 0.917, l: 0.966, a: 0.317)
        static let oliveA9 = Color(h: 106, s: 0.998, l: 0.933, a: 0.381)
        static let oliveA10 = Color(h: 104, s: 0.968, l: 0.952, a: 0.464)
        static let oliveA11 = Color(h: 105, s: 1.000, l: 0.977, a: 0.671)
        static let oliveA12 = Color(h: 120, s: 0.880, l: 0.995, a: 0.927)
    }
}

/// Add dynamic `RadixOlive` to `SwiftUI` colors
public extension Color {
    static let olive1 = Color(light: RadixColor.Olive.olive1, dark: RadixColor.OliveDark.olive1)
    static let olive2 = Color(light: RadixColor.Olive.olive2, dark: RadixColor.OliveDark.olive2)
    static let olive3 = Color(light: RadixColor.Olive.olive3, dark: RadixColor.OliveDark.olive3)
    static let olive4 = Color(light: RadixColor.Olive.olive4, dark: RadixColor.OliveDark.olive4)
    static let olive5 = Color(light: RadixColor.Olive.olive5, dark: RadixColor.OliveDark.olive5)
    static let olive6 = Color(light: RadixColor.Olive.olive6, dark: RadixColor.OliveDark.olive6)
    static let olive7 = Color(light: RadixColor.Olive.olive7, dark: RadixColor.OliveDark.olive7)
    static let olive8 = Color(light: RadixColor.Olive.olive8, dark: RadixColor.OliveDark.olive8)
    static let olive9 = Color(light: RadixColor.Olive.olive9, dark: RadixColor.OliveDark.olive9)
    static let olive10 = Color(light: RadixColor.Olive.olive10, dark: RadixColor.OliveDark.olive10)
    static let olive11 = Color(light: RadixColor.Olive.olive11, dark: RadixColor.OliveDark.olive11)
    static let olive12 = Color(light: RadixColor.Olive.olive12, dark: RadixColor.OliveDark.olive12)

    static let oliveA1 = Color(light: RadixColor.OliveA.oliveA1, dark: RadixColor.OliveDarkA.oliveA1)
    static let oliveA2 = Color(light: RadixColor.OliveA.oliveA2, dark: RadixColor.OliveDarkA.oliveA2)
    static let oliveA3 = Color(light: RadixColor.OliveA.oliveA3, dark: RadixColor.OliveDarkA.oliveA3)
    static let oliveA4 = Color(light: RadixColor.OliveA.oliveA4, dark: RadixColor.OliveDarkA.oliveA4)
    static let oliveA5 = Color(light: RadixColor.OliveA.oliveA5, dark: RadixColor.OliveDarkA.oliveA5)
    static let oliveA6 = Color(light: RadixColor.OliveA.oliveA6, dark: RadixColor.OliveDarkA.oliveA6)
    static let oliveA7 = Color(light: RadixColor.OliveA.oliveA7, dark: RadixColor.OliveDarkA.oliveA7)
    static let oliveA8 = Color(light: RadixColor.OliveA.oliveA8, dark: RadixColor.OliveDarkA.oliveA8)
    static let oliveA9 = Color(light: RadixColor.OliveA.oliveA9, dark: RadixColor.OliveDarkA.oliveA9)
    static let oliveA10 = Color(light: RadixColor.OliveA.oliveA10, dark: RadixColor.OliveDarkA.oliveA10)
    static let oliveA11 = Color(light: RadixColor.OliveA.oliveA11, dark: RadixColor.OliveDarkA.oliveA11)
    static let oliveA12 = Color(light: RadixColor.OliveA.oliveA12, dark: RadixColor.OliveDarkA.oliveA12)
}
