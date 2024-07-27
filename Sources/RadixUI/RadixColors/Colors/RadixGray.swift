//
//  RadixGray.swift
//
//
//  Created by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

/// RadixColor extender for `Gray`
extension RadixColor {
    // Collection: gray
    class Gray {
        static let gray1 = Color(h: 0, s: 0.000, l: 0.990)
        static let gray2 = Color(h: 0, s: 0.000, l: 0.975)
        static let gray3 = Color(h: 0, s: 0.000, l: 0.946)
        static let gray4 = Color(h: 0, s: 0.000, l: 0.920)
        static let gray5 = Color(h: 0, s: 0.000, l: 0.895)
        static let gray6 = Color(h: 0, s: 0.000, l: 0.868)
        static let gray7 = Color(h: 0, s: 0.000, l: 0.830)
        static let gray8 = Color(h: 0, s: 0.000, l: 0.732)
        static let gray9 = Color(h: 0, s: 0.000, l: 0.552)
        static let gray10 = Color(h: 0, s: 0.000, l: 0.503)
        static let gray11 = Color(h: 0, s: 0.000, l: 0.393)
        static let gray12 = Color(h: 0, s: 0.000, l: 0.125)
    }
    // Collection: grayA
    class GrayA {
        static let grayA1 = Color(h: 0, s: 0.000, l: 0.000, a: 0.012)
        static let grayA2 = Color(h: 0, s: 0.000, l: 0.000, a: 0.024)
        static let grayA3 = Color(h: 0, s: 0.000, l: 0.000, a: 0.055)
        static let grayA4 = Color(h: 0, s: 0.000, l: 0.000, a: 0.078)
        static let grayA5 = Color(h: 0, s: 0.000, l: 0.000, a: 0.106)
        static let grayA6 = Color(h: 0, s: 0.000, l: 0.000, a: 0.133)
        static let grayA7 = Color(h: 0, s: 0.000, l: 0.000, a: 0.169)
        static let grayA8 = Color(h: 0, s: 0.000, l: 0.000, a: 0.267)
        static let grayA9 = Color(h: 0, s: 0.000, l: 0.000, a: 0.447)
        static let grayA10 = Color(h: 0, s: 0.000, l: 0.000, a: 0.498)
        static let grayA11 = Color(h: 0, s: 0.000, l: 0.000, a: 0.608)
        static let grayA12 = Color(h: 0, s: 0.000, l: 0.000, a: 0.875)
    }
    // Collection: grayDark
    class GrayDark {
        static let gray1 = Color(h: 0, s: 0.000, l: 0.095)
        static let gray2 = Color(h: 0, s: 0.000, l: 0.105)
        static let gray3 = Color(h: 0, s: 0.000, l: 0.158)
        static let gray4 = Color(h: 0, s: 0.000, l: 0.189)
        static let gray5 = Color(h: 0, s: 0.000, l: 0.217)
        static let gray6 = Color(h: 0, s: 0.000, l: 0.247)
        static let gray7 = Color(h: 0, s: 0.000, l: 0.291)
        static let gray8 = Color(h: 0, s: 0.000, l: 0.375)
        static let gray9 = Color(h: 0, s: 0.000, l: 0.430)
        static let gray10 = Color(h: 0, s: 0.000, l: 0.507)
        static let gray11 = Color(h: 0, s: 0.000, l: 0.695)
        static let gray12 = Color(h: 0, s: 0.000, l: 0.935)
    }
    // Collection: grayDarkA
    class GrayDarkA {
        static let grayA1 = Color(h: 0, s: 0.000, l: 1.000, a: 0.000)
        static let grayA2 = Color(h: 0, s: 0.000, l: 1.000, a: 0.013)
        static let grayA3 = Color(h: 0, s: 0.000, l: 1.000, a: 0.069)
        static let grayA4 = Color(h: 0, s: 0.000, l: 1.000, a: 0.104)
        static let grayA5 = Color(h: 0, s: 0.000, l: 1.000, a: 0.134)
        static let grayA6 = Color(h: 0, s: 0.000, l: 1.000, a: 0.169)
        static let grayA7 = Color(h: 0, s: 0.000, l: 1.000, a: 0.216)
        static let grayA8 = Color(h: 0, s: 0.000, l: 1.000, a: 0.312)
        static let grayA9 = Color(h: 0, s: 0.000, l: 1.000, a: 0.372)
        static let grayA10 = Color(h: 0, s: 0.000, l: 1.000, a: 0.455)
        static let grayA11 = Color(h: 0, s: 0.000, l: 1.000, a: 0.662)
        static let grayA12 = Color(h: 0, s: 0.000, l: 1.000, a: 0.926)
    }
}

