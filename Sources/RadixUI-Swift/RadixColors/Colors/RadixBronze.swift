//
//  RadixBronze.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Bronze`
extension RadixColor {
    // Collection: bronze
    class Bronze {
        static let bronze1 = Color(h: 15, s: 0.300, l: 0.991)
        static let bronze2 = Color(h: 17, s: 0.636, l: 0.978)
        static let bronze3 = Color(h: 17, s: 0.421, l: 0.952)
        static let bronze4 = Color(h: 17, s: 0.352, l: 0.921)
        static let bronze5 = Color(h: 17, s: 0.315, l: 0.882)
        static let bronze6 = Color(h: 17, s: 0.290, l: 0.830)
        static let bronze7 = Color(h: 17, s: 0.269, l: 0.756)
        static let bronze8 = Color(h: 17, s: 0.251, l: 0.665)
        static let bronze9 = Color(h: 17, s: 0.200, l: 0.540)
        static let bronze10 = Color(h: 17, s: 0.179, l: 0.493)
        static let bronze11 = Color(h: 15, s: 0.200, l: 0.410)
        static let bronze12 = Color(h: 12, s: 0.220, l: 0.215)
    }
    // Collection: bronzeA
    class BronzeA {
        static let bronzeA1 = Color(h: 0, s: 0.893, l: 0.183, a: 0.012)
        static let bronzeA2 = Color(h: 17, s: 0.951, l: 0.401, a: 0.036)
        static let bronzeA3 = Color(h: 18, s: 0.983, l: 0.298, a: 0.067)
        static let bronzeA4 = Color(h: 17, s: 0.996, l: 0.260, a: 0.106)
        static let bronzeA5 = Color(h: 19, s: 0.996, l: 0.238, a: 0.157)
        static let bronzeA6 = Color(h: 17, s: 0.992, l: 0.225, a: 0.220)
        static let bronzeA7 = Color(h: 18, s: 0.997, l: 0.216, a: 0.310)
        static let bronzeA8 = Color(h: 17, s: 0.995, l: 0.202, a: 0.420)
        static let bronzeA9 = Color(h: 18, s: 0.999, l: 0.167, a: 0.553)
        static let bronzeA10 = Color(h: 17, s: 0.990, l: 0.149, a: 0.597)
        static let bronzeA11 = Color(h: 15, s: 0.995, l: 0.120, a: 0.671)
        static let bronzeA12 = Color(h: 12, s: 0.987, l: 0.057, a: 0.832)
    }
    // Collection: bronzeDark
    class BronzeDark {
        static let bronze1 = Color(h: 17, s: 0.100, l: 0.088)
        static let bronze2 = Color(h: 15, s: 0.077, l: 0.102)
        static let bronze3 = Color(h: 15, s: 0.102, l: 0.139)
        static let bronze4 = Color(h: 16, s: 0.115, l: 0.168)
        static let bronze5 = Color(h: 16, s: 0.124, l: 0.197)
        static let bronze6 = Color(h: 16, s: 0.134, l: 0.241)
        static let bronze7 = Color(h: 17, s: 0.147, l: 0.319)
        static let bronze8 = Color(h: 18, s: 0.160, l: 0.476)
        static let bronze9 = Color(h: 17, s: 0.200, l: 0.540)
        static let bronze10 = Color(h: 18, s: 0.236, l: 0.608)
        static let bronze11 = Color(h: 18, s: 0.350, l: 0.740)
        static let bronze12 = Color(h: 22, s: 0.350, l: 0.890)
    }
    // Collection: bronzeDarkA
    class BronzeDarkA {
        static let bronzeA1 = Color(h: 0, s: 1.000, l: 0.439, a: 0.005)
        static let bronzeA2 = Color(h: 15, s: 0.927, l: 0.530, a: 0.018)
        static let bronzeA3 = Color(h: 17, s: 0.996, l: 0.788, a: 0.065)
        static let bronzeA4 = Color(h: 18, s: 0.995, l: 0.811, a: 0.104)
        static let bronzeA5 = Color(h: 15, s: 0.982, l: 0.828, a: 0.139)
        static let bronzeA6 = Color(h: 18, s: 0.977, l: 0.829, a: 0.200)
        static let bronzeA7 = Color(h: 17, s: 0.994, l: 0.842, a: 0.299)
        static let bronzeA8 = Color(h: 18, s: 0.994, l: 0.848, a: 0.507)
        static let bronzeA9 = Color(h: 18, s: 0.991, l: 0.843, a: 0.594)
        static let bronzeA10 = Color(h: 19, s: 1.000, l: 0.860, a: 0.671)
        static let bronzeA11 = Color(h: 18, s: 0.999, l: 0.887, a: 0.814)
        static let bronzeA12 = Color(h: 21, s: 0.979, l: 0.957, a: 0.923)
    }
}

