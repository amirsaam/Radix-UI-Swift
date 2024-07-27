//
//  RadixColor.swift
//
//
//  Originally created by Lingxi Li on 1/15/23.
//  Modified & Updated by Amir Mohammadi on 4/29/1403 AP.
//

import SwiftUI

// MARK: - Radix Colors: A gorgeous, accessible color system.
/// Base `RadixColor` class to get extended by `extension RadixColor`
final class RadixColor {
    // Collection: blackA
    class BlackA {
        static let blackA1 = Color(h: 0, s: 0.000, l: 0.000, a: 0.012)
        static let blackA2 = Color(h: 0, s: 0.000, l: 0.000, a: 0.024)
        static let blackA3 = Color(h: 0, s: 0.000, l: 0.000, a: 0.055)
        static let blackA4 = Color(h: 0, s: 0.000, l: 0.000, a: 0.078)
        static let blackA5 = Color(h: 0, s: 0.000, l: 0.000, a: 0.106)
        static let blackA6 = Color(h: 0, s: 0.000, l: 0.000, a: 0.133)
        static let blackA7 = Color(h: 0, s: 0.000, l: 0.000, a: 0.169)
        static let blackA8 = Color(h: 0, s: 0.000, l: 0.000, a: 0.267)
        static let blackA9 = Color(h: 0, s: 0.000, l: 0.000, a: 0.447)
        static let blackA10 = Color(h: 0, s: 0.000, l: 0.000, a: 0.498)
        static let blackA11 = Color(h: 0, s: 0.000, l: 0.000, a: 0.608)
        static let blackA12 = Color(h: 0, s: 0.000, l: 0.000, a: 0.875)
    }
    // Collection: whiteA
    class WhiteA {
        static let whiteA1 = Color(h: 0, s: 0.000, l: 0.000, a: 0.000)
        static let whiteA2 = Color(h: 0, s: 0.000, l: 1.000, a: 0.013)
        static let whiteA3 = Color(h: 0, s: 0.000, l: 1.000, a: 0.069)
        static let whiteA4 = Color(h: 0, s: 0.000, l: 1.000, a: 0.104)
        static let whiteA5 = Color(h: 0, s: 0.000, l: 1.000, a: 0.134)
        static let whiteA6 = Color(h: 0, s: 0.000, l: 1.000, a: 0.169)
        static let whiteA7 = Color(h: 0, s: 0.000, l: 1.000, a: 0.216)
        static let whiteA8 = Color(h: 0, s: 0.000, l: 1.000, a: 0.312)
        static let whiteA9 = Color(h: 0, s: 0.000, l: 1.000, a: 0.372)
        static let whiteA10 = Color(h: 0, s: 0.000, l: 1.000, a: 0.455)
        static let whiteA11 = Color(h: 0, s: 0.000, l: 1.000, a: 0.662)
        static let whiteA12 = Color(h: 0, s: 0.000, l: 1.000, a: 0.926)
    }
}

/// Add dynamic `RadixBlack` & `RadixWhite` to `SwiftUI` colors
public extension Color {
    static let blackA1 = RadixColor.BlackA.blackA1
    static let blackA2 = RadixColor.BlackA.blackA2
    static let blackA3 = RadixColor.BlackA.blackA3
    static let blackA4 = RadixColor.BlackA.blackA4
    static let blackA5 = RadixColor.BlackA.blackA5
    static let blackA6 = RadixColor.BlackA.blackA6
    static let blackA7 = RadixColor.BlackA.blackA7
    static let blackA8 = RadixColor.BlackA.blackA8
    static let blackA9 = RadixColor.BlackA.blackA9
    static let blackA10 = RadixColor.BlackA.blackA10
    static let blackA11 = RadixColor.BlackA.blackA11
    static let blackA12 = RadixColor.BlackA.blackA12

    static let whiteA1 = RadixColor.WhiteA.whiteA1
    static let whiteA2 = RadixColor.WhiteA.whiteA2
    static let whiteA3 = RadixColor.WhiteA.whiteA3
    static let whiteA4 = RadixColor.WhiteA.whiteA4
    static let whiteA5 = RadixColor.WhiteA.whiteA5
    static let whiteA6 = RadixColor.WhiteA.whiteA6
    static let whiteA7 = RadixColor.WhiteA.whiteA7
    static let whiteA8 = RadixColor.WhiteA.whiteA8
    static let whiteA9 = RadixColor.WhiteA.whiteA9
    static let whiteA10 = RadixColor.WhiteA.whiteA10
    static let whiteA11 = RadixColor.WhiteA.whiteA11
    static let whiteA12 = RadixColor.WhiteA.whiteA12
}

public extension Color {
    static let myAwesomeClr = Color(UIColor(named: "testWhiteA12", in: .module, compatibleWith: nil)!)
}
