//
//  RadixGold.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Gold`
extension RadixColor {
    // Collection: gold
    class Gold {
        static let gold1 = Color(h: 50, s: 0.200, l: 0.991)
        static let gold2 = Color(h: 47, s: 0.529, l: 0.967)
        static let gold3 = Color(h: 46, s: 0.382, l: 0.937)
        static let gold4 = Color(h: 44, s: 0.327, l: 0.901)
        static let gold5 = Color(h: 43, s: 0.299, l: 0.857)
        static let gold6 = Color(h: 41, s: 0.283, l: 0.798)
        static let gold7 = Color(h: 39, s: 0.276, l: 0.719)
        static let gold8 = Color(h: 36, s: 0.272, l: 0.618)
        static let gold9 = Color(h: 36, s: 0.200, l: 0.495)
        static let gold10 = Color(h: 36, s: 0.199, l: 0.449)
        static let gold11 = Color(h: 36, s: 0.200, l: 0.370)
        static let gold12 = Color(h: 36, s: 0.160, l: 0.200)
    }
    // Collection: goldA
    class GoldA {
        static let goldA1 = Color(h: 60, s: 0.893, l: 0.183, a: 0.012)
        static let goldA2 = Color(h: 47, s: 0.999, l: 0.346, a: 0.051)
        static let goldA3 = Color(h: 45, s: 0.970, l: 0.279, a: 0.087)
        static let goldA4 = Color(h: 46, s: 0.980, l: 0.254, a: 0.134)
        static let goldA5 = Color(h: 43, s: 0.984, l: 0.226, a: 0.185)
        static let goldA6 = Color(h: 41, s: 0.997, l: 0.220, a: 0.259)
        static let goldA7 = Color(h: 38, s: 0.998, l: 0.215, a: 0.357)
        static let goldA8 = Color(h: 36, s: 0.993, l: 0.215, a: 0.487)
        static let goldA9 = Color(h: 36, s: 0.999, l: 0.162, a: 0.604)
        static let goldA10 = Color(h: 36, s: 0.991, l: 0.139, a: 0.640)
        static let goldA11 = Color(h: 36, s: 0.998, l: 0.106, a: 0.706)
        static let goldA12 = Color(h: 38, s: 0.980, l: 0.038, a: 0.832)
    }
    // Collection: goldDark
    class GoldDark {
        static let gold1 = Color(h: 44, s: 0.090, l: 0.083)
        static let gold2 = Color(h: 45, s: 0.080, l: 0.098)
        static let gold3 = Color(h: 44, s: 0.095, l: 0.130)
        static let gold4 = Color(h: 43, s: 0.105, l: 0.156)
        static let gold5 = Color(h: 42, s: 0.112, l: 0.185)
        static let gold6 = Color(h: 41, s: 0.121, l: 0.226)
        static let gold7 = Color(h: 39, s: 0.132, l: 0.298)
        static let gold8 = Color(h: 35, s: 0.148, l: 0.451)
        static let gold9 = Color(h: 36, s: 0.200, l: 0.495)
        static let gold10 = Color(h: 36, s: 0.219, l: 0.568)
        static let gold11 = Color(h: 35, s: 0.300, l: 0.710)
        static let gold12 = Color(h: 35, s: 0.250, l: 0.880)
    }
    // Collection: goldDarkA
    class GoldDarkA {
        static let goldA1 = Color(h: 45, s: 0.992, l: 0.038, a: 0.209)
        static let goldA2 = Color(h: 42, s: 1.000, l: 0.500, a: 0.013)
        static let goldA3 = Color(h: 50, s: 0.996, l: 0.773, a: 0.052)
        static let goldA4 = Color(h: 45, s: 0.976, l: 0.815, a: 0.087)
        static let goldA5 = Color(h: 42, s: 0.965, l: 0.833, a: 0.122)
        static let goldA6 = Color(h: 39, s: 0.983, l: 0.843, a: 0.178)
        static let goldA7 = Color(h: 39, s: 0.986, l: 0.852, a: 0.269)
        static let goldA8 = Color(h: 35, s: 0.994, l: 0.857, a: 0.468)
        static let goldA9 = Color(h: 36, s: 0.998, l: 0.821, a: 0.550)
        static let goldA10 = Color(h: 36, s: 0.997, l: 0.850, a: 0.628)
        static let goldA11 = Color(h: 35, s: 0.999, l: 0.889, a: 0.775)
        static let goldA12 = Color(h: 36, s: 0.983, l: 0.967, a: 0.901)
    }
}

/// Add dynamic `RadixGold` to `SwiftUI` colors
public extension Color {
    static let gold1 = Color(light: RadixColor.Gold.gold1, dark: RadixColor.GoldDark.gold1)
    static let gold2 = Color(light: RadixColor.Gold.gold2, dark: RadixColor.GoldDark.gold2)
    static let gold3 = Color(light: RadixColor.Gold.gold3, dark: RadixColor.GoldDark.gold3)
    static let gold4 = Color(light: RadixColor.Gold.gold4, dark: RadixColor.GoldDark.gold4)
    static let gold5 = Color(light: RadixColor.Gold.gold5, dark: RadixColor.GoldDark.gold5)
    static let gold6 = Color(light: RadixColor.Gold.gold6, dark: RadixColor.GoldDark.gold6)
    static let gold7 = Color(light: RadixColor.Gold.gold7, dark: RadixColor.GoldDark.gold7)
    static let gold8 = Color(light: RadixColor.Gold.gold8, dark: RadixColor.GoldDark.gold8)
    static let gold9 = Color(light: RadixColor.Gold.gold9, dark: RadixColor.GoldDark.gold9)
    static let gold10 = Color(light: RadixColor.Gold.gold10, dark: RadixColor.GoldDark.gold10)
    static let gold11 = Color(light: RadixColor.Gold.gold11, dark: RadixColor.GoldDark.gold11)
    static let gold12 = Color(light: RadixColor.Gold.gold12, dark: RadixColor.GoldDark.gold12)

    static let goldA1 = Color(light: RadixColor.GoldA.goldA1, dark: RadixColor.GoldDarkA.goldA1)
    static let goldA2 = Color(light: RadixColor.GoldA.goldA2, dark: RadixColor.GoldDarkA.goldA2)
    static let goldA3 = Color(light: RadixColor.GoldA.goldA3, dark: RadixColor.GoldDarkA.goldA3)
    static let goldA4 = Color(light: RadixColor.GoldA.goldA4, dark: RadixColor.GoldDarkA.goldA4)
    static let goldA5 = Color(light: RadixColor.GoldA.goldA5, dark: RadixColor.GoldDarkA.goldA5)
    static let goldA6 = Color(light: RadixColor.GoldA.goldA6, dark: RadixColor.GoldDarkA.goldA6)
    static let goldA7 = Color(light: RadixColor.GoldA.goldA7, dark: RadixColor.GoldDarkA.goldA7)
    static let goldA8 = Color(light: RadixColor.GoldA.goldA8, dark: RadixColor.GoldDarkA.goldA8)
    static let goldA9 = Color(light: RadixColor.GoldA.goldA9, dark: RadixColor.GoldDarkA.goldA9)
    static let goldA10 = Color(light: RadixColor.GoldA.goldA10, dark: RadixColor.GoldDarkA.goldA10)
    static let goldA11 = Color(light: RadixColor.GoldA.goldA11, dark: RadixColor.GoldDarkA.goldA11)
    static let goldA12 = Color(light: RadixColor.GoldA.goldA12, dark: RadixColor.GoldDarkA.goldA12)
}
