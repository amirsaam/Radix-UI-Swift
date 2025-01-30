//
//  Button+Label.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/11/1403 AP.
//

import SwiftUI

public struct RadixLabelStyle: LabelStyle {
    
    @Environment(\.isLoading) var isLoading

    private var isPressed: Bool
    
    private var variant: RadixButtonVariant
    private var layout: RadixButtonLayout
    
    init(
        isPressed: Bool,
        variant: RadixButtonVariant,
        layout: RadixButtonLayout
    ) {
        self.isPressed = isPressed
        self.variant = variant
        self.layout = layout
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        ZStack {
            if isLoading.wrappedValue {
                ProgressView()
                    .progressViewStyle(.circular)
                    .tint(.gray9)
            } else {
                Group {
                    switch layout {
                        case .chevron:
                            HStack {
                                configuration.title
                                Image("chevron-right", bundle: .module)
                            }
                        case .leading:
                            HStack {
                                configuration.icon
                                configuration.title
                            }
                        case .trailing:
                            HStack {
                                configuration.title
                                configuration.icon
                            }
                    }
                }
            }
        }
        .scaleEffect(isPressed ? 0.97 : 1)
        .saturation(isPressed ? 1.2 : 1)
        .animation(.easeInOut(duration: 0.2), value: isPressed)
    }
}

extension LabelStyle where Self == RadixLabelStyle {
    public static func radix(
        isPressed: Bool,
        variant: RadixButtonVariant,
        layout: RadixButtonLayout
    ) -> Self {
        return RadixLabelStyle(
            isPressed: isPressed,
            variant: variant,
            layout: layout
        )
    }
}
