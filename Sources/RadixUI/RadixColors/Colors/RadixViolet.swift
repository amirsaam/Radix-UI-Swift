//
//  RadixViolet.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Violet`
extension RadixColor {
    // Collection: violet
    class Violet {
        static let violet1 = Color(h: 255, s: 0.650, l: 0.994)
        static let violet2 = Color(h: 252, s: 1.000, l: 0.990)
        static let violet3 = Color(h: 252, s: 0.969, l: 0.974)
        static let violet4 = Color(h: 252, s: 0.915, l: 0.955)
        static let violet5 = Color(h: 252, s: 0.851, l: 0.930)
        static let violet6 = Color(h: 252, s: 0.778, l: 0.894)
        static let violet7 = Color(h: 252, s: 0.710, l: 0.837)
        static let violet8 = Color(h: 252, s: 0.686, l: 0.763)
        static let violet9 = Color(h: 252, s: 0.560, l: 0.575)
        static let violet10 = Color(h: 251, s: 0.481, l: 0.535)
        static let violet11 = Color(h: 250, s: 0.430, l: 0.480)
        static let violet12 = Color(h: 250, s: 0.430, l: 0.260)
    }
    // Collection: violetA
    class VioletA {
        static let violetA1 = Color(h: 270, s: 0.943, l: 0.346, a: 0.012)
        static let violetA2 = Color(h: 252, s: 1.000, l: 0.510, a: 0.020)
        static let violetA3 = Color(h: 254, s: 1.000, l: 0.500, a: 0.051)
        static let violetA4 = Color(h: 251, s: 0.983, l: 0.482, a: 0.087)
        static let violetA5 = Color(h: 252, s: 0.990, l: 0.457, a: 0.130)
        static let violetA6 = Color(h: 251, s: 0.991, l: 0.440, a: 0.189)
        static let violetA7 = Color(h: 252, s: 0.995, l: 0.417, a: 0.279)
        static let violetA8 = Color(h: 252, s: 1.000, l: 0.407, a: 0.400)
        static let violetA9 = Color(h: 252, s: 0.999, l: 0.358, a: 0.663)
        static let violetA10 = Color(h: 251, s: 0.996, l: 0.325, a: 0.691)
        static let violetA11 = Color(h: 250, s: 0.998, l: 0.284, a: 0.726)
        static let violetA12 = Color(h: 249, s: 1.000, l: 0.131, a: 0.851)
    }
    // Collection: violetDark
    class VioletDark {
        static let violet1 = Color(h: 250, s: 0.200, l: 0.102)
        static let violet2 = Color(h: 255, s: 0.303, l: 0.129)
        static let violet3 = Color(h: 254, s: 0.333, l: 0.184)
        static let violet4 = Color(h: 253, s: 0.346, l: 0.221)
        static let violet5 = Color(h: 253, s: 0.355, l: 0.255)
        static let violet6 = Color(h: 252, s: 0.366, l: 0.305)
        static let violet7 = Color(h: 251, s: 0.378, l: 0.390)
        static let violet8 = Color(h: 250, s: 0.462, l: 0.541)
        static let violet9 = Color(h: 252, s: 0.560, l: 0.575)
        static let violet10 = Color(h: 253, s: 0.632, l: 0.641)
        static let violet11 = Color(h: 255, s: 1.000, l: 0.800)
        static let violet12 = Color(h: 250, s: 0.930, l: 0.930)
    }
    // Collection: violetDarkA
    class VioletDarkA {
        static let violetA1 = Color(h: 240, s: 1.000, l: 0.490, a: 0.031)
        static let violetA2 = Color(h: 255, s: 0.983, l: 0.519, a: 0.083)
        static let violetA3 = Color(h: 255, s: 0.998, l: 0.628, a: 0.169)
        static let violetA4 = Color(h: 252, s: 0.990, l: 0.658, a: 0.226)
        static let violetA5 = Color(h: 253, s: 0.991, l: 0.672, a: 0.278)
        static let violetA6 = Color(h: 253, s: 1.000, l: 0.685, a: 0.355)
        static let violetA7 = Color(h: 251, s: 0.995, l: 0.698, a: 0.490)
        static let violetA8 = Color(h: 250, s: 0.997, l: 0.708, a: 0.728)
        static let violetA9 = Color(h: 252, s: 0.997, l: 0.700, a: 0.793)
        static let violetA10 = Color(h: 253, s: 0.999, l: 0.735, a: 0.853)
        static let violetA11 = Color(h: 255, s: 1.000, l: 0.800, a: 1.000)
        static let violetA12 = Color(h: 249, s: 0.995, l: 0.935, a: 0.996)
    }
}

