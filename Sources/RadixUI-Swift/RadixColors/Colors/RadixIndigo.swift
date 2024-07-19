//
//  RadixIndigo.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Indigo`
extension RadixColor {
    // Collection: indigo
    class Indigo {
        static let indigo1 = Color(h: 225, s: 0.600, l: 0.994)
        static let indigo2 = Color(h: 223, s: 1.000, l: 0.986)
        static let indigo3 = Color(h: 223, s: 0.984, l: 0.971)
        static let indigo4 = Color(h: 223, s: 0.929, l: 0.950)
        static let indigo5 = Color(h: 224, s: 0.871, l: 0.920)
        static let indigo6 = Color(h: 224, s: 0.819, l: 0.878)
        static let indigo7 = Color(h: 225, s: 0.774, l: 0.821)
        static let indigo8 = Color(h: 226, s: 0.754, l: 0.745)
        static let indigo9 = Color(h: 226, s: 0.700, l: 0.555)
        static let indigo10 = Color(h: 226, s: 0.586, l: 0.513)
        static let indigo11 = Color(h: 226, s: 0.550, l: 0.450)
        static let indigo12 = Color(h: 226, s: 0.500, l: 0.240)
    }
    // Collection: indigoA
    class IndigoA {
        static let indigoA1 = Color(h: 240, s: 0.926, l: 0.265, a: 0.008)
        static let indigoA2 = Color(h: 223, s: 1.000, l: 0.510, a: 0.028)
        static let indigoA3 = Color(h: 224, s: 1.000, l: 0.501, a: 0.059)
        static let indigoA4 = Color(h: 223, s: 0.980, l: 0.485, a: 0.099)
        static let indigoA5 = Color(h: 225, s: 0.986, l: 0.464, a: 0.150)
        static let indigoA6 = Color(h: 224, s: 0.995, l: 0.449, a: 0.224)
        static let indigoA7 = Color(h: 225, s: 0.997, l: 0.439, a: 0.318)
        static let indigoA8 = Color(h: 226, s: 0.995, l: 0.431, a: 0.448)
        static let indigoA9 = Color(h: 226, s: 1.000, l: 0.412, a: 0.757)
        static let indigoA10 = Color(h: 226, s: 0.998, l: 0.371, a: 0.773)
        static let indigoA11 = Color(h: 226, s: 0.996, l: 0.311, a: 0.797)
        static let indigoA12 = Color(h: 226, s: 0.995, l: 0.137, a: 0.879)
    }
    // Collection: indigoDark
    class IndigoDark {
        static let indigo1 = Color(h: 229, s: 0.240, l: 0.100)
        static let indigo2 = Color(h: 230, s: 0.364, l: 0.129)
        static let indigo3 = Color(h: 228, s: 0.427, l: 0.181)
        static let indigo4 = Color(h: 227, s: 0.456, l: 0.214)
        static let indigo5 = Color(h: 227, s: 0.478, l: 0.244)
        static let indigo6 = Color(h: 226, s: 0.503, l: 0.288)
        static let indigo7 = Color(h: 226, s: 0.533, l: 0.366)
        static let indigo8 = Color(h: 226, s: 0.600, l: 0.520)
        static let indigo9 = Color(h: 226, s: 0.700, l: 0.555)
        static let indigo10 = Color(h: 230, s: 0.739, l: 0.633)
        static let indigo11 = Color(h: 235, s: 1.000, l: 0.800)
        static let indigo12 = Color(h: 235, s: 0.930, l: 0.930)
    }
    // Collection: indigoDarkA
    class IndigoDarkA {
        static let indigoA1 = Color(h: 240, s: 1.000, l: 0.495, a: 0.035)
        static let indigoA2 = Color(h: 232, s: 1.000, l: 0.500, a: 0.091)
        static let indigoA3 = Color(h: 228, s: 0.998, l: 0.568, a: 0.182)
        static let indigoA4 = Color(h: 228, s: 0.992, l: 0.595, a: 0.239)
        static let indigoA5 = Color(h: 227, s: 0.995, l: 0.599, a: 0.295)
        static let indigoA6 = Color(h: 225, s: 0.996, l: 0.609, a: 0.373)
        static let indigoA7 = Color(h: 226, s: 0.996, l: 0.622, a: 0.516)
        static let indigoA8 = Color(h: 226, s: 1.000, l: 0.634, a: 0.788)
        static let indigoA9 = Color(h: 226, s: 0.999, l: 0.634, a: 0.853)
        static let indigoA10 = Color(h: 230, s: 0.997, l: 0.695, a: 0.897)
        static let indigoA11 = Color(h: 235, s: 1.000, l: 0.800, a: 1.000)
        static let indigoA12 = Color(h: 236, s: 0.995, l: 0.935, a: 0.996)
    }
}

