//
//  RadixTomato.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Tomato`
extension RadixColor {
    // Collection: tomato
    class Tomato {
        static let tomato1 = Color(h: 10, s: 1.000, l: 0.994)
        static let tomato2 = Color(h: 8, s: 1.000, l: 0.984)
        static let tomato3 = Color(h: 8, s: 1.000, l: 0.966)
        static let tomato4 = Color(h: 8, s: 1.000, l: 0.943)
        static let tomato5 = Color(h: 8, s: 0.928, l: 0.910)
        static let tomato6 = Color(h: 9, s: 0.847, l: 0.863)
        static let tomato7 = Color(h: 10, s: 0.773, l: 0.795)
        static let tomato8 = Color(h: 10, s: 0.716, l: 0.710)
        static let tomato9 = Color(h: 10, s: 0.780, l: 0.540)
        static let tomato10 = Color(h: 10, s: 0.714, l: 0.494)
        static let tomato11 = Color(h: 10, s: 0.820, l: 0.420)
        static let tomato12 = Color(h: 8, s: 0.500, l: 0.240)
    }
    // Collection: tomatoA
    class TomatoA {
        static let tomatoA1 = Color(h: 0, s: 1.000, l: 0.510, a: 0.012)
        static let tomatoA2 = Color(h: 8, s: 1.000, l: 0.510, a: 0.032)
        static let tomatoA3 = Color(h: 7, s: 1.000, l: 0.502, a: 0.067)
        static let tomatoA4 = Color(h: 8, s: 1.000, l: 0.501, a: 0.114)
        static let tomatoA5 = Color(h: 7, s: 0.995, l: 0.479, a: 0.173)
        static let tomatoA6 = Color(h: 9, s: 0.999, l: 0.462, a: 0.255)
        static let tomatoA7 = Color(h: 10, s: 0.998, l: 0.436, a: 0.365)
        static let tomatoA8 = Color(h: 10, s: 0.995, l: 0.418, a: 0.499)
        static let tomatoA9 = Color(h: 10, s: 0.999, l: 0.438, a: 0.820)
        static let tomatoA10 = Color(h: 10, s: 1.000, l: 0.411, a: 0.859)
        static let tomatoA11 = Color(h: 10, s: 0.999, l: 0.373, a: 0.926)
        static let tomatoA12 = Color(h: 8, s: 0.995, l: 0.137, a: 0.879)
    }
    // Collection: tomatoDark
    class TomatoDark {
        static let tomato1 = Color(h: 10, s: 0.230, l: 0.094)
        static let tomato2 = Color(h: 10, s: 0.390, l: 0.116)
        static let tomato3 = Color(h: 9, s: 0.483, l: 0.155)
        static let tomato4 = Color(h: 9, s: 0.530, l: 0.181)
        static let tomato5 = Color(h: 9, s: 0.570, l: 0.207)
        static let tomato6 = Color(h: 9, s: 0.618, l: 0.245)
        static let tomato7 = Color(h: 9, s: 0.684, l: 0.311)
        static let tomato8 = Color(h: 10, s: 0.804, l: 0.439)
        static let tomato9 = Color(h: 10, s: 0.780, l: 0.540)
        static let tomato10 = Color(h: 10, s: 0.884, l: 0.641)
        static let tomato11 = Color(h: 10, s: 1.000, l: 0.720)
        static let tomato12 = Color(h: 10, s: 0.850, l: 0.890)
    }
    // Collection: tomatoDarkA
    class TomatoDarkA {
        static let tomatoA1 = Color(h: 0, s: 1.000, l: 0.493, a: 0.022)
        static let tomatoA2 = Color(h: 0, s: 1.000, l: 0.498, a: 0.074)
        static let tomatoA3 = Color(h: 9, s: 1.000, l: 0.499, a: 0.152)
        static let tomatoA4 = Color(h: 9, s: 0.995, l: 0.527, a: 0.204)
        static let tomatoA5 = Color(h: 9, s: 0.995, l: 0.538, a: 0.256)
        static let tomatoA6 = Color(h: 9, s: 0.996, l: 0.546, a: 0.334)
        static let tomatoA7 = Color(h: 9, s: 0.997, l: 0.550, a: 0.477)
        static let tomatoA8 = Color(h: 10, s: 0.999, l: 0.542, a: 0.771)
        static let tomatoA9 = Color(h: 10, s: 0.999, l: 0.595, a: 0.888)
        static let tomatoA10 = Color(h: 10, s: 0.998, l: 0.668, a: 0.953)
        static let tomatoA11 = Color(h: 10, s: 1.000, l: 0.720, a: 1.000)
        static let tomatoA12 = Color(h: 10, s: 0.997, l: 0.904, a: 0.983)
    }
}

