//
//  RadixGrass.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Grass`
extension RadixColor {
    // Collection: grass
    class Grass {
        static let grass1 = Color(h: 116, s: 0.500, l: 0.989)
        static let grass2 = Color(h: 120, s: 0.600, l: 0.971)
        static let grass3 = Color(h: 120, s: 0.536, l: 0.948)
        static let grass4 = Color(h: 121, s: 0.475, l: 0.914)
        static let grass5 = Color(h: 122, s: 0.426, l: 0.865)
        static let grass6 = Color(h: 124, s: 0.390, l: 0.797)
        static let grass7 = Color(h: 126, s: 0.371, l: 0.702)
        static let grass8 = Color(h: 131, s: 0.381, l: 0.563)
        static let grass9 = Color(h: 131, s: 0.410, l: 0.465)
        static let grass10 = Color(h: 132, s: 0.431, l: 0.422)
        static let grass11 = Color(h: 133, s: 0.500, l: 0.325)
        static let grass12 = Color(h: 131, s: 0.300, l: 0.180)
    }
    // Collection: grassA
    class GrassA {
        static let grassA1 = Color(h: 120, s: 0.949, l: 0.387, a: 0.016)
        static let grassA2 = Color(h: 120, s: 0.949, l: 0.387, a: 0.048)
        static let grassA3 = Color(h: 120, s: 0.980, l: 0.355, a: 0.079)
        static let grassA4 = Color(h: 120, s: 0.987, l: 0.315, a: 0.126)
        static let grassA5 = Color(h: 122, s: 0.985, l: 0.299, a: 0.193)
        static let grassA6 = Color(h: 125, s: 0.992, l: 0.279, a: 0.283)
        static let grassA7 = Color(h: 125, s: 0.999, l: 0.270, a: 0.408)
        static let grassA8 = Color(h: 131, s: 1.000, l: 0.276, a: 0.604)
        static let grassA9 = Color(h: 131, s: 0.997, l: 0.263, a: 0.726)
        static let grassA10 = Color(h: 132, s: 0.999, l: 0.240, a: 0.761)
        static let grassA11 = Color(h: 133, s: 0.995, l: 0.195, a: 0.840)
        static let grassA12 = Color(h: 131, s: 0.991, l: 0.063, a: 0.875)
    }
    // Collection: grassDark
    class GrassDark {
        static let grass1 = Color(h: 146, s: 0.300, l: 0.074)
        static let grass2 = Color(h: 138, s: 0.208, l: 0.094)
        static let grass3 = Color(h: 138, s: 0.258, l: 0.125)
        static let grass4 = Color(h: 138, s: 0.284, l: 0.148)
        static let grass5 = Color(h: 137, s: 0.303, l: 0.171)
        static let grass6 = Color(h: 137, s: 0.323, l: 0.206)
        static let grass7 = Color(h: 135, s: 0.344, l: 0.271)
        static let grass8 = Color(h: 131, s: 0.353, l: 0.400)
        static let grass9 = Color(h: 131, s: 0.410, l: 0.465)
        static let grass10 = Color(h: 131, s: 0.417, l: 0.550)
        static let grass11 = Color(h: 131, s: 0.500, l: 0.630)
        static let grass12 = Color(h: 120, s: 0.600, l: 0.850)
    }
    // Collection: grassDarkA
    class GrassDarkA {
        static let grassA1 = Color(h: 120, s: 1.000, l: 0.439, a: 0.005)
        static let grassA2 = Color(h: 120, s: 1.000, l: 0.493, a: 0.022)
        static let grassA3 = Color(h: 139, s: 0.979, l: 0.542, a: 0.070)
        static let grassA4 = Color(h: 137, s: 0.998, l: 0.603, a: 0.104)
        static let grassA5 = Color(h: 138, s: 0.998, l: 0.629, a: 0.143)
        static let grassA6 = Color(h: 136, s: 0.997, l: 0.667, a: 0.195)
        static let grassA7 = Color(h: 135, s: 0.997, l: 0.684, a: 0.299)
        static let grassA8 = Color(h: 131, s: 0.997, l: 0.713, a: 0.494)
        static let grassA9 = Color(h: 131, s: 0.995, l: 0.692, a: 0.620)
        static let grassA10 = Color(h: 131, s: 1.000, l: 0.735, a: 0.710)
        static let grassA11 = Color(h: 131, s: 0.998, l: 0.766, a: 0.797)
        static let grassA12 = Color(h: 120, s: 0.991, l: 0.903, a: 0.936)
    }
}

/// Add dynamic `RadixGrass` to `SwiftUI` colors
public extension Color {
    static let grass1 = Color(light: RadixColor.Grass.grass1, dark: RadixColor.GrassDark.grass1)
    static let grass2 = Color(light: RadixColor.Grass.grass2, dark: RadixColor.GrassDark.grass2)
    static let grass3 = Color(light: RadixColor.Grass.grass3, dark: RadixColor.GrassDark.grass3)
    static let grass4 = Color(light: RadixColor.Grass.grass4, dark: RadixColor.GrassDark.grass4)
    static let grass5 = Color(light: RadixColor.Grass.grass5, dark: RadixColor.GrassDark.grass5)
    static let grass6 = Color(light: RadixColor.Grass.grass6, dark: RadixColor.GrassDark.grass6)
    static let grass7 = Color(light: RadixColor.Grass.grass7, dark: RadixColor.GrassDark.grass7)
    static let grass8 = Color(light: RadixColor.Grass.grass8, dark: RadixColor.GrassDark.grass8)
    static let grass9 = Color(light: RadixColor.Grass.grass9, dark: RadixColor.GrassDark.grass9)
    static let grass10 = Color(light: RadixColor.Grass.grass10, dark: RadixColor.GrassDark.grass10)
    static let grass11 = Color(light: RadixColor.Grass.grass11, dark: RadixColor.GrassDark.grass11)
    static let grass12 = Color(light: RadixColor.Grass.grass12, dark: RadixColor.GrassDark.grass12)

    static let grassA1 = Color(light: RadixColor.GrassA.grassA1, dark: RadixColor.GrassDarkA.grassA1)
    static let grassA2 = Color(light: RadixColor.GrassA.grassA2, dark: RadixColor.GrassDarkA.grassA2)
    static let grassA3 = Color(light: RadixColor.GrassA.grassA3, dark: RadixColor.GrassDarkA.grassA3)
    static let grassA4 = Color(light: RadixColor.GrassA.grassA4, dark: RadixColor.GrassDarkA.grassA4)
    static let grassA5 = Color(light: RadixColor.GrassA.grassA5, dark: RadixColor.GrassDarkA.grassA5)
    static let grassA6 = Color(light: RadixColor.GrassA.grassA6, dark: RadixColor.GrassDarkA.grassA6)
    static let grassA7 = Color(light: RadixColor.GrassA.grassA7, dark: RadixColor.GrassDarkA.grassA7)
    static let grassA8 = Color(light: RadixColor.GrassA.grassA8, dark: RadixColor.GrassDarkA.grassA8)
    static let grassA9 = Color(light: RadixColor.GrassA.grassA9, dark: RadixColor.GrassDarkA.grassA9)
    static let grassA10 = Color(light: RadixColor.GrassA.grassA10, dark: RadixColor.GrassDarkA.grassA10)
    static let grassA11 = Color(light: RadixColor.GrassA.grassA11, dark: RadixColor.GrassDarkA.grassA11)
    static let grassA12 = Color(light: RadixColor.GrassA.grassA12, dark: RadixColor.GrassDarkA.grassA12)
}
