//
//  RadixSand.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Sand`
extension RadixColor {
    // Collection: sand
    class Sand {
        static let sand1 = Color(h: 50, s: 0.200, l: 0.990)
        static let sand2 = Color(h: 60, s: 0.077, l: 0.975)
        static let sand3 = Color(h: 59, s: 0.058, l: 0.945)
        static let sand4 = Color(h: 58, s: 0.053, l: 0.918)
        static let sand5 = Color(h: 57, s: 0.051, l: 0.890)
        static let sand6 = Color(h: 56, s: 0.050, l: 0.860)
        static let sand7 = Color(h: 54, s: 0.049, l: 0.818)
        static let sand8 = Color(h: 51, s: 0.050, l: 0.724)
        static let sand9 = Color(h: 60, s: 0.030, l: 0.539)
        static let sand10 = Color(h: 60, s: 0.026, l: 0.490)
        static let sand11 = Color(h: 50, s: 0.025, l: 0.380)
        static let sand12 = Color(h: 50, s: 0.080, l: 0.120)
    }
    // Collection: sandA
    class SandA {
        static let sandA1 = Color(h: 60, s: 0.893, l: 0.183, a: 0.012)
        static let sandA2 = Color(h: 60, s: 0.781, l: 0.090, a: 0.028)
        static let sandA3 = Color(h: 60, s: 0.957, l: 0.069, a: 0.059)
        static let sandA4 = Color(h: 60, s: 0.844, l: 0.053, a: 0.087)
        static let sandA5 = Color(h: 60, s: 0.935, l: 0.037, a: 0.114)
        static let sandA6 = Color(h: 60, s: 0.867, l: 0.046, a: 0.146)
        static let sandA7 = Color(h: 48, s: 0.921, l: 0.055, a: 0.193)
        static let sandA8 = Color(h: 51, s: 0.945, l: 0.050, a: 0.291)
        static let sandA9 = Color(h: 60, s: 0.966, l: 0.030, a: 0.475)
        static let sandA10 = Color(h: 60, s: 0.965, l: 0.023, a: 0.522)
        static let sandA11 = Color(h: 60, s: 0.940, l: 0.017, a: 0.632)
        static let sandA12 = Color(h: 48, s: 0.924, l: 0.012, a: 0.891)
    }
    // Collection: sandDark
    class SandDark {
        static let sand1 = Color(h: 60, s: 0.060, l: 0.090)
        static let sand2 = Color(h: 60, s: 0.019, l: 0.104)
        static let sand3 = Color(h: 56, s: 0.024, l: 0.154)
        static let sand4 = Color(h: 53, s: 0.027, l: 0.184)
        static let sand5 = Color(h: 51, s: 0.029, l: 0.212)
        static let sand6 = Color(h: 49, s: 0.031, l: 0.243)
        static let sand7 = Color(h: 47, s: 0.033, l: 0.287)
        static let sand8 = Color(h: 43, s: 0.037, l: 0.371)
        static let sand9 = Color(h: 50, s: 0.040, l: 0.418)
        static let sand10 = Color(h: 48, s: 0.035, l: 0.495)
        static let sand11 = Color(h: 50, s: 0.050, l: 0.683)
        static let sand12 = Color(h: 56, s: 0.070, l: 0.930)
    }
    // Collection: sandDarkA
    class SandDarkA {
        static let sandA1 = Color(h: 60, s: 0.984, l: 0.047, a: 0.084)
        static let sandA2 = Color(h: 60, s: 0.994, l: 0.848, a: 0.013)
        static let sandA3 = Color(h: 60, s: 0.855, l: 0.934, a: 0.070)
        static let sandA4 = Color(h: 60, s: 0.977, l: 0.961, a: 0.104)
        static let sandA5 = Color(h: 45, s: 0.948, l: 0.940, a: 0.139)
        static let sandA6 = Color(h: 45, s: 0.912, l: 0.951, a: 0.174)
        static let sandA7 = Color(h: 48, s: 0.924, l: 0.953, a: 0.226)
        static let sandA8 = Color(h: 43, s: 0.959, l: 0.955, a: 0.321)
        static let sandA9 = Color(h: 47, s: 0.981, l: 0.952, a: 0.377)
        static let sandA10 = Color(h: 47, s: 0.961, l: 0.960, a: 0.464)
        static let sandA11 = Color(h: 52, s: 0.981, l: 0.976, a: 0.667)
        static let sandA12 = Color(h: 60, s: 0.880, l: 0.995, a: 0.927)
    }
}

/// Add dynamic `RadixSand` to `SwiftUI` colors
public extension Color {
    static let sand1 = Color(light: RadixColor.Sand.sand1, dark: RadixColor.SandDark.sand1)
    static let sand2 = Color(light: RadixColor.Sand.sand2, dark: RadixColor.SandDark.sand2)
    static let sand3 = Color(light: RadixColor.Sand.sand3, dark: RadixColor.SandDark.sand3)
    static let sand4 = Color(light: RadixColor.Sand.sand4, dark: RadixColor.SandDark.sand4)
    static let sand5 = Color(light: RadixColor.Sand.sand5, dark: RadixColor.SandDark.sand5)
    static let sand6 = Color(light: RadixColor.Sand.sand6, dark: RadixColor.SandDark.sand6)
    static let sand7 = Color(light: RadixColor.Sand.sand7, dark: RadixColor.SandDark.sand7)
    static let sand8 = Color(light: RadixColor.Sand.sand8, dark: RadixColor.SandDark.sand8)
    static let sand9 = Color(light: RadixColor.Sand.sand9, dark: RadixColor.SandDark.sand9)
    static let sand10 = Color(light: RadixColor.Sand.sand10, dark: RadixColor.SandDark.sand10)
    static let sand11 = Color(light: RadixColor.Sand.sand11, dark: RadixColor.SandDark.sand11)
    static let sand12 = Color(light: RadixColor.Sand.sand12, dark: RadixColor.SandDark.sand12)
    
    static let sandA1 = Color(light: RadixColor.SandA.sandA1, dark: RadixColor.SandDarkA.sandA1)
    static let sandA2 = Color(light: RadixColor.SandA.sandA2, dark: RadixColor.SandDarkA.sandA2)
    static let sandA3 = Color(light: RadixColor.SandA.sandA3, dark: RadixColor.SandDarkA.sandA3)
    static let sandA4 = Color(light: RadixColor.SandA.sandA4, dark: RadixColor.SandDarkA.sandA4)
    static let sandA5 = Color(light: RadixColor.SandA.sandA5, dark: RadixColor.SandDarkA.sandA5)
    static let sandA6 = Color(light: RadixColor.SandA.sandA6, dark: RadixColor.SandDarkA.sandA6)
    static let sandA7 = Color(light: RadixColor.SandA.sandA7, dark: RadixColor.SandDarkA.sandA7)
    static let sandA8 = Color(light: RadixColor.SandA.sandA8, dark: RadixColor.SandDarkA.sandA8)
    static let sandA9 = Color(light: RadixColor.SandA.sandA9, dark: RadixColor.SandDarkA.sandA9)
    static let sandA10 = Color(light: RadixColor.SandA.sandA10, dark: RadixColor.SandDarkA.sandA10)
    static let sandA11 = Color(light: RadixColor.SandA.sandA11, dark: RadixColor.SandDarkA.sandA11)
    static let sandA12 = Color(light: RadixColor.SandA.sandA12, dark: RadixColor.SandDarkA.sandA12)
}