/// Add dynamic `RadixIndigo` to `SwiftUI` colors
public extension Color {
    static let indigo1 = Color(light: RadixColor.Indigo.indigo1, dark: RadixColor.IndigoDark.indigo1)
    static let indigo2 = Color(light: RadixColor.Indigo.indigo2, dark: RadixColor.IndigoDark.indigo2)
    static let indigo3 = Color(light: RadixColor.Indigo.indigo3, dark: RadixColor.IndigoDark.indigo3)
    static let indigo4 = Color(light: RadixColor.Indigo.indigo4, dark: RadixColor.IndigoDark.indigo4)
    static let indigo5 = Color(light: RadixColor.Indigo.indigo5, dark: RadixColor.IndigoDark.indigo5)
    static let indigo6 = Color(light: RadixColor.Indigo.indigo6, dark: RadixColor.IndigoDark.indigo6)
    static let indigo7 = Color(light: RadixColor.Indigo.indigo7, dark: RadixColor.IndigoDark.indigo7)
    static let indigo8 = Color(light: RadixColor.Indigo.indigo8, dark: RadixColor.IndigoDark.indigo8)
    static let indigo9 = Color(light: RadixColor.Indigo.indigo9, dark: RadixColor.IndigoDark.indigo9)
    static let indigo10 = Color(light: RadixColor.Indigo.indigo10, dark: RadixColor.IndigoDark.indigo10)
    static let indigo11 = Color(light: RadixColor.Indigo.indigo11, dark: RadixColor.IndigoDark.indigo11)
    static let indigo12 = Color(light: RadixColor.Indigo.indigo12, dark: RadixColor.IndigoDark.indigo12)

    static let indigoA1 = Color(light: RadixColor.IndigoA.indigoA1, dark: RadixColor.IndigoDarkA.indigoA1)
    static let indigoA2 = Color(light: RadixColor.IndigoA.indigoA2, dark: RadixColor.IndigoDarkA.indigoA2)
    static let indigoA3 = Color(light: RadixColor.IndigoA.indigoA3, dark: RadixColor.IndigoDarkA.indigoA3)
    static let indigoA4 = Color(light: RadixColor.IndigoA.indigoA4, dark: RadixColor.IndigoDarkA.indigoA4)
    static let indigoA5 = Color(light: RadixColor.IndigoA.indigoA5, dark: RadixColor.IndigoDarkA.indigoA5)
    static let indigoA6 = Color(light: RadixColor.IndigoA.indigoA6, dark: RadixColor.IndigoDarkA.indigoA6)
    static let indigoA7 = Color(light: RadixColor.IndigoA.indigoA7, dark: RadixColor.IndigoDarkA.indigoA7)
    static let indigoA8 = Color(light: RadixColor.IndigoA.indigoA8, dark: RadixColor.IndigoDarkA.indigoA8)
    static let indigoA9 = Color(light: RadixColor.IndigoA.indigoA9, dark: RadixColor.IndigoDarkA.indigoA9)
    static let indigoA10 = Color(light: RadixColor.IndigoA.indigoA10, dark: RadixColor.IndigoDarkA.indigoA10)
    static let indigoA11 = Color(light: RadixColor.IndigoA.indigoA11, dark: RadixColor.IndigoDarkA.indigoA11)
    static let indigoA12 = Color(light: RadixColor.IndigoA.indigoA12, dark: RadixColor.IndigoDarkA.indigoA12)
}