/// Add dynamic `RadixGray` to `SwiftUI` colors
public extension Color {
    static let gray1 = Color(light: RadixColor.Gray.gray1, dark: RadixColor.GrayDark.gray1)
    static let gray2 = Color(light: RadixColor.Gray.gray2, dark: RadixColor.GrayDark.gray2)
    static let gray3 = Color(light: RadixColor.Gray.gray3, dark: RadixColor.GrayDark.gray3)
    static let gray4 = Color(light: RadixColor.Gray.gray4, dark: RadixColor.GrayDark.gray4)
    static let gray5 = Color(light: RadixColor.Gray.gray5, dark: RadixColor.GrayDark.gray5)
    static let gray6 = Color(light: RadixColor.Gray.gray6, dark: RadixColor.GrayDark.gray6)
    static let gray7 = Color(light: RadixColor.Gray.gray7, dark: RadixColor.GrayDark.gray7)
    static let gray8 = Color(light: RadixColor.Gray.gray8, dark: RadixColor.GrayDark.gray8)
    static let gray9 = Color(light: RadixColor.Gray.gray9, dark: RadixColor.GrayDark.gray9)
    static let gray10 = Color(light: RadixColor.Gray.gray10, dark: RadixColor.GrayDark.gray10)
    static let gray11 = Color(light: RadixColor.Gray.gray11, dark: RadixColor.GrayDark.gray11)
    static let gray12 = Color(light: RadixColor.Gray.gray12, dark: RadixColor.GrayDark.gray12)

    static let grayA1 = Color(light: RadixColor.GrayA.grayA1, dark: RadixColor.GrayDarkA.grayA1)
    static let grayA2 = Color(light: RadixColor.GrayA.grayA2, dark: RadixColor.GrayDarkA.grayA2)
    static let grayA3 = Color(light: RadixColor.GrayA.grayA3, dark: RadixColor.GrayDarkA.grayA3)
    static let grayA4 = Color(light: RadixColor.GrayA.grayA4, dark: RadixColor.GrayDarkA.grayA4)
    static let grayA5 = Color(light: RadixColor.GrayA.grayA5, dark: RadixColor.GrayDarkA.grayA5)
    static let grayA6 = Color(light: RadixColor.GrayA.grayA6, dark: RadixColor.GrayDarkA.grayA6)
    static let grayA7 = Color(light: RadixColor.GrayA.grayA7, dark: RadixColor.GrayDarkA.grayA7)
    static let grayA8 = Color(light: RadixColor.GrayA.grayA8, dark: RadixColor.GrayDarkA.grayA8)
    static let grayA9 = Color(light: RadixColor.GrayA.grayA9, dark: RadixColor.GrayDarkA.grayA9)
    static let grayA10 = Color(light: RadixColor.GrayA.grayA10, dark: RadixColor.GrayDarkA.grayA10)
    static let grayA11 = Color(light: RadixColor.GrayA.grayA11, dark: RadixColor.GrayDarkA.grayA11)
    static let grayA12 = Color(light: RadixColor.GrayA.grayA12, dark: RadixColor.GrayDarkA.grayA12)
}