/// Add dynamic `RadixViolet` to `SwiftUI` colors
public extension Color {
    static let violet1 = Color(light: RadixColor.Violet.violet1, dark: RadixColor.VioletDark.violet1)
    static let violet2 = Color(light: RadixColor.Violet.violet2, dark: RadixColor.VioletDark.violet2)
    static let violet3 = Color(light: RadixColor.Violet.violet3, dark: RadixColor.VioletDark.violet3)
    static let violet4 = Color(light: RadixColor.Violet.violet4, dark: RadixColor.VioletDark.violet4)
    static let violet5 = Color(light: RadixColor.Violet.violet5, dark: RadixColor.VioletDark.violet5)
    static let violet6 = Color(light: RadixColor.Violet.violet6, dark: RadixColor.VioletDark.violet6)
    static let violet7 = Color(light: RadixColor.Violet.violet7, dark: RadixColor.VioletDark.violet7)
    static let violet8 = Color(light: RadixColor.Violet.violet8, dark: RadixColor.VioletDark.violet8)
    static let violet9 = Color(light: RadixColor.Violet.violet9, dark: RadixColor.VioletDark.violet9)
    static let violet10 = Color(light: RadixColor.Violet.violet10, dark: RadixColor.VioletDark.violet10)
    static let violet11 = Color(light: RadixColor.Violet.violet11, dark: RadixColor.VioletDark.violet11)
    static let violet12 = Color(light: RadixColor.Violet.violet12, dark: RadixColor.VioletDark.violet12)
    
    static let violetA1 = Color(light: RadixColor.VioletA.violetA1, dark: RadixColor.VioletDarkA.violetA1)
    static let violetA2 = Color(light: RadixColor.VioletA.violetA2, dark: RadixColor.VioletDarkA.violetA2)
    static let violetA3 = Color(light: RadixColor.VioletA.violetA3, dark: RadixColor.VioletDarkA.violetA3)
    static let violetA4 = Color(light: RadixColor.VioletA.violetA4, dark: RadixColor.VioletDarkA.violetA4)
    static let violetA5 = Color(light: RadixColor.VioletA.violetA5, dark: RadixColor.VioletDarkA.violetA5)
    static let violetA6 = Color(light: RadixColor.VioletA.violetA6, dark: RadixColor.VioletDarkA.violetA6)
    static let violetA7 = Color(light: RadixColor.VioletA.violetA7, dark: RadixColor.VioletDarkA.violetA7)
    static let violetA8 = Color(light: RadixColor.VioletA.violetA8, dark: RadixColor.VioletDarkA.violetA8)
    static let violetA9 = Color(light: RadixColor.VioletA.violetA9, dark: RadixColor.VioletDarkA.violetA9)
    static let violetA10 = Color(light: RadixColor.VioletA.violetA10, dark: RadixColor.VioletDarkA.violetA10)
    static let violetA11 = Color(light: RadixColor.VioletA.violetA11, dark: RadixColor.VioletDarkA.violetA11)
    static let violetA12 = Color(light: RadixColor.VioletA.violetA12, dark: RadixColor.VioletDarkA.violetA12)
}
