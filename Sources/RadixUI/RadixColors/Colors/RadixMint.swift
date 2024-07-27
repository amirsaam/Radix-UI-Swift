//
//  RadixMint.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Mint`
extension RadixColor {
    // Collection: mint
    class Mint {
        static let mint1: Color = Color(h: 165, s: 0.800, l: 0.988)
        static let mint2: Color = Color(h: 164, s: 0.882, l: 0.967)
        static let mint3: Color = Color(h: 164, s: 0.804, l: 0.926)
        static let mint4: Color = Color(h: 165, s: 0.716, l: 0.884)
        static let mint5: Color = Color(h: 165, s: 0.610, l: 0.834)
        static let mint6: Color = Color(h: 166, s: 0.502, l: 0.767)
        static let mint7: Color = Color(h: 166, s: 0.433, l: 0.672)
        static let mint8: Color = Color(h: 168, s: 0.450, l: 0.529)
        static let mint9: Color = Color(h: 167, s: 0.700, l: 0.720)
        static let mint10: Color = Color(h: 167, s: 0.620, l: 0.690)
        static let mint11: Color = Color(h: 172, s: 0.500, l: 0.305)
        static let mint12: Color = Color(h: 171, s: 0.500, l: 0.175)
    }
    // Collection: mintA
    class MintA {
        static let mintA1: Color = Color(h: 168, s: 0.954, l: 0.428, a: 0.024)
        static let mintA2: Color = Color(h: 164, s: 0.991, l: 0.471, a: 0.063)
        static let mintA3: Color = Color(h: 164, s: 0.989, l: 0.444, a: 0.134)
        static let mintA4: Color = Color(h: 165, s: 1.000, l: 0.422, a: 0.200)
        static let mintA5: Color = Color(h: 166, s: 0.997, l: 0.376, a: 0.267)
        static let mintA6: Color = Color(h: 166, s: 0.992, l: 0.333, a: 0.350)
        static let mintA7: Color = Color(h: 166, s: 0.997, l: 0.305, a: 0.471)
        static let mintA8: Color = Color(h: 168, s: 0.997, l: 0.311, a: 0.683)
        static let mintA9: Color = Color(h: 167, s: 0.998, l: 0.414, a: 0.475)
        static let mintA10: Color = Color(h: 167, s: 1.000, l: 0.383, a: 0.502)
        static let mintA11: Color = Color(h: 172, s: 0.994, l: 0.181, a: 0.848)
        static let mintA12: Color = Color(h: 171, s: 0.997, l: 0.097, a: 0.914)
    }
    // Collection: mintDark
    class MintDark {
        static let mint1: Color = Color(h: 173, s: 0.500, l: 0.066)
        static let mint2: Color = Color(h: 174, s: 0.512, l: 0.080)
        static let mint3: Color = Color(h: 174, s: 0.535, l: 0.106)
        static let mint4: Color = Color(h: 174, s: 0.551, l: 0.126)
        static let mint5: Color = Color(h: 173, s: 0.566, l: 0.148)
        static let mint6: Color = Color(h: 173, s: 0.583, l: 0.179)
        static let mint7: Color = Color(h: 172, s: 0.601, l: 0.236)
        static let mint8: Color = Color(h: 170, s: 0.598, l: 0.351)
        static let mint9: Color = Color(h: 167, s: 0.700, l: 0.720)
        static let mint10: Color = Color(h: 163, s: 0.800, l: 0.770)
        static let mint11: Color = Color(h: 167, s: 0.700, l: 0.580)
        static let mint12: Color = Color(h: 155, s: 0.700, l: 0.865)
    }
    // Collection: mintDarkA
    class MintDarkA {
        static let mintA1: Color = Color(h: 120, s: 1.000, l: 0.439, a: 0.005)
        static let mintA2: Color = Color(h: 165, s: 1.000, l: 0.490, a: 0.031)
        static let mintA3: Color = Color(h: 174, s: 1.000, l: 0.498, a: 0.074)
        static let mintA4: Color = Color(h: 172, s: 1.000, l: 0.498, a: 0.113)
        static let mintA5: Color = Color(h: 172, s: 1.000, l: 0.499, a: 0.152)
        static let mintA6: Color = Color(h: 173, s: 1.000, l: 0.500, a: 0.208)
        static let mintA7: Color = Color(h: 173, s: 0.998, l: 0.547, a: 0.312)
        static let mintA8: Color = Color(h: 170, s: 0.996, l: 0.592, a: 0.516)
        static let mintA9: Color = Color(h: 167, s: 0.996, l: 0.784, a: 0.910)
        static let mintA10: Color = Color(h: 163, s: 0.995, l: 0.805, a: 0.949)
        static let mintA11: Color = Color(h: 167, s: 0.998, l: 0.658, a: 0.862)
        static let mintA12: Color = Color(h: 156, s: 0.997, l: 0.899, a: 0.957)
    }
}

