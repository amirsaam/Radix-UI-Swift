//
//  RadixSage.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Sage`
extension RadixColor {
    // Collection: sage
    class Sage {
        static let sage1 = Color(h: 155, s: 0.300, l: 0.988)
        static let sage2 = Color(h: 150, s: 0.143, l: 0.973)
        static let sage3 = Color(h: 150, s: 0.080, l: 0.945)
        static let sage4 = Color(h: 150, s: 0.060, l: 0.920)
        static let sage5 = Color(h: 150, s: 0.049, l: 0.895)
        static let sage6 = Color(h: 150, s: 0.043, l: 0.867)
        static let sage7 = Color(h: 150, s: 0.037, l: 0.828)
        static let sage8 = Color(h: 150, s: 0.029, l: 0.729)
        static let sage9 = Color(h: 155, s: 0.035, l: 0.542)
        static let sage10 = Color(h: 158, s: 0.029, l: 0.493)
        static let sage11 = Color(h: 155, s: 0.030, l: 0.385)
        static let sage12 = Color(h: 155, s: 0.120, l: 0.115)
    }
    // Collection: sageA
    class SageA {
        static let sageA1 = Color(h: 150, s: 0.926, l: 0.265, a: 0.016)
        static let sageA2 = Color(h: 150, s: 0.862, l: 0.142, a: 0.032)
        static let sageA3 = Color(h: 150, s: 0.957, l: 0.069, a: 0.059)
        static let sageA4 = Color(h: 160, s: 0.890, l: 0.076, a: 0.087)
        static let sageA5 = Color(h: 140, s: 0.968, l: 0.055, a: 0.110)
        static let sageA6 = Color(h: 140, s: 0.888, l: 0.048, a: 0.138)
        static let sageA7 = Color(h: 140, s: 0.917, l: 0.036, a: 0.177)
        static let sageA8 = Color(h: 150, s: 0.932, l: 0.030, a: 0.279)
        static let sageA9 = Color(h: 158, s: 0.970, l: 0.034, a: 0.475)
        static let sageA10 = Color(h: 163, s: 0.970, l: 0.027, a: 0.522)
        static let sageA11 = Color(h: 160, s: 0.955, l: 0.020, a: 0.628)
        static let sageA12 = Color(h: 154, s: 0.935, l: 0.016, a: 0.899)
    }
    // Collection: sageDark
    class SageDark {
        static let sage1 = Color(h: 155, s: 0.070, l: 0.092)
        static let sage2 = Color(h: 150, s: 0.077, l: 0.102)
        static let sage3 = Color(h: 151, s: 0.055, l: 0.152)
        static let sage4 = Color(h: 152, s: 0.047, l: 0.183)
        static let sage5 = Color(h: 153, s: 0.042, l: 0.211)
        static let sage6 = Color(h: 153, s: 0.037, l: 0.242)
        static let sage7 = Color(h: 154, s: 0.033, l: 0.287)
        static let sage8 = Color(h: 156, s: 0.026, l: 0.371)
        static let sage9 = Color(h: 155, s: 0.060, l: 0.415)
        static let sage10 = Color(h: 157, s: 0.046, l: 0.492)
        static let sage11 = Color(h: 155, s: 0.050, l: 0.683)
        static let sage12 = Color(h: 155, s: 0.070, l: 0.930)
    }
    // Collection: sageDarkA
    class SageDarkA {
        static let sageA1 = Color(h: 126, s: 1.000, l: 0.439, a: 0.005)
        static let sageA2 = Color(h: 150, s: 0.927, l: 0.530, a: 0.018)
        static let sageA3 = Color(h: 150, s: 0.955, l: 0.889, a: 0.074)
        static let sageA4 = Color(h: 156, s: 0.933, l: 0.904, a: 0.109)
        static let sageA5 = Color(h: 150, s: 0.948, l: 0.940, a: 0.139)
        static let sageA6 = Color(h: 156, s: 0.928, l: 0.939, a: 0.174)
        static let sageA7 = Color(h: 156, s: 0.924, l: 0.953, a: 0.226)
        static let sageA8 = Color(h: 156, s: 0.917, l: 0.966, a: 0.317)
        static let sageA9 = Color(h: 157, s: 0.998, l: 0.933, a: 0.381)
        static let sageA10 = Color(h: 158, s: 0.968, l: 0.952, a: 0.464)
        static let sageA11 = Color(h: 158, s: 0.981, l: 0.976, a: 0.667)
        static let sageA12 = Color(h: 150, s: 0.880, l: 0.995, a: 0.927)
    }
}

/// Add dynamic `RadixSage` to `SwiftUI` colors
public extension Color {
    static let sage1 = Color(light: RadixColor.Sage.sage1, dark: RadixColor.SageDark.sage1)
    static let sage2 = Color(light: RadixColor.Sage.sage2, dark: RadixColor.SageDark.sage2)
    static let sage3 = Color(light: RadixColor.Sage.sage3, dark: RadixColor.SageDark.sage3)
    static let sage4 = Color(light: RadixColor.Sage.sage4, dark: RadixColor.SageDark.sage4)
    static let sage5 = Color(light: RadixColor.Sage.sage5, dark: RadixColor.SageDark.sage5)
    static let sage6 = Color(light: RadixColor.Sage.sage6, dark: RadixColor.SageDark.sage6)
    static let sage7 = Color(light: RadixColor.Sage.sage7, dark: RadixColor.SageDark.sage7)
    static let sage8 = Color(light: RadixColor.Sage.sage8, dark: RadixColor.SageDark.sage8)
    static let sage9 = Color(light: RadixColor.Sage.sage9, dark: RadixColor.SageDark.sage9)
    static let sage10 = Color(light: RadixColor.Sage.sage10, dark: RadixColor.SageDark.sage10)
    static let sage11 = Color(light: RadixColor.Sage.sage11, dark: RadixColor.SageDark.sage11)
    static let sage12 = Color(light: RadixColor.Sage.sage12, dark: RadixColor.SageDark.sage12)
    
    static let sageA1 = Color(light: RadixColor.SageA.sageA1, dark: RadixColor.SageDarkA.sageA1)
    static let sageA2 = Color(light: RadixColor.SageA.sageA2, dark: RadixColor.SageDarkA.sageA2)
    static let sageA3 = Color(light: RadixColor.SageA.sageA3, dark: RadixColor.SageDarkA.sageA3)
    static let sageA4 = Color(light: RadixColor.SageA.sageA4, dark: RadixColor.SageDarkA.sageA4)
    static let sageA5 = Color(light: RadixColor.SageA.sageA5, dark: RadixColor.SageDarkA.sageA5)
    static let sageA6 = Color(light: RadixColor.SageA.sageA6, dark: RadixColor.SageDarkA.sageA6)
    static let sageA7 = Color(light: RadixColor.SageA.sageA7, dark: RadixColor.SageDarkA.sageA7)
    static let sageA8 = Color(light: RadixColor.SageA.sageA8, dark: RadixColor.SageDarkA.sageA8)
    static let sageA9 = Color(light: RadixColor.SageA.sageA9, dark: RadixColor.SageDarkA.sageA9)
    static let sageA10 = Color(light: RadixColor.SageA.sageA10, dark: RadixColor.SageDarkA.sageA10)
    static let sageA11 = Color(light: RadixColor.SageA.sageA11, dark: RadixColor.SageDarkA.sageA11)
    static let sageA12 = Color(light: RadixColor.SageA.sageA12, dark: RadixColor.SageDarkA.sageA12)
}
