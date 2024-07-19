//
//  RadixMauve.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Mauve`
extension RadixColor {
    // Collection: mauve
    class Mauve {
        static let mauve1 = Color(h: 300, s: 0.260, l: 0.990)
        static let mauve2 = Color(h: 270, s: 0.200, l: 0.980)
        static let mauve3 = Color(h: 267, s: 0.138, l: 0.953)
        static let mauve4 = Color(h: 265, s: 0.122, l: 0.927)
        static let mauve5 = Color(h: 263, s: 0.116, l: 0.903)
        static let mauve6 = Color(h: 261, s: 0.111, l: 0.877)
        static let mauve7 = Color(h: 257, s: 0.108, l: 0.843)
        static let mauve8 = Color(h: 249, s: 0.104, l: 0.755)
        static let mauve9 = Color(h: 252, s: 0.060, l: 0.573)
        static let mauve10 = Color(h: 250, s: 0.050, l: 0.523)
        static let mauve11 = Color(h: 252, s: 0.050, l: 0.407)
        static let mauve12 = Color(h: 260, s: 0.100, l: 0.135)
    }
    // Collection: mauveA
    class MauveA {
        static let mauveA1 = Color(h: 300, s: 0.893, l: 0.183, a: 0.012)
        static let mauveA2 = Color(h: 270, s: 0.893, l: 0.183, a: 0.024)
        static let mauveA3 = Color(h: 270, s: 0.988, l: 0.144, a: 0.055)
        static let mauveA4 = Color(h: 264, s: 0.938, l: 0.126, a: 0.083)
        static let mauveA5 = Color(h: 270, s: 0.984, l: 0.109, a: 0.110)
        static let mauveA6 = Color(h: 266, s: 0.949, l: 0.105, a: 0.138)
        static let mauveA7 = Color(h: 255, s: 0.972, l: 0.093, a: 0.173)
        static let mauveA8 = Color(h: 249, s: 0.984, l: 0.096, a: 0.271)
        static let mauveA9 = Color(h: 249, s: 0.999, l: 0.057, a: 0.451)
        static let mauveA10 = Color(h: 250, s: 0.998, l: 0.047, a: 0.502)
        static let mauveA11 = Color(h: 252, s: 0.988, l: 0.032, a: 0.612)
        static let mauveA12 = Color(h: 257, s: 0.960, l: 0.016, a: 0.879)
    }
    // Collection: mauveDark
    class MauveDark {
        static let mauve1 = Color(h: 300, s: 0.050, l: 0.095)
        static let mauve2 = Color(h: 300, s: 0.071, l: 0.110)
        static let mauve3 = Color(h: 290, s: 0.062, l: 0.162)
        static let mauve4 = Color(h: 285, s: 0.058, l: 0.195)
        static let mauve5 = Color(h: 280, s: 0.056, l: 0.224)
        static let mauve6 = Color(h: 276, s: 0.054, l: 0.257)
        static let mauve7 = Color(h: 269, s: 0.053, l: 0.303)
        static let mauve8 = Color(h: 258, s: 0.050, l: 0.392)
        static let mauve9 = Color(h: 250, s: 0.050, l: 0.450)
        static let mauve10 = Color(h: 252, s: 0.043, l: 0.523)
        static let mauve11 = Color(h: 250, s: 0.060, l: 0.705)
        static let mauve12 = Color(h: 240, s: 0.070, l: 0.938)
    }
    // Collection: mauveDarkA
    class MauveDarkA {
        static let mauveA1 = Color(h: 300, s: 1.000, l: 0.439, a: 0.005)
        static let mauveA2 = Color(h: 300, s: 0.997, l: 0.697, a: 0.026)
        static let mauveA3 = Color(h: 288, s: 0.963, l: 0.883, a: 0.087)
        static let mauveA4 = Color(h: 280, s: 0.966, l: 0.903, a: 0.126)
        static let mauveA5 = Color(h: 280, s: 0.988, l: 0.924, a: 0.156)
        static let mauveA6 = Color(h: 274, s: 0.987, l: 0.929, a: 0.195)
        static let mauveA7 = Color(h: 270, s: 0.986, l: 0.936, a: 0.247)
        static let mauveA8 = Color(h: 258, s: 0.984, l: 0.943, a: 0.351)
        static let mauveA9 = Color(h: 251, s: 0.983, l: 0.947, a: 0.416)
        static let mauveA10 = Color(h: 251, s: 0.993, l: 0.956, a: 0.498)
        static let mauveA11 = Color(h: 253, s: 0.982, l: 0.974, a: 0.693)
        static let mauveA12 = Color(h: 240, s: 0.822, l: 0.995, a: 0.936)
    }
}

