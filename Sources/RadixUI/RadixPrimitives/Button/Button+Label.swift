//
//  Button+Label.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixLabelStyle: LabelStyle {
    
    @Environment(\.isLoading) var isLoading
    @Environment(\.colorScheme) private var colorScheme
    
    private var variant: RadixButtonVariant
    private var layout: RadixButtonLayout
    private var size: RadixButtonSize
    private var radius: RadixButtonRadius
    private var fgColor: Color
    private var solidColor: Color?
    private var shadeColor: Color?
    private var strokeColor: Color?
    
    init(
        variant: RadixButtonVariant,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        solidColor: Color? = nil,
        shadeColor: Color? = nil,
        strokeColor: Color? = nil
    ) {
        self.variant = variant
        self.layout = layout
        self.size = size
        self.radius = radius
        self.fgColor = fgColor
        self.solidColor = solidColor
        self.shadeColor = shadeColor
        self.strokeColor = strokeColor
    }
    
    private var strokeVariants: [RadixButtonVariant] = [.surface, .outline]
    private var shadeVariants: [RadixButtonVariant] = [.soft, .surface]
    private var newSolidColor: Color {
        guard let solidColor else {
            return colorScheme == .light ? .blackA2 : .whiteA2
        }
        return solidColor
    }
    private var newStrokeColor: Color {
        guard let strokeColor else {
            return colorScheme == .light ? .blackA2 : .whiteA2
        }
        return strokeColor
    }
    private var newShadeColor: Color {
        guard let shadeColor else {
            return colorScheme == .light ? .blackA9 : .whiteA9
        }
        return shadeColor
    }
    private var backgroundColor: Color {
        switch variant {
            case .solid:
                return newSolidColor
            case .soft, .surface:
                return newShadeColor
            default:
                return .clear
        }
    }
    private var shapeStrokeColor: Color {
        switch variant {
            case .surface, .outline:
                return newStrokeColor
            default:
                return .clear
        }
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        radius.clipShape()
            .stroke(shapeStrokeColor, lineWidth: 1)
            .background(backgroundColor)
            .frame(width: size.dimension.width, height: size.dimension.height)
            .overlay {
                if isLoading.wrappedValue {
                    ProgressView()
                        .progressViewStyle(.circular)
                } else {
                    switch layout {
                        case .none:
                            HStack {
                                configuration.title
                            }
                        case .leading:
                            HStack(spacing: 5) {
                                configuration.icon
                                configuration.title
                            }
                        case .trailing:
                            HStack(spacing: 5) {
                                configuration.title
                                configuration.icon
                            }
                    }
                }
            }
            .foregroundStyle(fgColor)
    }
}

extension LabelStyle where Self == RadixLabelStyle {
    /// Creates Ghost style for RadixButton
    public static func radixGhost(
        variant: RadixButtonVariant = .ghost,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color
    ) -> Self {
        .init(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor
        )
    }

    /// Creates Soft style for RadixButton
    public static func radixSoft(
        variant: RadixButtonVariant = .soft,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        shadeColor: Color
    ) -> Self {
        .init(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            shadeColor: shadeColor
        )
    }

    /// Creates Solid style for RadixButton
    public static func radixSolid(
        variant: RadixButtonVariant = .solid,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        solidColor: Color
    ) -> Self {
        .init(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            solidColor: solidColor
        )
    }

    /// Creates Surface style for RadixButton
    public static func radixSurface(
        variant: RadixButtonVariant = .surface,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        strokeColor: Color,
        shadeColor: Color
    ) -> Self {
        .init(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            shadeColor: shadeColor,
            strokeColor: strokeColor
        )
    }

    /// Creates Outline style for RadixButton
    public static func radixOutline(
        variant: RadixButtonVariant = .outline,
        layout: RadixButtonLayout,
        size: RadixButtonSize,
        radius: RadixButtonRadius,
        fgColor: Color,
        strokeColor: Color
    ) -> Self {
        .init(
            variant: variant,
            layout: layout,
            size: size,
            radius: radius,
            fgColor: fgColor,
            strokeColor: strokeColor
        )
    }
}
