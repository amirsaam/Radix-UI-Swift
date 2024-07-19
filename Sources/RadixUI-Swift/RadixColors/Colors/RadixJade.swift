//
//  RadixJade.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Jade`
extension RadixColor {
    // Collection: jade
    class Jade {
        static let jade1 = Color(h: 151, s: 0.600, l: 0.990)
        static let jade2 = Color(h: 150, s: 0.778, l: 0.965)
        static let jade3 = Color(h: 151, s: 0.659, l: 0.937)
        static let jade4 = Color(h: 152, s: 0.565, l: 0.900)
        static let jade5 = Color(h: 154, s: 0.491, l: 0.850)
        static let jade6 = Color(h: 156, s: 0.435, l: 0.783)
        static let jade7 = Color(h: 159, s: 0.402, l: 0.687)
        static let jade8 = Color(h: 164, s: 0.420, l: 0.533)
        static let jade9 = Color(h: 164, s: 0.600, l: 0.400)
        static let jade10 = Color(h: 164, s: 0.608, l: 0.367)
        static let jade11 = Color(h: 163, s: 0.650, l: 0.289)
        static let jade12 = Color(h: 160, s: 0.340, l: 0.172)
    }
    // Collection: jadeA
    class JadeA {
        static let jadeA1 = Color(h: 160, s: 0.949, l: 0.387, a: 0.016)
        static let jadeA2 = Color(h: 150, s: 0.991, l: 0.440, a: 0.063)
        static let jadeA3 = Color(h: 150, s: 0.997, l: 0.408, a: 0.106)
        static let jadeA4 = Color(h: 151, s: 0.998, l: 0.363, a: 0.157)
        static let jadeA5 = Color(h: 153, s: 0.994, l: 0.335, a: 0.224)
        static let jadeA6 = Color(h: 155, s: 0.998, l: 0.304, a: 0.310)
        static let jadeA7 = Color(h: 159, s: 0.994, l: 0.287, a: 0.440)
        static let jadeA8 = Color(h: 164, s: 0.999, l: 0.296, a: 0.663)
        static let jadeA9 = Color(h: 164, s: 0.997, l: 0.286, a: 0.840)
        static let jadeA10 = Color(h: 164, s: 1.000, l: 0.259, a: 0.855)
        static let jadeA11 = Color(h: 163, s: 0.995, l: 0.210, a: 0.899)
        static let jadeA12 = Color(h: 160, s: 0.988, l: 0.067, a: 0.887)
    }
    // Collection: jadeDark
    class JadeDark {
        static let jade1 = Color(h: 152, s: 0.530, l: 0.065)
        static let jade2 = Color(h: 153, s: 0.476, l: 0.082)
        static let jade3 = Color(h: 154, s: 0.467, l: 0.110)
        static let jade4 = Color(h: 155, s: 0.470, l: 0.132)
        static let jade5 = Color(h: 156, s: 0.477, l: 0.153)
        static let jade6 = Color(h: 158, s: 0.490, l: 0.185)
        static let jade7 = Color(h: 160, s: 0.520, l: 0.242)
        static let jade8 = Color(h: 164, s: 0.598, l: 0.341)
        static let jade9 = Color(h: 164, s: 0.600, l: 0.400)
        static let jade10 = Color(h: 164, s: 0.668, l: 0.437)
        static let jade11 = Color(h: 163, s: 0.750, l: 0.484)
        static let jade12 = Color(h: 155, s: 0.700, l: 0.810)
    }
    // Collection: jadeDarkA
    class JadeDarkA {
        static let jadeA1 = Color(h: 120, s: 1.000, l: 0.439, a: 0.005)
        static let jadeA2 = Color(h: 120, s: 1.000, l: 0.490, a: 0.031)
        static let jadeA3 = Color(h: 145, s: 1.000, l: 0.498, a: 0.074)
        static let jadeA4 = Color(h: 152, s: 1.000, l: 0.497, a: 0.109)
        static let jadeA5 = Color(h: 156, s: 1.000, l: 0.498, a: 0.148)
        static let jadeA6 = Color(h: 158, s: 0.991, l: 0.545, a: 0.200)
        static let jadeA7 = Color(h: 159, s: 0.993, l: 0.584, a: 0.304)
        static let jadeA8 = Color(h: 164, s: 0.999, l: 0.590, a: 0.498)
        static let jadeA9 = Color(h: 164, s: 0.999, l: 0.602, a: 0.602)
        static let jadeA10 = Color(h: 164, s: 0.998, l: 0.583, a: 0.702)
        static let jadeA11 = Color(h: 163, s: 0.998, l: 0.563, a: 0.832)
        static let jadeA12 = Color(h: 155, s: 0.994, l: 0.859, a: 0.936)
    }
}

