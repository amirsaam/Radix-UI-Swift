//
//  RadixRuby.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Ruby`
extension RadixColor {
    // Collection: ruby
    class Ruby {
        static let ruby1 = Color(h: 348, s: 1.000, l: 0.995)
        static let ruby2 = Color(h: 345, s: 1.000, l: 0.984)
        static let ruby3 = Color(h: 345, s: 0.899, l: 0.967)
        static let ruby4 = Color(h: 346, s: 0.826, l: 0.944)
        static let ruby5 = Color(h: 346, s: 0.758, l: 0.914)
        static let ruby6 = Color(h: 347, s: 0.693, l: 0.871)
        static let ruby7 = Color(h: 348, s: 0.643, l: 0.809)
        static let ruby8 = Color(h: 348, s: 0.615, l: 0.735)
        static let ruby9 = Color(h: 348, s: 0.750, l: 0.585)
        static let ruby10 = Color(h: 347, s: 0.686, l: 0.541)
        static let ruby11 = Color(h: 345, s: 0.700, l: 0.465)
        static let ruby12 = Color(h: 344, s: 0.630, l: 0.240)
    }
    // Collection: rubyA
    class RubyA {
        static let rubyA1 = Color(h: 340, s: 1.000, l: 0.510, a: 0.012)
        static let rubyA2 = Color(h: 345, s: 1.000, l: 0.510, a: 0.032)
        static let rubyA3 = Color(h: 344, s: 0.991, l: 0.471, a: 0.063)
        static let rubyA4 = Color(h: 348, s: 0.999, l: 0.462, a: 0.102)
        static let rubyA5 = Color(h: 346, s: 0.999, l: 0.436, a: 0.153)
        static let rubyA6 = Color(h: 347, s: 0.996, l: 0.412, a: 0.220)
        static let rubyA7 = Color(h: 348, s: 0.998, l: 0.394, a: 0.314)
        static let rubyA8 = Color(h: 348, s: 0.997, l: 0.382, a: 0.428)
        static let rubyA9 = Color(h: 348, s: 0.998, l: 0.430, a: 0.726)
        static let rubyA10 = Color(h: 347, s: 0.999, l: 0.406, a: 0.773)
        static let rubyA11 = Color(h: 345, s: 0.999, l: 0.379, a: 0.859)
        static let rubyA12 = Color(h: 344, s: 0.999, l: 0.166, a: 0.910)
    }
    // Collection: rubyDark
    class RubyDark {
        static let ruby1 = Color(h: 343, s: 0.230, l: 0.100)
        static let ruby2 = Color(h: 349, s: 0.333, l: 0.124)
        static let ruby3 = Color(h: 348, s: 0.422, l: 0.164)
        static let ruby4 = Color(h: 348, s: 0.468, l: 0.191)
        static let ruby5 = Color(h: 348, s: 0.507, l: 0.217)
        static let ruby6 = Color(h: 348, s: 0.560, l: 0.257)
        static let ruby7 = Color(h: 348, s: 0.643, l: 0.330)
        static let ruby8 = Color(h: 348, s: 0.770, l: 0.461)
        static let ruby9 = Color(h: 348, s: 0.750, l: 0.585)
        static let ruby10 = Color(h: 349, s: 0.841, l: 0.671)
        static let ruby11 = Color(h: 348, s: 1.000, l: 0.760)
        static let ruby12 = Color(h: 340, s: 0.950, l: 0.910)
    }
    // Collection: rubyDarkA
    class RubyDarkA {
        static let rubyA1 = Color(h: 0, s: 1.000, l: 0.490, a: 0.031)
        static let rubyA2 = Color(h: 351, s: 1.000, l: 0.500, a: 0.078)
        static let rubyA3 = Color(h: 348, s: 0.994, l: 0.546, a: 0.152)
        static let rubyA4 = Color(h: 348, s: 0.995, l: 0.565, a: 0.204)
        static let rubyA5 = Color(h: 347, s: 0.995, l: 0.569, a: 0.256)
        static let rubyA6 = Color(h: 348, s: 0.998, l: 0.576, a: 0.338)
        static let rubyA7 = Color(h: 348, s: 0.998, l: 0.570, a: 0.494)
        static let rubyA8 = Color(h: 348, s: 0.999, l: 0.554, a: 0.797)
        static let rubyA9 = Color(h: 348, s: 0.998, l: 0.648, a: 0.888)
        static let rubyA10 = Color(h: 349, s: 0.999, l: 0.707, a: 0.944)
        static let rubyA11 = Color(h: 348, s: 1.000, l: 0.761, a: 1.000)
        static let rubyA12 = Color(h: 340, s: 0.997, l: 0.913, a: 0.996)
    }
}

