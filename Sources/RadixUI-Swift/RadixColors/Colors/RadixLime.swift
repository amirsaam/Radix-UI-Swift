//
//  RadixLime.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Lime`
extension RadixColor {
    // Collection: lime
    class Lime {
        static let lime1 = Color(h: 85, s: 0.500, l: 0.987)
        static let lime2 = Color(h: 85, s: 0.667, l: 0.965)
        static let lime3 = Color(h: 85, s: 0.768, l: 0.917)
        static let lime4 = Color(h: 84, s: 0.716, l: 0.866)
        static let lime5 = Color(h: 83, s: 0.625, l: 0.808)
        static let lime6 = Color(h: 81, s: 0.516, l: 0.736)
        static let lime7 = Color(h: 79, s: 0.415, l: 0.644)
        static let lime8 = Color(h: 77, s: 0.402, l: 0.522)
        static let lime9 = Color(h: 81, s: 0.800, l: 0.660)
        static let lime10 = Color(h: 81, s: 0.750, l: 0.600)
        static let lime11 = Color(h: 75, s: 0.400, l: 0.290)
        static let lime12 = Color(h: 75, s: 0.400, l: 0.180)
    }
    // Collection: limeA
    class LimeA {
        static let limeA1 = Color(h: 80, s: 0.938, l: 0.314, a: 0.020)
        static let limeA2 = Color(h: 85, s: 0.993, l: 0.402, a: 0.059)
        static let limeA3 = Color(h: 84, s: 0.986, l: 0.436, a: 0.146)
        static let limeA4 = Color(h: 83, s: 0.994, l: 0.417, a: 0.232)
        static let limeA5 = Color(h: 83, s: 0.998, l: 0.388, a: 0.314)
        static let limeA6 = Color(h: 81, s: 1.000, l: 0.338, a: 0.400)
        static let limeA7 = Color(h: 79, s: 1.000, l: 0.293, a: 0.502)
        static let limeA8 = Color(h: 77, s: 0.998, l: 0.287, a: 0.671)
        static let limeA9 = Color(h: 81, s: 0.999, l: 0.446, a: 0.612)
        static let limeA10 = Color(h: 81, s: 1.000, l: 0.430, a: 0.702)
        static let limeA11 = Color(h: 75, s: 0.995, l: 0.143, a: 0.828)
        static let limeA12 = Color(h: 75, s: 0.989, l: 0.080, a: 0.891)
    }
    // Collection: limeDark
    class LimeDark {
        static let lime1 = Color(h: 75, s: 0.550, l: 0.060)
        static let lime2 = Color(h: 78, s: 0.415, l: 0.080)
        static let lime3 = Color(h: 81, s: 0.381, l: 0.110)
        static let lime4 = Color(h: 81, s: 0.394, l: 0.131)
        static let lime5 = Color(h: 81, s: 0.408, l: 0.153)
        static let lime6 = Color(h: 80, s: 0.426, l: 0.184)
        static let lime7 = Color(h: 78, s: 0.454, l: 0.240)
        static let lime8 = Color(h: 75, s: 0.497, l: 0.351)
        static let lime9 = Color(h: 81, s: 0.800, l: 0.660)
        static let lime10 = Color(h: 75, s: 0.850, l: 0.600)
        static let lime11 = Color(h: 70, s: 0.700, l: 0.500)
        static let lime12 = Color(h: 80, s: 0.800, l: 0.850)
    }
    // Collection: limeDarkA
    class LimeDarkA {
        static let limeA1 = Color(h: 74, s: 0.998, l: 0.047, a: 0.709)
        static let limeA2 = Color(h: 114, s: 1.000, l: 0.493, a: 0.022)
        static let limeA3 = Color(h: 89, s: 1.000, l: 0.500, a: 0.065)
        static let limeA4 = Color(h: 84, s: 1.000, l: 0.498, a: 0.100)
        static let limeA5 = Color(h: 81, s: 0.989, l: 0.530, a: 0.135)
        static let limeA6 = Color(h: 80, s: 0.990, l: 0.576, a: 0.187)
        static let limeA7 = Color(h: 78, s: 0.995, l: 0.609, a: 0.282)
        static let limeA8 = Color(h: 75, s: 0.996, l: 0.633, a: 0.477)
        static let limeA9 = Color(h: 81, s: 0.998, l: 0.705, a: 0.927)
        static let limeA10 = Color(h: 75, s: 0.998, l: 0.635, a: 0.936)
        static let limeA11 = Color(h: 70, s: 0.999, l: 0.580, a: 0.836)
        static let limeA12 = Color(h: 80, s: 0.995, l: 0.876, a: 0.966)
    }
}