/// Add dynamic `RadixJade` to `SwiftUI` colors
public extension Color {
    static let jade1 = Color(light: RadixColor.Jade.jade1, dark: RadixColor.JadeDark.jade1)
    static let jade2 = Color(light: RadixColor.Jade.jade2, dark: RadixColor.JadeDark.jade2)
    static let jade3 = Color(light: RadixColor.Jade.jade3, dark: RadixColor.JadeDark.jade3)
    static let jade4 = Color(light: RadixColor.Jade.jade4, dark: RadixColor.JadeDark.jade4)
    static let jade5 = Color(light: RadixColor.Jade.jade5, dark: RadixColor.JadeDark.jade5)
    static let jade6 = Color(light: RadixColor.Jade.jade6, dark: RadixColor.JadeDark.jade6)
    static let jade7 = Color(light: RadixColor.Jade.jade7, dark: RadixColor.JadeDark.jade7)
    static let jade8 = Color(light: RadixColor.Jade.jade8, dark: RadixColor.JadeDark.jade8)
    static let jade9 = Color(light: RadixColor.Jade.jade9, dark: RadixColor.JadeDark.jade9)
    static let jade10 = Color(light: RadixColor.Jade.jade10, dark: RadixColor.JadeDark.jade10)
    static let jade11 = Color(light: RadixColor.Jade.jade11, dark: RadixColor.JadeDark.jade11)
    static let jade12 = Color(light: RadixColor.Jade.jade12, dark: RadixColor.JadeDark.jade12)

    static let jadeA1 = Color(light: RadixColor.JadeA.jadeA1, dark: RadixColor.JadeDarkA.jadeA1)
    static let jadeA2 = Color(light: RadixColor.JadeA.jadeA2, dark: RadixColor.JadeDarkA.jadeA2)
    static let jadeA3 = Color(light: RadixColor.JadeA.jadeA3, dark: RadixColor.JadeDarkA.jadeA3)
    static let jadeA4 = Color(light: RadixColor.JadeA.jadeA4, dark: RadixColor.JadeDarkA.jadeA4)
    static let jadeA5 = Color(light: RadixColor.JadeA.jadeA5, dark: RadixColor.JadeDarkA.jadeA5)
    static let jadeA6 = Color(light: RadixColor.JadeA.jadeA6, dark: RadixColor.JadeDarkA.jadeA6)
    static let jadeA7 = Color(light: RadixColor.JadeA.jadeA7, dark: RadixColor.JadeDarkA.jadeA7)
    static let jadeA8 = Color(light: RadixColor.JadeA.jadeA8, dark: RadixColor.JadeDarkA.jadeA8)
    static let jadeA9 = Color(light: RadixColor.JadeA.jadeA9, dark: RadixColor.JadeDarkA.jadeA9)
    static let jadeA10 = Color(light: RadixColor.JadeA.jadeA10, dark: RadixColor.JadeDarkA.jadeA10)
    static let jadeA11 = Color(light: RadixColor.JadeA.jadeA11, dark: RadixColor.JadeDarkA.jadeA11)
    static let jadeA12 = Color(light: RadixColor.JadeA.jadeA12, dark: RadixColor.JadeDarkA.jadeA12)
}