/// Add dynamic `RadixMauve` to `SwiftUI` colors
public extension Color {
    static let mauve1 = Color(light: RadixColor.Mauve.mauve1, dark: RadixColor.MauveDark.mauve1)
    static let mauve2 = Color(light: RadixColor.Mauve.mauve2, dark: RadixColor.MauveDark.mauve2)
    static let mauve3 = Color(light: RadixColor.Mauve.mauve3, dark: RadixColor.MauveDark.mauve3)
    static let mauve4 = Color(light: RadixColor.Mauve.mauve4, dark: RadixColor.MauveDark.mauve4)
    static let mauve5 = Color(light: RadixColor.Mauve.mauve5, dark: RadixColor.MauveDark.mauve5)
    static let mauve6 = Color(light: RadixColor.Mauve.mauve6, dark: RadixColor.MauveDark.mauve6)
    static let mauve7 = Color(light: RadixColor.Mauve.mauve7, dark: RadixColor.MauveDark.mauve7)
    static let mauve8 = Color(light: RadixColor.Mauve.mauve8, dark: RadixColor.MauveDark.mauve8)
    static let mauve9 = Color(light: RadixColor.Mauve.mauve9, dark: RadixColor.MauveDark.mauve9)
    static let mauve10 = Color(light: RadixColor.Mauve.mauve10, dark: RadixColor.MauveDark.mauve10)
    static let mauve11 = Color(light: RadixColor.Mauve.mauve11, dark: RadixColor.MauveDark.mauve11)
    static let mauve12 = Color(light: RadixColor.Mauve.mauve12, dark: RadixColor.MauveDark.mauve12)

    static let mauveA1 = Color(light: RadixColor.MauveA.mauveA1, dark: RadixColor.MauveDarkA.mauveA1)
    static let mauveA2 = Color(light: RadixColor.MauveA.mauveA2, dark: RadixColor.MauveDarkA.mauveA2)
    static let mauveA3 = Color(light: RadixColor.MauveA.mauveA3, dark: RadixColor.MauveDarkA.mauveA3)
    static let mauveA4 = Color(light: RadixColor.MauveA.mauveA4, dark: RadixColor.MauveDarkA.mauveA4)
    static let mauveA5 = Color(light: RadixColor.MauveA.mauveA5, dark: RadixColor.MauveDarkA.mauveA5)
    static let mauveA6 = Color(light: RadixColor.MauveA.mauveA6, dark: RadixColor.MauveDarkA.mauveA6)
    static let mauveA7 = Color(light: RadixColor.MauveA.mauveA7, dark: RadixColor.MauveDarkA.mauveA7)
    static let mauveA8 = Color(light: RadixColor.MauveA.mauveA8, dark: RadixColor.MauveDarkA.mauveA8)
    static let mauveA9 = Color(light: RadixColor.MauveA.mauveA9, dark: RadixColor.MauveDarkA.mauveA9)
    static let mauveA10 = Color(light: RadixColor.MauveA.mauveA10, dark: RadixColor.MauveDarkA.mauveA10)
    static let mauveA11 = Color(light: RadixColor.MauveA.mauveA11, dark: RadixColor.MauveDarkA.mauveA11)
    static let mauveA12 = Color(light: RadixColor.MauveA.mauveA12, dark: RadixColor.MauveDarkA.mauveA12)
}
