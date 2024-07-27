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
                    (Color.grayA5.opacity(1), 0, 0, 0, 0),
                    (Color.grayA2.opacity(0.5), 2, 0, 1.5, 0),
                    (Color.blackA2.opacity(0.5), 2, 0, 1.5, 0)
                ], shadowDark: [
                    (Color.grayA3.opacity(1), 0, 0, -1, 1),
                    (Color.grayA3.opacity(1), 0, 0, 0, 0),
                    (Color.blackA5.opacity(0.5), 4, 0, 3, 0),
                    (Color.grayA4.opacity(1), 0, 0, 0, 0)
                ]
            )
        )
    }
    
    public func radixShadow2() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (Color.grayA3.opacity(1), 0, 0, 0, 0),
                    (Color.blackA1.opacity(0.5), 0, 0, 0, 0),
                    (Color.grayA2.opacity(0.5), 1, 0, 1, 0),
                    (Color.blackA1.opacity(0.5), 1, 0, 2, -1),
                    (Color.blackA1.opacity(0.5), 3, 0, 1, 0)
                ], shadowDark: [
                    (Color.grayA6.opacity(1), 0, 0, 0, 0),
                    (Color.blackA3.opacity(0.5), 0, 0, 0, 0),
                    (Color.blackA6.opacity(0.5), 1, 0, 1, 0),
                    (Color.blackA6.opacity(0.5), 1, 0, 2, -1),
                    (Color.blackA5.opacity(0.5), 3, 0, 1, 0)
                ]
            )
        )
    }
    
    public func radixShadow3() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (Color.grayA3.opacity(1), 0, 0, 0, 0),
                    (Color.grayA3.opacity(0.5), 3, 0, 2, -2),
                    (Color.blackA2.opacity(0.5), 12, 0, 3, -4),
                    (Color.blackA2.opacity(0.5), 16, 0, 4, -8)
                ], shadowDark: [
                    (Color.grayA6.opacity(1), 0, 0, 0, 0),
                    (Color.blackA3.opacity(0.5), 3, 0, 2, -2),
                    (Color.blackA6.opacity(0.5), 8, 0, 3, -2),
                    (Color.blackA7.opacity(0.5), 12, 0, 4, -4)
                ]
            )
        )
    }
    
    public func radixShadow4() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (Color.grayA3.opacity(1), 0, 0, 0, 0),
                    (Color.blackA1.opacity(0.5), 40, 0, 8, 0),
                    (Color.grayA3.opacity(0.5), 32, 0, 12, -16)
                ], shadowDark: [
                    (Color.grayA6.opacity(1), 0, 0, 0, 0),
                    (Color.blackA3.opacity(0.5), 40, 0, 8, 0),
                    (Color.blackA5.opacity(0.5), 32, 0, 12, -16)
                ]
            )
        )
    }
    
    public func radixShadow5() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (Color.grayA3.opacity(1), 0, 0, 0, 0),
                    (Color.blackA3.opacity(0.5), 60, 0, 12, 0),
                    (Color.grayA5.opacity(0.5), 32, 0, 12, -16)
                ], shadowDark: [
                    (Color.grayA6.opacity(1), 0, 0, 0, 0),
                    (Color.blackA5.opacity(0.5), 60, 0, 12, 0),
                    (Color.blackA7.opacity(0.5), 32, 0, 12, -16)
                ]
            )
        )
    }
    
    public func radixShadow6() -> some View {
        self.modifier(
            RadixShadowModifier(
                shadowLight: [
                    (Color.grayA3.opacity(1), 0, 0, 0, 0),
                    (Color.blackA3.opacity(0.5), 60, 0, 12, 0),
                    (Color.grayA2.opacity(0.5), 64, 0, 16, 0),
                    (Color.grayA7.opacity(0.5), 36, 0, 16, -20)
                ], shadowDark: [
                    (Color.grayA6.opacity(1), 0, 0, 0, 0),
                    (Color.blackA4.opacity(0.5), 60, 0, 12, 0),
                    (Color.blackA6.opacity(0.5), 64, 0, 16, 0),
                    (Color.blackA11.opacity(0.5), 36, 0, 16, -20)
                ]
            )
        )
    }
}
