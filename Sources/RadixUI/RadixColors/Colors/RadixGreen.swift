//
//  RadixGreen.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Green`
extension RadixColor {
    // Collection: green
    class Green {
        static let green1 = Color(h: 136, s: 0.500, l: 0.989)
        static let green2 = Color(h: 138, s: 0.625, l: 0.969)
        static let green3 = Color(h: 139, s: 0.552, l: 0.945)
        static let green4 = Color(h: 140, s: 0.487, l: 0.910)
        static let green5 = Color(h: 141, s: 0.437, l: 0.860)
        static let green6 = Color(h: 143, s: 0.403, l: 0.790)
        static let green7 = Color(h: 146, s: 0.385, l: 0.690)
        static let green8 = Color(h: 151, s: 0.402, l: 0.541)
        static let green9 = Color(h: 151, s: 0.550, l: 0.415)
        static let green10 = Color(h: 152, s: 0.575, l: 0.376)
        static let green11 = Color(h: 153, s: 0.670, l: 0.285)
        static let green12 = Color(h: 155, s: 0.400, l: 0.165)
    }
    // Collection: greenA
    class GreenA {
        static let greenA1 = Color(h: 140, s: 0.949, l: 0.387, a: 0.016)
        static let greenA2 = Color(h: 138, s: 0.999, l: 0.385, a: 0.051)
        static let greenA3 = Color(h: 139, s: 0.977, l: 0.369, a: 0.087)
        static let greenA4 = Color(h: 139, s: 0.985, l: 0.327, a: 0.134)
        static let greenA5 = Color(h: 141, s: 1.000, l: 0.304, a: 0.200)
        static let greenA6 = Color(h: 142, s: 0.990, l: 0.289, a: 0.295)
        static let greenA7 = Color(h: 146, s: 0.995, l: 0.276, a: 0.428)
        static let greenA8 = Color(h: 151, s: 0.995, l: 0.288, a: 0.644)
        static let greenA9 = Color(h: 151, s: 0.999, l: 0.280, a: 0.812)
        static let greenA10 = Color(h: 152, s: 0.996, l: 0.258, a: 0.840)
        static let greenA11 = Color(h: 153, s: 0.999, l: 0.210, a: 0.906)
        static let greenA12 = Color(h: 155, s: 0.999, l: 0.074, a: 0.902)
    }
    // Collection: greenDark
    class GreenDark {
        static let green1 = Color(h: 146, s: 0.300, l: 0.074)
        static let green2 = Color(h: 154, s: 0.318, l: 0.086)
        static let green3 = Color(h: 154, s: 0.376, l: 0.115)
        static let green4 = Color(h: 154, s: 0.410, l: 0.136)
        static let green5 = Color(h: 154, s: 0.437, l: 0.157)
        static let green6 = Color(h: 154, s: 0.467, l: 0.187)
        static let green7 = Color(h: 153, s: 0.503, l: 0.244)
        static let green8 = Color(h: 151, s: 0.522, l: 0.361)
        static let green9 = Color(h: 151, s: 0.550, l: 0.415)
        static let green10 = Color(h: 151, s: 0.552, l: 0.467)
        static let green11 = Color(h: 151, s: 0.650, l: 0.540)
        static let green12 = Color(h: 144, s: 0.700, l: 0.820)
    }
    // Collection: greenDarkA
    class GreenDarkA {
        static let greenA1 = Color(h: 120, s: 1.000, l: 0.439, a: 0.005)
        static let greenA2 = Color(h: 120, s: 1.000, l: 0.493, a: 0.022)
        static let greenA3 = Color(h: 149, s: 1.000, l: 0.495, a: 0.070)
        static let greenA4 = Color(h: 154, s: 1.000, l: 0.497, a: 0.109)
        static let greenA5 = Color(h: 153, s: 0.989, l: 0.531, a: 0.148)
        static let greenA6 = Color(h: 155, s: 0.991, l: 0.555, a: 0.200)
        static let greenA7 = Color(h: 152, s: 0.993, l: 0.591, a: 0.304)
        static let greenA8 = Color(h: 151, s: 0.996, l: 0.624, a: 0.503)
        static let greenA9 = Color(h: 151, s: 0.996, l: 0.624, a: 0.607)
        static let greenA10 = Color(h: 151, s: 1.000, l: 0.629, a: 0.697)
        static let greenA11 = Color(h: 151, s: 0.999, l: 0.635, a: 0.823)
        static let greenA12 = Color(h: 144, s: 0.996, l: 0.866, a: 0.940)
    }
}

/// Add dynamic `RadixGreen` to `SwiftUI` colors
public extension Color {
    static let green1 = Color(light: RadixColor.Green.green1, dark: RadixColor.GreenDark.green1)
    static let green2 = Color(light: RadixColor.Green.green2, dark: RadixColor.GreenDark.green2)
    static let green3 = Color(light: RadixColor.Green.green3, dark: RadixColor.GreenDark.green3)
    static let green4 = Color(light: RadixColor.Green.green4, dark: RadixColor.GreenDark.green4)
    static let green5 = Color(light: RadixColor.Green.green5, dark: RadixColor.GreenDark.green5)
    static let green6 = Color(light: RadixColor.Green.green6, dark: RadixColor.GreenDark.green6)
    static let green7 = Color(light: RadixColor.Green.green7, dark: RadixColor.GreenDark.green7)
    static let green8 = Color(light: RadixColor.Green.green8, dark: RadixColor.GreenDark.green8)
    static let green9 = Color(light: RadixColor.Green.green9, dark: RadixColor.GreenDark.green9)
    static let green10 = Color(light: RadixColor.Green.green10, dark: RadixColor.GreenDark.green10)
    static let green11 = Color(light: RadixColor.Green.green11, dark: RadixColor.GreenDark.green11)
    static let green12 = Color(light: RadixColor.Green.green12, dark: RadixColor.GreenDark.green12)

    static let greenA1 = Color(light: RadixColor.GreenA.greenA1, dark: RadixColor.GreenDarkA.greenA1)
    static let greenA2 = Color(light: RadixColor.GreenA.greenA2, dark: RadixColor.GreenDarkA.greenA2)
    static let greenA3 = Color(light: RadixColor.GreenA.greenA3, dark: RadixColor.GreenDarkA.greenA3)
    static let greenA4 = Color(light: RadixColor.GreenA.greenA4, dark: RadixColor.GreenDarkA.greenA4)
    static let greenA5 = Color(light: RadixColor.GreenA.greenA5, dark: RadixColor.GreenDarkA.greenA5)
    static let greenA6 = Color(light: RadixColor.GreenA.greenA6, dark: RadixColor.GreenDarkA.greenA6)
    static let greenA7 = Color(light: RadixColor.GreenA.greenA7, dark: RadixColor.GreenDarkA.greenA7)
    static let greenA8 = Color(light: RadixColor.GreenA.greenA8, dark: RadixColor.GreenDarkA.greenA8)
    static let greenA9 = Color(light: RadixColor.GreenA.greenA9, dark: RadixColor.GreenDarkA.greenA9)
    static let greenA10 = Color(light: RadixColor.GreenA.greenA10, dark: RadixColor.GreenDarkA.greenA10)
    static let greenA11 = Color(light: RadixColor.GreenA.greenA11, dark: RadixColor.GreenDarkA.greenA11)
    static let greenA12 = Color(light: RadixColor.GreenA.greenA12, dark: RadixColor.GreenDarkA.greenA12)
}
