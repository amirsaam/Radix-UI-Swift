//
//  RadixSlate.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Slate`
extension RadixColor {
    // Collection: slate
    class Slate {
        static let slate1 = Color(h: 240, s: 0.220, l: 0.990)
        static let slate2 = Color(h: 240, s: 0.200, l: 0.980)
        static let slate3 = Color(h: 239, s: 0.134, l: 0.954)
        static let slate4 = Color(h: 238, s: 0.118, l: 0.929)
        static let slate5 = Color(h: 237, s: 0.111, l: 0.905)
        static let slate6 = Color(h: 236, s: 0.106, l: 0.879)
        static let slate7 = Color(h: 234, s: 0.104, l: 0.844)
        static let slate8 = Color(h: 231, s: 0.102, l: 0.751)
        static let slate9 = Color(h: 230, s: 0.060, l: 0.570)
        static let slate10 = Color(h: 227, s: 0.052, l: 0.518)
        static let slate11 = Color(h: 220, s: 0.060, l: 0.400)
        static let slate12 = Color(h: 210, s: 0.120, l: 0.125)
    }
    // Collection: slateA
    class SlateA {
        static let slateA1 = Color(h: 240, s: 0.893, l: 0.183, a: 0.012)
        static let slateA2 = Color(h: 240, s: 0.893, l: 0.183, a: 0.024)
        static let slateA3 = Color(h: 240, s: 0.997, l: 0.116, a: 0.051)
        static let slateA4 = Color(h: 240, s: 0.932, l: 0.106, a: 0.079)
        static let slateA5 = Color(h: 240, s: 0.988, l: 0.094, a: 0.106)
        static let slateA6 = Color(h: 240, s: 0.946, l: 0.093, a: 0.134)
        static let slateA7 = Color(h: 233, s: 0.972, l: 0.093, a: 0.173)
        static let slateA8 = Color(h: 231, s: 0.981, l: 0.094, a: 0.275)
        static let slateA9 = Color(h: 231, s: 0.996, l: 0.056, a: 0.455)
        static let slateA10 = Color(h: 230, s: 0.995, l: 0.047, a: 0.506)
        static let slateA11 = Color(h: 220, s: 0.980, l: 0.038, a: 0.624)
        static let slateA12 = Color(h: 210, s: 0.951, l: 0.019, a: 0.891)
    }
    // Collection: slateDark
    class SlateDark {
        static let slate1 = Color(h: 240, s: 0.050, l: 0.098)
        static let slate2 = Color(h: 240, s: 0.069, l: 0.114)
        static let slate3 = Color(h: 227, s: 0.067, l: 0.164)
        static let slate4 = Color(h: 222, s: 0.066, l: 0.194)
        static let slate5 = Color(h: 218, s: 0.065, l: 0.221)
        static let slate6 = Color(h: 214, s: 0.064, l: 0.251)
        static let slate7 = Color(h: 209, s: 0.062, l: 0.294)
        static let slate8 = Color(h: 202, s: 0.058, l: 0.375)
        static let slate9 = Color(h: 220, s: 0.060, l: 0.440)
        static let slate10 = Color(h: 218, s: 0.053, l: 0.515)
        static let slate11 = Color(h: 220, s: 0.070, l: 0.700)
        static let slate12 = Color(h: 220, s: 0.070, l: 0.935)
    }
    // Collection: slateDarkA
    class SlateDarkA {
        static let slateA1 = Color(h: 240, s: 0.927, l: 0.530, a: 0.009)
        static let slateA2 = Color(h: 240, s: 0.925, l: 0.727, a: 0.031)
        static let slateA3 = Color(h: 230, s: 0.993, l: 0.870, a: 0.091)
        static let slateA4 = Color(h: 223, s: 0.971, l: 0.888, a: 0.126)
        static let slateA5 = Color(h: 223, s: 0.990, l: 0.911, a: 0.156)
        static let slateA6 = Color(h: 218, s: 0.971, l: 0.915, a: 0.191)
        static let slateA7 = Color(h: 210, s: 0.974, l: 0.917, a: 0.243)
        static let slateA8 = Color(h: 202, s: 0.973, l: 0.934, a: 0.334)
        static let slateA9 = Color(h: 219, s: 0.976, l: 0.932, a: 0.412)
        static let slateA10 = Color(h: 217, s: 0.983, l: 0.947, a: 0.494)
        static let slateA11 = Color(h: 218, s: 0.985, l: 0.968, a: 0.693)
        static let slateA12 = Color(h: 220, s: 0.874, l: 0.993, a: 0.936)
    }
}

/// Add dynamic `RadixSlate` to `SwiftUI` colors
public extension Color {
    static let slate1 = Color(light: RadixColor.Slate.slate1, dark: RadixColor.SlateDark.slate1)
    static let slate2 = Color(light: RadixColor.Slate.slate2, dark: RadixColor.SlateDark.slate2)
    static let slate3 = Color(light: RadixColor.Slate.slate3, dark: RadixColor.SlateDark.slate3)
    static let slate4 = Color(light: RadixColor.Slate.slate4, dark: RadixColor.SlateDark.slate4)
    static let slate5 = Color(light: RadixColor.Slate.slate5, dark: RadixColor.SlateDark.slate5)
    static let slate6 = Color(light: RadixColor.Slate.slate6, dark: RadixColor.SlateDark.slate6)
    static let slate7 = Color(light: RadixColor.Slate.slate7, dark: RadixColor.SlateDark.slate7)
    static let slate8 = Color(light: RadixColor.Slate.slate8, dark: RadixColor.SlateDark.slate8)
    static let slate9 = Color(light: RadixColor.Slate.slate9, dark: RadixColor.SlateDark.slate9)
    static let slate10 = Color(light: RadixColor.Slate.slate10, dark: RadixColor.SlateDark.slate10)
    static let slate11 = Color(light: RadixColor.Slate.slate11, dark: RadixColor.SlateDark.slate11)
    static let slate12 = Color(light: RadixColor.Slate.slate12, dark: RadixColor.SlateDark.slate12)
    
    static let slateA1 = Color(light: RadixColor.SlateA.slateA1, dark: RadixColor.SlateDarkA.slateA1)
    static let slateA2 = Color(light: RadixColor.SlateA.slateA2, dark: RadixColor.SlateDarkA.slateA2)
    static let slateA3 = Color(light: RadixColor.SlateA.slateA3, dark: RadixColor.SlateDarkA.slateA3)
    static let slateA4 = Color(light: RadixColor.SlateA.slateA4, dark: RadixColor.SlateDarkA.slateA4)
    static let slateA5 = Color(light: RadixColor.SlateA.slateA5, dark: RadixColor.SlateDarkA.slateA5)
    static let slateA6 = Color(light: RadixColor.SlateA.slateA6, dark: RadixColor.SlateDarkA.slateA6)
    static let slateA7 = Color(light: RadixColor.SlateA.slateA7, dark: RadixColor.SlateDarkA.slateA7)
    static let slateA8 = Color(light: RadixColor.SlateA.slateA8, dark: RadixColor.SlateDarkA.slateA8)
    static let slateA9 = Color(light: RadixColor.SlateA.slateA9, dark: RadixColor.SlateDarkA.slateA9)
    static let slateA10 = Color(light: RadixColor.SlateA.slateA10, dark: RadixColor.SlateDarkA.slateA10)
    static let slateA11 = Color(light: RadixColor.SlateA.slateA11, dark: RadixColor.SlateDarkA.slateA11)
    static let slateA12 = Color(light: RadixColor.SlateA.slateA12, dark: RadixColor.SlateDarkA.slateA12)
}
