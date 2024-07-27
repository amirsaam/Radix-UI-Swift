//
//  RadixOrange.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Orange`
extension RadixColor {
    // Collection: orange
    class Orange {
        static let orange1 = Color(h: 24, s: 0.700, l: 0.990)
        static let orange2 = Color(h: 22, s: 1.000, l: 0.978)
        static let orange3 = Color(h: 34, s: 1.000, l: 0.917)
        static let orange4 = Color(h: 33, s: 1.000, l: 0.866)
        static let orange5 = Color(h: 31, s: 1.000, l: 0.822)
        static let orange6 = Color(h: 27, s: 1.000, l: 0.784)
        static let orange7 = Color(h: 21, s: 1.000, l: 0.745)
        static let orange8 = Color(h: 19, s: 0.801, l: 0.645)
        static let orange9 = Color(h: 24, s: 0.940, l: 0.500)
        static let orange10 = Color(h: 24, s: 1.000, l: 0.465)
        static let orange11 = Color(h: 16, s: 0.450, l: 0.415)
        static let orange12 = Color(h: 16, s: 0.500, l: 0.230)
    }
    // Collection: orangeA
    class OrangeA {
        static let orangeA1 = Color(h: 20, s: 0.949, l: 0.387, a: 0.016)
        static let orangeA2 = Color(h: 22, s: 1.000, l: 0.510, a: 0.044)
        static let orangeA3 = Color(h: 34, s: 1.000, l: 0.501, a: 0.165)
        static let orangeA4 = Color(h: 33, s: 1.000, l: 0.501, a: 0.267)
        static let orangeA5 = Color(h: 31, s: 1.000, l: 0.500, a: 0.357)
        static let orangeA6 = Color(h: 27, s: 1.000, l: 0.501, a: 0.432)
        static let orangeA7 = Color(h: 21, s: 1.000, l: 0.500, a: 0.510)
        static let orangeA8 = Color(h: 19, s: 0.997, l: 0.445, a: 0.640)
        static let orangeA9 = Color(h: 24, s: 0.999, l: 0.484, a: 0.969)
        static let orangeA10 = Color(h: 24, s: 1.000, l: 0.465, a: 1.000)
        static let orangeA11 = Color(h: 16, s: 0.998, l: 0.242, a: 0.773)
        static let orangeA12 = Color(h: 16, s: 0.994, l: 0.131, a: 0.887)
    }
    // Collection: orangeDark
    class OrangeDark {
        static let orange1 = Color(h: 30, s: 0.700, l: 0.072)
        static let orange2 = Color(h: 29, s: 0.814, l: 0.084)
        static let orange3 = Color(h: 26, s: 0.684, l: 0.120)
        static let orange4 = Color(h: 25, s: 0.646, l: 0.149)
        static let orange5 = Color(h: 25, s: 0.643, l: 0.178)
        static let orange6 = Color(h: 25, s: 0.657, l: 0.219)
        static let orange7 = Color(h: 25, s: 0.677, l: 0.294)
        static let orange8 = Color(h: 25, s: 0.703, l: 0.449)
        static let orange9 = Color(h: 24, s: 0.940, l: 0.500)
        static let orange10 = Color(h: 24, s: 1.000, l: 0.585)
        static let orange11 = Color(h: 24, s: 1.000, l: 0.700)
        static let orange12 = Color(h: 30, s: 1.000, l: 0.880)
    }
    // Collection: orangeDarkA
    class OrangeDarkA {
        static let orangeA1 = Color(h: 0, s: 1.000, l: 0.490, a: 0.031)
        static let orangeA2 = Color(h: 0, s: 1.000, l: 0.500, a: 0.065)
        static let orangeA3 = Color(h: 13, s: 1.000, l: 0.497, a: 0.122)
        static let orangeA4 = Color(h: 20, s: 1.000, l: 0.500, a: 0.169)
        static let orangeA5 = Color(h: 24, s: 1.000, l: 0.500, a: 0.221)
        static let orangeA6 = Color(h: 25, s: 0.998, l: 0.514, a: 0.299)
        static let orangeA7 = Color(h: 25, s: 0.998, l: 0.547, a: 0.442)
        static let orangeA8 = Color(h: 25, s: 0.998, l: 0.573, a: 0.741)
        static let orangeA9 = Color(h: 24, s: 0.999, l: 0.514, a: 0.966)
        static let orangeA10 = Color(h: 24, s: 1.000, l: 0.584, a: 1.000)
        static let orangeA11 = Color(h: 24, s: 1.000, l: 0.700, a: 1.000)
        static let orangeA12 = Color(h: 30, s: 1.000, l: 0.880, a: 1.000)
    }
}

