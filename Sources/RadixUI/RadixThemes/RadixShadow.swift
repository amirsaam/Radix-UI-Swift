//
//  RadixShadow.swift
//
//
//  Created by Amir Mohammadi on 5/6/1403 AP.
//

import SwiftUI

fileprivate struct RadixShadowModifier: ViewModifier {

    @Environment(\.colorScheme) private var colorScheme

    let shadowLight: [(Color, CGFloat, CGFloat, CGFloat, CGFloat)]
    let shadowDark: [(Color, CGFloat, CGFloat, CGFloat, CGFloat)]

    func body(content: Content) -> some View {
        let shadows = colorScheme == .light ? shadowLight : shadowDark
        var modifiedContent = AnyView(content)
        for shadow in shadows {
            modifiedContent = AnyView(
                modifiedContent
                    .shadow(color: shadow.0, radius: shadow.1, x: shadow.2, y: shadow.3)
            )
        }
        return modifiedContent
    }
}

extension View {
    public func radixShadow1() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (.grayA5, 0, 0, 0, 0),
                    (.grayA2, 2, 0, 1.5, 0),
                    (.blackA2, 2, 0, 1.5, 0)
                ], shadowDark: [
                    (.grayA3, 0, 0, -1, 1),
                    (.grayA3, 0, 0, 0, 0),
                    (.blackA5, 4, 0, 3, 0),
                    (.grayA4, 0, 0, 0, 0)
                ]
            )
        )
    }
    
    public func radixShadow2() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (.grayA3, 0, 0, 0, 0),
                    (.blackA1, 0, 0, 0, 0),
                    (.grayA2, 1, 0, 1, 0),
                    (.blackA1, 1, 0, 2, -1),
                    (.blackA1, 3, 0, 1, 0)
                ], shadowDark: [
                    (.grayA6, 0, 0, 0, 0),
                    (.blackA3, 0, 0, 0, 0),
                    (.blackA6, 1, 0, 1, 0),
                    (.blackA6, 1, 0, 2, -1),
                    (.blackA5, 3, 0, 1, 0)
                ]
            )
        )
    }
    
    public func radixShadow3() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (.grayA3, 0, 0, 0, 0),
                    (.grayA3, 3, 0, 2, -2),
                    (.blackA2, 12, 0, 3, -4),
                    (.blackA2, 16, 0, 4, -8)
                ], shadowDark: [
                    (.grayA6, 0, 0, 0, 0),
                    (.blackA3, 3, 0, 2, -2),
                    (.blackA6, 8, 0, 3, -2),
                    (.blackA7, 12, 0, 4, -4)
                ]
            )
        )
    }
    
    public func radixShadow4() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (.grayA3, 0, 0, 0, 0),
                    (.blackA1, 40, 0, 8, 0),
                    (.grayA3, 32, 0, 12, -16)
                ], shadowDark: [
                    (.grayA6, 0, 0, 0, 0),
                    (.blackA3, 40, 0, 8, 0),
                    (.blackA5, 32, 0, 12, -16)
                ]
            )
        )
    }
    
    public func radixShadow5() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (.grayA3, 0, 0, 0, 0),
                    (.blackA3, 60, 0, 12, 0),
                    (.grayA5, 32, 0, 12, -16)
                ], shadowDark: [
                    (.grayA6, 0, 0, 0, 0),
                    (.blackA5, 60, 0, 12, 0),
                    (.blackA7, 32, 0, 12, -16)
                ]
            )
        )
    }
    
    public func radixShadow6() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (.grayA3, 0, 0, 0, 0),
                    (.blackA3, 60, 0, 12, 0),
                    (.grayA2, 64, 0, 16, 0),
                    (.grayA7, 36, 0, 16, -20)
                ], shadowDark: [
                    (.grayA6, 0, 0, 0, 0),
                    (.blackA4, 60, 0, 12, 0),
                    (.blackA6, 64, 0, 16, 0),
                    (.blackA11, 36, 0, 16, -20)
                ]
            )
        )
    }
}