/// Add dynamic `RadixTomato` to `SwiftUI` colors
public extension Color {
    static let tomato1 = Color(light: RadixColor.Tomato.tomato1, dark: RadixColor.TomatoDark.tomato1)
    static let tomato2 = Color(light: RadixColor.Tomato.tomato2, dark: RadixColor.TomatoDark.tomato2)
    static let tomato3 = Color(light: RadixColor.Tomato.tomato3, dark: RadixColor.TomatoDark.tomato3)
    static let tomato4 = Color(light: RadixColor.Tomato.tomato4, dark: RadixColor.TomatoDark.tomato4)
    static let tomato5 = Color(light: RadixColor.Tomato.tomato5, dark: RadixColor.TomatoDark.tomato5)
    static let tomato6 = Color(light: RadixColor.Tomato.tomato6, dark: RadixColor.TomatoDark.tomato6)
    static let tomato7 = Color(light: RadixColor.Tomato.tomato7, dark: RadixColor.TomatoDark.tomato7)
    static let tomato8 = Color(light: RadixColor.Tomato.tomato8, dark: RadixColor.TomatoDark.tomato8)
    static let tomato9 = Color(light: RadixColor.Tomato.tomato9, dark: RadixColor.TomatoDark.tomato9)
    static let tomato10 = Color(light: RadixColor.Tomato.tomato10, dark: RadixColor.TomatoDark.tomato10)
    static let tomato11 = Color(light: RadixColor.Tomato.tomato11, dark: RadixColor.TomatoDark.tomato11)
    static let tomato12 = Color(light: RadixColor.Tomato.tomato12, dark: RadixColor.TomatoDark.tomato12)
    
    static let tomatoA1 = Color(light: RadixColor.TomatoA.tomatoA1, dark: RadixColor.TomatoDarkA.tomatoA1)
    static let tomatoA2 = Color(light: RadixColor.TomatoA.tomatoA2, dark: RadixColor.TomatoDarkA.tomatoA2)
    static let tomatoA3 = Color(light: RadixColor.TomatoA.tomatoA3, dark: RadixColor.TomatoDarkA.tomatoA3)
    static let tomatoA4 = Color(light: RadixColor.TomatoA.tomatoA4, dark: RadixColor.TomatoDarkA.tomatoA4)
    static let tomatoA5 = Color(light: RadixColor.TomatoA.tomatoA5, dark: RadixColor.TomatoDarkA.tomatoA5)
    static let tomatoA6 = Color(light: RadixColor.TomatoA.tomatoA6, dark: RadixColor.TomatoDarkA.tomatoA6)
    static let tomatoA7 = Color(light: RadixColor.TomatoA.tomatoA7, dark: RadixColor.TomatoDarkA.tomatoA7)
    static let tomatoA8 = Color(light: RadixColor.TomatoA.tomatoA8, dark: RadixColor.TomatoDarkA.tomatoA8)
    static let tomatoA9 = Color(light: RadixColor.TomatoA.tomatoA9, dark: RadixColor.TomatoDarkA.tomatoA9)
    static let tomatoA10 = Color(light: RadixColor.TomatoA.tomatoA10, dark: RadixColor.TomatoDarkA.tomatoA10)
    static let tomatoA11 = Color(light: RadixColor.TomatoA.tomatoA11, dark: RadixColor.TomatoDarkA.tomatoA11)
    static let tomatoA12 = Color(light: RadixColor.TomatoA.tomatoA12, dark: RadixColor.TomatoDarkA.tomatoA12)
}
