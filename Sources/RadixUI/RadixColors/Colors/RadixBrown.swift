//
//  RadixBrown.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Bronze`
extension RadixColor {
    // Collection: brown
    class Brown {
        static let brown1 = Color(h: 30, s: 0.400, l: 0.991)
        static let brown2 = Color(h: 30, s: 0.500, l: 0.976)
        static let brown3 = Color(h: 30, s: 0.525, l: 0.946)
        static let brown4 = Color(h: 30, s: 0.530, l: 0.912)
        static let brown5 = Color(h: 29, s: 0.529, l: 0.868)
        static let brown6 = Color(h: 29, s: 0.525, l: 0.809)
        static let brown7 = Color(h: 29, s: 0.515, l: 0.728)
        static let brown8 = Color(h: 28, s: 0.500, l: 0.631)
        static let brown9 = Color(h: 28, s: 0.340, l: 0.510)
        static let brown10 = Color(h: 26, s: 0.317, l: 0.469)
        static let brown11 = Color(h: 25, s: 0.300, l: 0.390)
        static let brown12 = Color(h: 20, s: 0.150, l: 0.210)
    }
    // Collection: brownA
    class BrownA {
        static let brownA1 = Color(h: 30, s: 0.943, l: 0.346, a: 0.012)
        static let brownA2 = Color(h: 30, s: 0.943, l: 0.346, a: 0.036)
        static let brownA3 = Color(h: 30, s: 0.977, l: 0.339, a: 0.083)
        static let brownA4 = Color(h: 31, s: 0.985, l: 0.342, a: 0.134)
        static let brownA5 = Color(h: 29, s: 1.000, l: 0.343, a: 0.200)
        static let brownA6 = Color(h: 28, s: 0.992, l: 0.346, a: 0.291)
        static let brownA7 = Color(h: 29, s: 0.998, l: 0.338, a: 0.412)
        static let brownA8 = Color(h: 28, s: 1.000, l: 0.333, a: 0.553)
        static let brownA9 = Color(h: 28, s: 0.999, l: 0.255, a: 0.655)
        static let brownA10 = Color(h: 26, s: 0.996, l: 0.220, a: 0.679)
        static let brownA11 = Color(h: 24, s: 0.996, l: 0.160, a: 0.726)
        static let brownA12 = Color(h: 19, s: 0.988, l: 0.039, a: 0.820)
    }
    // Collection: brownDark
    class BrownDark {
        static let brown1 = Color(h: 22, s: 0.150, l: 0.087)
        static let brown2 = Color(h: 26, s: 0.132, l: 0.104)
        static let brown3 = Color(h: 26, s: 0.174, l: 0.136)
        static let brown4 = Color(h: 26, s: 0.196, l: 0.162)
        static let brown5 = Color(h: 27, s: 0.213, l: 0.190)
        static let brown6 = Color(h: 27, s: 0.232, l: 0.230)
        static let brown7 = Color(h: 27, s: 0.254, l: 0.304)
        static let brown8 = Color(h: 28, s: 0.278, l: 0.451)
        static let brown9 = Color(h: 28, s: 0.340, l: 0.510)
        static let brown10 = Color(h: 28, s: 0.380, l: 0.583)
        static let brown11 = Color(h: 28, s: 0.500, l: 0.720)
        static let brown12 = Color(h: 35, s: 0.600, l: 0.870)
    }
    // Collection: brownDarkA
    class BrownDarkA {
        static let brownA1 = Color(h: 0, s: 1.000, l: 0.483, a: 0.009)
        static let brownA2 = Color(h: 24, s: 1.000, l: 0.500, a: 0.026)
        static let brownA3 = Color(h: 25, s: 0.985, l: 0.677, a: 0.074)
        static let brownA4 = Color(h: 26, s: 0.978, l: 0.706, a: 0.109)
        static let brownA5 = Color(h: 26, s: 0.989, l: 0.726, a: 0.152)
        static let brownA6 = Color(h: 27, s: 0.996, l: 0.745, a: 0.208)
        static let brownA7 = Color(h: 28, s: 0.988, l: 0.756, a: 0.317)
        static let brownA8 = Color(h: 28, s: 0.996, l: 0.764, a: 0.533)
        static let brownA9 = Color(h: 28, s: 0.995, l: 0.741, a: 0.646)
        static let brownA10 = Color(h: 28, s: 0.996, l: 0.777, a: 0.715)
        static let brownA11 = Color(h: 28, s: 0.995, l: 0.834, a: 0.845)
        static let brownA12 = Color(h: 34, s: 0.997, l: 0.917, a: 0.944)
    }
}

/// Add dynamic `RadixBrown` to `SwiftUI` colors
public extension Color {
    static let brown1 = Color(light: RadixColor.Brown.brown1, dark: RadixColor.BrownDark.brown1)
    static let brown2 = Color(light: RadixColor.Brown.brown2, dark: RadixColor.BrownDark.brown2)
    static let brown3 = Color(light: RadixColor.Brown.brown3, dark: RadixColor.BrownDark.brown3)
    static let brown4 = Color(light: RadixColor.Brown.brown4, dark: RadixColor.BrownDark.brown4)
    static let brown5 = Color(light: RadixColor.Brown.brown5, dark: RadixColor.BrownDark.brown5)
    static let brown6 = Color(light: RadixColor.Brown.brown6, dark: RadixColor.BrownDark.brown6)
    static let brown7 = Color(light: RadixColor.Brown.brown7, dark: RadixColor.BrownDark.brown7)
    static let brown8 = Color(light: RadixColor.Brown.brown8, dark: RadixColor.BrownDark.brown8)
    static let brown9 = Color(light: RadixColor.Brown.brown9, dark: RadixColor.BrownDark.brown9)
    static let brown10 = Color(light: RadixColor.Brown.brown10, dark: RadixColor.BrownDark.brown10)
    static let brown11 = Color(light: RadixColor.Brown.brown11, dark: RadixColor.BrownDark.brown11)
    static let brown12 = Color(light: RadixColor.Brown.brown12, dark: RadixColor.BrownDark.brown12)

    static let brownA1 = Color(light: RadixColor.BrownA.brownA1, dark: RadixColor.BrownDarkA.brownA1)
    static let brownA2 = Color(light: RadixColor.BrownA.brownA2, dark: RadixColor.BrownDarkA.brownA2)
    static let brownA3 = Color(light: RadixColor.BrownA.brownA3, dark: RadixColor.BrownDarkA.brownA3)
    static let brownA4 = Color(light: RadixColor.BrownA.brownA4, dark: RadixColor.BrownDarkA.brownA4)
    static let brownA5 = Color(light: RadixColor.BrownA.brownA5, dark: RadixColor.BrownDarkA.brownA5)
    static let brownA6 = Color(light: RadixColor.BrownA.brownA6, dark: RadixColor.BrownDarkA.brownA6)
    static let brownA7 = Color(light: RadixColor.BrownA.brownA7, dark: RadixColor.BrownDarkA.brownA7)
    static let brownA8 = Color(light: RadixColor.BrownA.brownA8, dark: RadixColor.BrownDarkA.brownA8)
    static let brownA9 = Color(light: RadixColor.BrownA.brownA9, dark: RadixColor.BrownDarkA.brownA9)
    static let brownA10 = Color(light: RadixColor.BrownA.brownA10, dark: RadixColor.BrownDarkA.brownA10)
    static let brownA11 = Color(light: RadixColor.BrownA.brownA11, dark: RadixColor.BrownDarkA.brownA11)
    static let brownA12 = Color(light: RadixColor.BrownA.brownA12, dark: RadixColor.BrownDarkA.brownA12)
}
