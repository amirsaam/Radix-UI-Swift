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
    private var size: RadixButtonSize
    private var layout: RadixButtonLayout
    private var radius: RadixButtonRadius
    
    init(
        isPressed: Bool,
        variant: RadixButtonVariant,
        size: RadixButtonSize,
        layout: RadixButtonLayout,
        radius: RadixButtonRadius
    ) {
        self.isPressed = isPressed
        self.variant = variant
        self.size = size
        self.layout = layout
        self.radius = radius
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        ZStack {
            if isLoading.wrappedValue {
                ProgressView()
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
        .clipShape(radius.clipShape())
        .frame(width: size.dimension.width, height: size.dimension.height)
    }
}

extension LabelStyle where Self == RadixLabelStyle {
    public static func radixLabel(
        isPressed: Bool,
        variant: RadixButtonVariant,
        size: RadixButtonSize,
        layout: RadixButtonLayout,
        radius: RadixButtonRadius
    ) -> Self {
        return RadixLabelStyle(
            isPressed: isPressed,
            variant: variant,
            size: size,
            layout: layout,
            radius: radius
        )
    }
}
