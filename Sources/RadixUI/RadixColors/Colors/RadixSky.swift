//
//  RadixSky.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Sky`
extension RadixColor {
    // Collection: sky
    class Sky {
        static let sky1 = Color(h: 193, s: 1.000, l: 0.988)
        static let sky2 = Color(h: 193, s: 1.000, l: 0.973)
        static let sky3 = Color(h: 192, s: 1.000, l: 0.943)
        static let sky4 = Color(h: 193, s: 0.935, l: 0.909)
        static let sky5 = Color(h: 193, s: 0.793, l: 0.859)
        static let sky6 = Color(h: 194, s: 0.661, l: 0.788)
        static let sky7 = Color(h: 194, s: 0.600, l: 0.694)
        static let sky8 = Color(h: 193, s: 0.652, l: 0.561)
        static let sky9 = Color(h: 193, s: 0.980, l: 0.740)
        static let sky10 = Color(h: 193, s: 0.900, l: 0.710)
        static let sky11 = Color(h: 200, s: 0.600, l: 0.360)
        static let sky12 = Color(h: 195, s: 0.500, l: 0.200)
    }
    // Collection: skyA
    class SkyA {
        static let skyA1 = Color(h: 190, s: 1.000, l: 0.510, a: 0.024)
        static let skyA2 = Color(h: 193, s: 1.000, l: 0.501, a: 0.055)
        static let skyA3 = Color(h: 192, s: 1.000, l: 0.501, a: 0.114)
        static let skyA4 = Color(h: 193, s: 0.994, l: 0.479, a: 0.177)
        static let skyA5 = Color(h: 194, s: 1.000, l: 0.445, a: 0.251)
        static let skyA6 = Color(h: 194, s: 1.000, l: 0.400, a: 0.353)
        static let skyA7 = Color(h: 194, s: 0.996, l: 0.377, a: 0.491)
        static let skyA8 = Color(h: 193, s: 0.998, l: 0.395, a: 0.726)
        static let skyA9 = Color(h: 193, s: 0.999, l: 0.496, a: 0.514)
        static let skyA10 = Color(h: 193, s: 1.000, l: 0.475, a: 0.553)
        static let skyA11 = Color(h: 200, s: 1.000, l: 0.252, a: 0.855)
        static let skyA12 = Color(h: 195, s: 1.000, l: 0.113, a: 0.902)
    }
    // Collection: skyDark
    class SkyDark {
        static let sky1 = Color(h: 205, s: 0.450, l: 0.086)
        static let sky2 = Color(h: 202, s: 0.490, l: 0.100)
        static let sky3 = Color(h: 201, s: 0.508, l: 0.132)
        static let sky4 = Color(h: 201, s: 0.521, l: 0.158)
        static let sky5 = Color(h: 201, s: 0.533, l: 0.184)
        static let sky6 = Color(h: 200, s: 0.549, l: 0.222)
        static let sky7 = Color(h: 200, s: 0.572, l: 0.293)
        static let sky8 = Color(h: 200, s: 0.600, l: 0.441)
        static let sky9 = Color(h: 193, s: 0.980, l: 0.740)
        static let sky10 = Color(h: 192, s: 1.000, l: 0.770)
        static let sky11 = Color(h: 195, s: 1.000, l: 0.660)
        static let sky12 = Color(h: 192, s: 1.000, l: 0.880)
    }
    // Collection: skyDarkA
    class SkyDarkA {
        static let skyA1 = Color(h: 234, s: 1.000, l: 0.495, a: 0.035)
        static let skyA2 = Color(h: 215, s: 1.000, l: 0.497, a: 0.061)
        static let skyA3 = Color(h: 204, s: 1.000, l: 0.500, a: 0.117)
        static let skyA4 = Color(h: 201, s: 1.000, l: 0.498, a: 0.161)
        static let skyA5 = Color(h: 202, s: 0.998, l: 0.528, a: 0.208)
        static let skyA6 = Color(h: 200, s: 0.993, l: 0.560, a: 0.278)
        static let skyA7 = Color(h: 200, s: 0.998, l: 0.586, a: 0.403)
        static let skyA8 = Color(h: 200, s: 0.998, l: 0.608, a: 0.676)
        static let skyA9 = Color(h: 193, s: 0.999, l: 0.744, a: 0.996)
        static let skyA10 = Color(h: 192, s: 1.000, l: 0.771, a: 1.000)
        static let skyA11 = Color(h: 195, s: 1.000, l: 0.661, a: 1.000)
        static let skyA12 = Color(h: 192, s: 1.000, l: 0.880, a: 1.000)
    }
}

/// Add dynamic `RadixSky` to `SwiftUI` colors
public extension Color {
    static let sky1 = Color(light: RadixColor.Sky.sky1, dark: RadixColor.SkyDark.sky1)
    static let sky2 = Color(light: RadixColor.Sky.sky2, dark: RadixColor.SkyDark.sky2)
    static let sky3 = Color(light: RadixColor.Sky.sky3, dark: RadixColor.SkyDark.sky3)
    static let sky4 = Color(light: RadixColor.Sky.sky4, dark: RadixColor.SkyDark.sky4)
    static let sky5 = Color(light: RadixColor.Sky.sky5, dark: RadixColor.SkyDark.sky5)
    static let sky6 = Color(light: RadixColor.Sky.sky6, dark: RadixColor.SkyDark.sky6)
    static let sky7 = Color(light: RadixColor.Sky.sky7, dark: RadixColor.SkyDark.sky7)
    static let sky8 = Color(light: RadixColor.Sky.sky8, dark: RadixColor.SkyDark.sky8)
    static let sky9 = Color(light: RadixColor.Sky.sky9, dark: RadixColor.SkyDark.sky9)
    static let sky10 = Color(light: RadixColor.Sky.sky10, dark: RadixColor.SkyDark.sky10)
    static let sky11 = Color(light: RadixColor.Sky.sky11, dark: RadixColor.SkyDark.sky11)
    static let sky12 = Color(light: RadixColor.Sky.sky12, dark: RadixColor.SkyDark.sky12)
    
    static let skyA1 = Color(light: RadixColor.SkyA.skyA1, dark: RadixColor.SkyDarkA.skyA1)
    static let skyA2 = Color(light: RadixColor.SkyA.skyA2, dark: RadixColor.SkyDarkA.skyA2)
    static let skyA3 = Color(light: RadixColor.SkyA.skyA3, dark: RadixColor.SkyDarkA.skyA3)
    static let skyA4 = Color(light: RadixColor.SkyA.skyA4, dark: RadixColor.SkyDarkA.skyA4)
    static let skyA5 = Color(light: RadixColor.SkyA.skyA5, dark: RadixColor.SkyDarkA.skyA5)
    static let skyA6 = Color(light: RadixColor.SkyA.skyA6, dark: RadixColor.SkyDarkA.skyA6)
    static let skyA7 = Color(light: RadixColor.SkyA.skyA7, dark: RadixColor.SkyDarkA.skyA7)
    static let skyA8 = Color(light: RadixColor.SkyA.skyA8, dark: RadixColor.SkyDarkA.skyA8)
    static let skyA9 = Color(light: RadixColor.SkyA.skyA9, dark: RadixColor.SkyDarkA.skyA9)
    static let skyA10 = Color(light: RadixColor.SkyA.skyA10, dark: RadixColor.SkyDarkA.skyA10)
    static let skyA11 = Color(light: RadixColor.SkyA.skyA11, dark: RadixColor.SkyDarkA.skyA11)
    static let skyA12 = Color(light: RadixColor.SkyA.skyA12, dark: RadixColor.SkyDarkA.skyA12)
}