/// Add dynamic `RadixRuby` to `SwiftUI` colors
public extension Color {
    static let ruby1 = Color(light: RadixColor.Ruby.ruby1, dark: RadixColor.RubyDark.ruby1)
    static let ruby2 = Color(light: RadixColor.Ruby.ruby2, dark: RadixColor.RubyDark.ruby2)
    static let ruby3 = Color(light: RadixColor.Ruby.ruby3, dark: RadixColor.RubyDark.ruby3)
    static let ruby4 = Color(light: RadixColor.Ruby.ruby4, dark: RadixColor.RubyDark.ruby4)
    static let ruby5 = Color(light: RadixColor.Ruby.ruby5, dark: RadixColor.RubyDark.ruby5)
    static let ruby6 = Color(light: RadixColor.Ruby.ruby6, dark: RadixColor.RubyDark.ruby6)
    static let ruby7 = Color(light: RadixColor.Ruby.ruby7, dark: RadixColor.RubyDark.ruby7)
    static let ruby8 = Color(light: RadixColor.Ruby.ruby8, dark: RadixColor.RubyDark.ruby8)
    static let ruby9 = Color(light: RadixColor.Ruby.ruby9, dark: RadixColor.RubyDark.ruby9)
    static let ruby10 = Color(light: RadixColor.Ruby.ruby10, dark: RadixColor.RubyDark.ruby10)
    static let ruby11 = Color(light: RadixColor.Ruby.ruby11, dark: RadixColor.RubyDark.ruby11)
    static let ruby12 = Color(light: RadixColor.Ruby.ruby12, dark: RadixColor.RubyDark.ruby12)
    
    static let rubyA1 = Color(light: RadixColor.RubyA.rubyA1, dark: RadixColor.RubyDarkA.rubyA1)
    static let rubyA2 = Color(light: RadixColor.RubyA.rubyA2, dark: RadixColor.RubyDarkA.rubyA2)
    static let rubyA3 = Color(light: RadixColor.RubyA.rubyA3, dark: RadixColor.RubyDarkA.rubyA3)
    static let rubyA4 = Color(light: RadixColor.RubyA.rubyA4, dark: RadixColor.RubyDarkA.rubyA4)
    static let rubyA5 = Color(light: RadixColor.RubyA.rubyA5, dark: RadixColor.RubyDarkA.rubyA5)
    static let rubyA6 = Color(light: RadixColor.RubyA.rubyA6, dark: RadixColor.RubyDarkA.rubyA6)
    static let rubyA7 = Color(light: RadixColor.RubyA.rubyA7, dark: RadixColor.RubyDarkA.rubyA7)
    static let rubyA8 = Color(light: RadixColor.RubyA.rubyA8, dark: RadixColor.RubyDarkA.rubyA8)
    static let rubyA9 = Color(light: RadixColor.RubyA.rubyA9, dark: RadixColor.RubyDarkA.rubyA9)
    static let rubyA10 = Color(light: RadixColor.RubyA.rubyA10, dark: RadixColor.RubyDarkA.rubyA10)
    static let rubyA11 = Color(light: RadixColor.RubyA.rubyA11, dark: RadixColor.RubyDarkA.rubyA11)
    static let rubyA12 = Color(light: RadixColor.RubyA.rubyA12, dark: RadixColor.RubyDarkA.rubyA12)
}