/// Add dynamic `RadixBronze` to `SwiftUI` colors
public extension Color {
    static let bronze1 = Color(light: RadixColor.Bronze.bronze1, dark: RadixColor.BronzeDark.bronze1)
    static let bronze2 = Color(light: RadixColor.Bronze.bronze2, dark: RadixColor.BronzeDark.bronze2)
    static let bronze3 = Color(light: RadixColor.Bronze.bronze3, dark: RadixColor.BronzeDark.bronze3)
    static let bronze4 = Color(light: RadixColor.Bronze.bronze4, dark: RadixColor.BronzeDark.bronze4)
    static let bronze5 = Color(light: RadixColor.Bronze.bronze5, dark: RadixColor.BronzeDark.bronze5)
    static let bronze6 = Color(light: RadixColor.Bronze.bronze6, dark: RadixColor.BronzeDark.bronze6)
    static let bronze7 = Color(light: RadixColor.Bronze.bronze7, dark: RadixColor.BronzeDark.bronze7)
    static let bronze8 = Color(light: RadixColor.Bronze.bronze8, dark: RadixColor.BronzeDark.bronze8)
    static let bronze9 = Color(light: RadixColor.Bronze.bronze9, dark: RadixColor.BronzeDark.bronze9)
    static let bronze10 = Color(light: RadixColor.Bronze.bronze10, dark: RadixColor.BronzeDark.bronze10)
    static let bronze11 = Color(light: RadixColor.Bronze.bronze11, dark: RadixColor.BronzeDark.bronze11)
    static let bronze12 = Color(light: RadixColor.Bronze.bronze12, dark: RadixColor.BronzeDark.bronze12)

    static let bronzeA1 = Color(light: RadixColor.BronzeA.bronzeA1, dark: RadixColor.BronzeDarkA.bronzeA1)
    static let bronzeA2 = Color(light: RadixColor.BronzeA.bronzeA2, dark: RadixColor.BronzeDarkA.bronzeA2)
    static let bronzeA3 = Color(light: RadixColor.BronzeA.bronzeA3, dark: RadixColor.BronzeDarkA.bronzeA3)
    static let bronzeA4 = Color(light: RadixColor.BronzeA.bronzeA4, dark: RadixColor.BronzeDarkA.bronzeA4)
    static let bronzeA5 = Color(light: RadixColor.BronzeA.bronzeA5, dark: RadixColor.BronzeDarkA.bronzeA5)
    static let bronzeA6 = Color(light: RadixColor.BronzeA.bronzeA6, dark: RadixColor.BronzeDarkA.bronzeA6)
    static let bronzeA7 = Color(light: RadixColor.BronzeA.bronzeA7, dark: RadixColor.BronzeDarkA.bronzeA7)
    static let bronzeA8 = Color(light: RadixColor.BronzeA.bronzeA8, dark: RadixColor.BronzeDarkA.bronzeA8)
    static let bronzeA9 = Color(light: RadixColor.BronzeA.bronzeA9, dark: RadixColor.BronzeDarkA.bronzeA9)
    static let bronzeA10 = Color(light: RadixColor.BronzeA.bronzeA10, dark: RadixColor.BronzeDarkA.bronzeA10)
    static let bronzeA11 = Color(light: RadixColor.BronzeA.bronzeA11, dark: RadixColor.BronzeDarkA.bronzeA11)
    static let bronzeA12 = Color(light: RadixColor.BronzeA.bronzeA12, dark: RadixColor.BronzeDarkA.bronzeA12)
}
