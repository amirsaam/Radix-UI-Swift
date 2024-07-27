//
//  RadixIris.swift
//  
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Iris`
extension RadixColor {
    // Collection: iris
    class Iris {
        static let iris1 = Color(h: 243, s: 0.650, l: 0.995)
        static let iris2 = Color(h: 240, s: 1.000, l: 0.990)
        static let iris3 = Color(h: 240, s: 0.999, l: 0.977)
        static let iris4 = Color(h: 240, s: 0.935, l: 0.959)
        static let iris5 = Color(h: 240, s: 0.865, l: 0.934)
        static let iris6 = Color(h: 240, s: 0.802, l: 0.898)
        static let iris7 = Color(h: 239, s: 0.753, l: 0.846)
        static let iris8 = Color(h: 238, s: 0.739, l: 0.775)
        static let iris9 = Color(h: 240, s: 0.600, l: 0.598)
        static let iris10 = Color(h: 240, s: 0.557, l: 0.567)
        static let iris11 = Color(h: 240, s: 0.500, l: 0.520)
        static let iris12 = Color(h: 238, s: 0.430, l: 0.268)
    }
    // Collection: irisA
    class IrisA {
        static let irisA1 = Color(h: 240, s: 1.000, l: 0.510, a: 0.008)
        static let irisA2 = Color(h: 240, s: 1.000, l: 0.510, a: 0.020)
        static let irisA3 = Color(h: 240, s: 1.000, l: 0.510, a: 0.048)
        static let irisA4 = Color(h: 240, s: 0.985, l: 0.479, a: 0.079)
        static let irisA5 = Color(h: 240, s: 0.992, l: 0.470, a: 0.122)
        static let irisA6 = Color(h: 240, s: 0.992, l: 0.449, a: 0.185)
        static let irisA7 = Color(h: 239, s: 0.996, l: 0.428, a: 0.271)
        static let irisA8 = Color(h: 238, s: 0.995, l: 0.426, a: 0.393)
        static let irisA9 = Color(h: 240, s: 0.996, l: 0.376, a: 0.644)
        static let irisA10 = Color(h: 240, s: 0.998, l: 0.358, a: 0.675)
        static let irisA11 = Color(h: 240, s: 0.998, l: 0.335, a: 0.722)
        static let irisA12 = Color(h: 238, s: 0.992, l: 0.138, a: 0.848)
    }
    // Collection: irisDark
    class IrisDark {
        static let iris1 = Color(h: 240, s: 0.220, l: 0.105)
        static let iris2 = Color(h: 243, s: 0.304, l: 0.135)
        static let iris3 = Color(h: 242, s: 0.326, l: 0.189)
        static let iris4 = Color(h: 241, s: 0.335, l: 0.226)
        static let iris5 = Color(h: 241, s: 0.342, l: 0.261)
        static let iris6 = Color(h: 240, s: 0.350, l: 0.310)
        static let iris7 = Color(h: 240, s: 0.360, l: 0.394)
        static let iris8 = Color(h: 240, s: 0.452, l: 0.549)
        static let iris9 = Color(h: 240, s: 0.600, l: 0.598)
        static let iris10 = Color(h: 241, s: 0.664, l: 0.657)
        static let iris11 = Color(h: 242, s: 1.000, l: 0.810)
        static let iris12 = Color(h: 242, s: 0.920, l: 0.935)
    }
    // Collection: irisDarkA
    class IrisDarkA {
        static let irisA1 = Color(h: 240, s: 1.000, l: 0.500, a: 0.039)
        static let irisA2 = Color(h: 243, s: 0.998, l: 0.547, a: 0.091)
        static let irisA3 = Color(h: 244, s: 0.988, l: 0.635, a: 0.174)
        static let irisA4 = Color(h: 242, s: 0.993, l: 0.665, a: 0.230)
        static let irisA5 = Color(h: 241, s: 0.994, l: 0.685, a: 0.282)
        static let irisA6 = Color(h: 240, s: 0.994, l: 0.693, a: 0.360)
        static let irisA7 = Color(h: 240, s: 0.995, l: 0.706, a: 0.490)
        static let irisA8 = Color(h: 240, s: 0.997, l: 0.719, a: 0.728)
        static let irisA9 = Color(h: 240, s: 0.998, l: 0.706, a: 0.823)
        static let irisA10 = Color(h: 241, s: 0.998, l: 0.737, a: 0.875)
        static let irisA11 = Color(h: 242, s: 1.000, l: 0.810, a: 1.000)
        static let irisA12 = Color(h: 242, s: 0.995, l: 0.939, a: 0.996)
    }
}

/// Add dynamic `RadixIris` to `SwiftUI` colors
public extension Color {
    static let iris1 = Color(light: RadixColor.Iris.iris1, dark: RadixColor.IrisDark.iris1)
    static let iris2 = Color(light: RadixColor.Iris.iris2, dark: RadixColor.IrisDark.iris2)
    static let iris3 = Color(light: RadixColor.Iris.iris3, dark: RadixColor.IrisDark.iris3)
    static let iris4 = Color(light: RadixColor.Iris.iris4, dark: RadixColor.IrisDark.iris4)
    static let iris5 = Color(light: RadixColor.Iris.iris5, dark: RadixColor.IrisDark.iris5)
    static let iris6 = Color(light: RadixColor.Iris.iris6, dark: RadixColor.IrisDark.iris6)
    static let iris7 = Color(light: RadixColor.Iris.iris7, dark: RadixColor.IrisDark.iris7)
    static let iris8 = Color(light: RadixColor.Iris.iris8, dark: RadixColor.IrisDark.iris8)
    static let iris9 = Color(light: RadixColor.Iris.iris9, dark: RadixColor.IrisDark.iris9)
    static let iris10 = Color(light: RadixColor.Iris.iris10, dark: RadixColor.IrisDark.iris10)
    static let iris11 = Color(light: RadixColor.Iris.iris11, dark: RadixColor.IrisDark.iris11)
    static let iris12 = Color(light: RadixColor.Iris.iris12, dark: RadixColor.IrisDark.iris12)

    static let irisA1 = Color(light: RadixColor.IrisA.irisA1, dark: RadixColor.IrisDarkA.irisA1)
    static let irisA2 = Color(light: RadixColor.IrisA.irisA2, dark: RadixColor.IrisDarkA.irisA2)
    static let irisA3 = Color(light: RadixColor.IrisA.irisA3, dark: RadixColor.IrisDarkA.irisA3)
    static let irisA4 = Color(light: RadixColor.IrisA.irisA4, dark: RadixColor.IrisDarkA.irisA4)
    static let irisA5 = Color(light: RadixColor.IrisA.irisA5, dark: RadixColor.IrisDarkA.irisA5)
    static let irisA6 = Color(light: RadixColor.IrisA.irisA6, dark: RadixColor.IrisDarkA.irisA6)
    static let irisA7 = Color(light: RadixColor.IrisA.irisA7, dark: RadixColor.IrisDarkA.irisA7)
    static let irisA8 = Color(light: RadixColor.IrisA.irisA8, dark: RadixColor.IrisDarkA.irisA8)
    static let irisA9 = Color(light: RadixColor.IrisA.irisA9, dark: RadixColor.IrisDarkA.irisA9)
    static let irisA10 = Color(light: RadixColor.IrisA.irisA10, dark: RadixColor.IrisDarkA.irisA10)
    static let irisA11 = Color(light: RadixColor.IrisA.irisA11, dark: RadixColor.IrisDarkA.irisA11)
    static let irisA12 = Color(light: RadixColor.IrisA.irisA12, dark: RadixColor.IrisDarkA.irisA12)
}