/// Add dynamic `RadixLime` to `SwiftUI` colors
public extension Color {
    static let lime1 = Color(light: RadixColor.Lime.lime1, dark: RadixColor.LimeDark.lime1)
    static let lime2 = Color(light: RadixColor.Lime.lime2, dark: RadixColor.LimeDark.lime2)
    static let lime3 = Color(light: RadixColor.Lime.lime3, dark: RadixColor.LimeDark.lime3)
    static let lime4 = Color(light: RadixColor.Lime.lime4, dark: RadixColor.LimeDark.lime4)
    static let lime5 = Color(light: RadixColor.Lime.lime5, dark: RadixColor.LimeDark.lime5)
    static let lime6 = Color(light: RadixColor.Lime.lime6, dark: RadixColor.LimeDark.lime6)
    static let lime7 = Color(light: RadixColor.Lime.lime7, dark: RadixColor.LimeDark.lime7)
    static let lime8 = Color(light: RadixColor.Lime.lime8, dark: RadixColor.LimeDark.lime8)
    static let lime9 = Color(light: RadixColor.Lime.lime9, dark: RadixColor.LimeDark.lime9)
    static let lime10 = Color(light: RadixColor.Lime.lime10, dark: RadixColor.LimeDark.lime10)
    static let lime11 = Color(light: RadixColor.Lime.lime11, dark: RadixColor.LimeDark.lime11)
    static let lime12 = Color(light: RadixColor.Lime.lime12, dark: RadixColor.LimeDark.lime12)

    static let limeA1 = Color(light: RadixColor.LimeA.limeA1, dark: RadixColor.LimeDarkA.limeA1)
    static let limeA2 = Color(light: RadixColor.LimeA.limeA2, dark: RadixColor.LimeDarkA.limeA2)
    static let limeA3 = Color(light: RadixColor.LimeA.limeA3, dark: RadixColor.LimeDarkA.limeA3)
    static let limeA4 = Color(light: RadixColor.LimeA.limeA4, dark: RadixColor.LimeDarkA.limeA4)
    static let limeA5 = Color(light: RadixColor.LimeA.limeA5, dark: RadixColor.LimeDarkA.limeA5)
    static let limeA6 = Color(light: RadixColor.LimeA.limeA6, dark: RadixColor.LimeDarkA.limeA6)
    static let limeA7 = Color(light: RadixColor.LimeA.limeA7, dark: RadixColor.LimeDarkA.limeA7)
    static let limeA8 = Color(light: RadixColor.LimeA.limeA8, dark: RadixColor.LimeDarkA.limeA8)
    static let limeA9 = Color(light: RadixColor.LimeA.limeA9, dark: RadixColor.LimeDarkA.limeA9)
    static let limeA10 = Color(light: RadixColor.LimeA.limeA10, dark: RadixColor.LimeDarkA.limeA10)
    static let limeA11 = Color(light: RadixColor.LimeA.limeA11, dark: RadixColor.LimeDarkA.limeA11)
    static let limeA12 = Color(light: RadixColor.LimeA.limeA12, dark: RadixColor.LimeDarkA.limeA12)
}