/// Add dynamic `RadixOrange` to `SwiftUI` colors
public extension Color {
    static let orange1 = Color(light: RadixColor.Orange.orange1, dark: RadixColor.OrangeDark.orange1)
    static let orange2 = Color(light: RadixColor.Orange.orange2, dark: RadixColor.OrangeDark.orange2)
    static let orange3 = Color(light: RadixColor.Orange.orange3, dark: RadixColor.OrangeDark.orange3)
    static let orange4 = Color(light: RadixColor.Orange.orange4, dark: RadixColor.OrangeDark.orange4)
    static let orange5 = Color(light: RadixColor.Orange.orange5, dark: RadixColor.OrangeDark.orange5)
    static let orange6 = Color(light: RadixColor.Orange.orange6, dark: RadixColor.OrangeDark.orange6)
    static let orange7 = Color(light: RadixColor.Orange.orange7, dark: RadixColor.OrangeDark.orange7)
    static let orange8 = Color(light: RadixColor.Orange.orange8, dark: RadixColor.OrangeDark.orange8)
    static let orange9 = Color(light: RadixColor.Orange.orange9, dark: RadixColor.OrangeDark.orange9)
    static let orange10 = Color(light: RadixColor.Orange.orange10, dark: RadixColor.OrangeDark.orange10)
    static let orange11 = Color(light: RadixColor.Orange.orange11, dark: RadixColor.OrangeDark.orange11)
    static let orange12 = Color(light: RadixColor.Orange.orange12, dark: RadixColor.OrangeDark.orange12)
    
    static let orangeA1 = Color(light: RadixColor.OrangeA.orangeA1, dark: RadixColor.OrangeDarkA.orangeA1)
    static let orangeA2 = Color(light: RadixColor.OrangeA.orangeA2, dark: RadixColor.OrangeDarkA.orangeA2)
    static let orangeA3 = Color(light: RadixColor.OrangeA.orangeA3, dark: RadixColor.OrangeDarkA.orangeA3)
    static let orangeA4 = Color(light: RadixColor.OrangeA.orangeA4, dark: RadixColor.OrangeDarkA.orangeA4)
    static let orangeA5 = Color(light: RadixColor.OrangeA.orangeA5, dark: RadixColor.OrangeDarkA.orangeA5)
    static let orangeA6 = Color(light: RadixColor.OrangeA.orangeA6, dark: RadixColor.OrangeDarkA.orangeA6)
    static let orangeA7 = Color(light: RadixColor.OrangeA.orangeA7, dark: RadixColor.OrangeDarkA.orangeA7)
    static let orangeA8 = Color(light: RadixColor.OrangeA.orangeA8, dark: RadixColor.OrangeDarkA.orangeA8)
    static let orangeA9 = Color(light: RadixColor.OrangeA.orangeA9, dark: RadixColor.OrangeDarkA.orangeA9)
    static let orangeA10 = Color(light: RadixColor.OrangeA.orangeA10, dark: RadixColor.OrangeDarkA.orangeA10)
    static let orangeA11 = Color(light: RadixColor.OrangeA.orangeA11, dark: RadixColor.OrangeDarkA.orangeA11)
    static let orangeA12 = Color(light: RadixColor.OrangeA.orangeA12, dark: RadixColor.OrangeDarkA.orangeA12)
}