/// Add dynamic `RadixMint` to `SwiftUI` colors
public extension Color {
    static let mint1: Color = Color(light: RadixColor.Mint.mint1, dark: RadixColor.MintDark.mint1)
    static let mint2: Color = Color(light: RadixColor.Mint.mint2, dark: RadixColor.MintDark.mint2)
    static let mint3: Color = Color(light: RadixColor.Mint.mint3, dark: RadixColor.MintDark.mint3)
    static let mint4: Color = Color(light: RadixColor.Mint.mint4, dark: RadixColor.MintDark.mint4)
    static let mint5: Color = Color(light: RadixColor.Mint.mint5, dark: RadixColor.MintDark.mint5)
    static let mint6: Color = Color(light: RadixColor.Mint.mint6, dark: RadixColor.MintDark.mint6)
    static let mint7: Color = Color(light: RadixColor.Mint.mint7, dark: RadixColor.MintDark.mint7)
    static let mint8: Color = Color(light: RadixColor.Mint.mint8, dark: RadixColor.MintDark.mint8)
    static let mint9: Color = Color(light: RadixColor.Mint.mint9, dark: RadixColor.MintDark.mint9)
    static let mint10: Color = Color(light: RadixColor.Mint.mint10, dark: RadixColor.MintDark.mint10)
    static let mint11: Color = Color(light: RadixColor.Mint.mint11, dark: RadixColor.MintDark.mint11)
    static let mint12: Color = Color(light: RadixColor.Mint.mint12, dark: RadixColor.MintDark.mint12)

    static let mintA1: Color = Color(light: RadixColor.MintA.mintA1, dark: RadixColor.MintDarkA.mintA1)
    static let mintA2: Color = Color(light: RadixColor.MintA.mintA2, dark: RadixColor.MintDarkA.mintA2)
    static let mintA3: Color = Color(light: RadixColor.MintA.mintA3, dark: RadixColor.MintDarkA.mintA3)
    static let mintA4: Color = Color(light: RadixColor.MintA.mintA4, dark: RadixColor.MintDarkA.mintA4)
    static let mintA5: Color = Color(light: RadixColor.MintA.mintA5, dark: RadixColor.MintDarkA.mintA5)
    static let mintA6: Color = Color(light: RadixColor.MintA.mintA6, dark: RadixColor.MintDarkA.mintA6)
    static let mintA7: Color = Color(light: RadixColor.MintA.mintA7, dark: RadixColor.MintDarkA.mintA7)
    static let mintA8: Color = Color(light: RadixColor.MintA.mintA8, dark: RadixColor.MintDarkA.mintA8)
    static let mintA9: Color = Color(light: RadixColor.MintA.mintA9, dark: RadixColor.MintDarkA.mintA9)
    static let mintA10: Color = Color(light: RadixColor.MintA.mintA10, dark: RadixColor.MintDarkA.mintA10)
    static let mintA11: Color = Color(light: RadixColor.MintA.mintA11, dark: RadixColor.MintDarkA.mintA11)
    static let mintA12: Color = Color(light: RadixColor.MintA.mintA12, dark: RadixColor.MintDarkA.mintA12)
}
