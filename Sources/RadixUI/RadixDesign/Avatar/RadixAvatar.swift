//
//  RadixAvatar.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 12/9/1403 AP.
//

import SwiftUI

public struct RadixAvatar: View {

    @Environment(\.colorScheme) private var colorScheme

    private var url: URL?
    private var name: String?
    private var fallback: RadixAvatarFallbackType
    private var variant: RadixAvatarVariant
    private var size: RadixAvatarSize
    private var radius: RadixElementShapeRadius
    private var color: RadixAutoColor?

    /// RadixAvatar with Fallback Type of Name's Abbreviation
    init(
        url: URL?,
        name: String?,
        variant: RadixAvatarVariant,
        size: RadixAvatarSize,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) {
        self.url = url
        self.name = name
        self.variant = variant
        self.size = size
        self.fallback = .name
        self.radius = radius
        self.color = color
    }

    /// RadixAvatar with Fallback Type of Name's Abbreviation
    init(
        url: URL?,
        variant: RadixAvatarVariant,
        size: RadixAvatarSize,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor? = nil
    ) {
        self.url = url
        self.name = nil
        self.variant = variant
        self.size = size
        self.fallback = .icon
        self.radius = radius
        self.color = color
    }

    public var body: some View {
        ZStack {
            avatarShape
            if let url {
                AsyncImage(url: url) { loadedImage in
                    loadedImage
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: size.frame, height: size.frame)
                        .clipShape(avatarClipShape)
                } placeholder: {
                    switch fallback {
                        case .name:
                            Text(abbreviatedName)
                                .foregroundStyle(fallbackColor.last!)
                                .font(font)
                        case .icon:
                            ResizableBundledImage(imageName: "person", imageSize: size.frame / 2, bundle: .module)
                                .foregroundStyle(fallbackColor.last!)
                    }
                }
            }
        }
    }

}

extension RadixAvatar {

    private var unwrappedColor: RadixAutoColor {
        guard let color else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return color
    }

    private var isBlackOrWhite: Bool {
        let isBlack = unwrappedColor == .blackA
        let isWhite = unwrappedColor == .whiteA
        return isBlack || isWhite
    }

    private var reversedBlackOrWhite: RadixAutoColor {
        guard unwrappedColor != .blackA else { return .whiteA }
        guard unwrappedColor != .whiteA else { return .blackA }
        return unwrappedColor
    }

    private var fallbackColor: [Color] {
        switch variant {
                // 1st Entry is Background and 2nd is Foreground Colors
            case .soft:
                return [
                    isBlackOrWhite ? unwrappedColor.solid2 : unwrappedColor.component3,
                    isBlackOrWhite ? reversedBlackOrWhite.text2 : unwrappedColor.solid2
                ]
            case .solid:
                return [
                    unwrappedColor.solid2,
                    isBlackOrWhite
                    ? reversedBlackOrWhite.text2
                    : colorScheme == .light ? unwrappedColor.background2 : unwrappedColor.text2
                ]
        }
    }

    private var font: Font {
        switch size {
            case .small: .headline
            case .medium: .title
            case .large: .largeTitle
        }
    }

    private var abbreviatedName: String {

        guard let name else { return "" }

        let components = name.split(separator: " ")

        var first = ""
        var last = ""

        if let firstWord = components.first,
           let firstLetter = firstWord.first?.uppercased() {
            first = firstLetter
        }

        guard components.count != 1 else { return first }

        if let lastWord = components.last,
           let lastLetter = lastWord.first?.uppercased() {
            last = lastLetter
        }

        return first + last

    }

    private var avatarClipShape: some Shape {
        switch radius {
            case .none: PortedAnyShape(Rectangle())
            case .large: PortedAnyShape(RoundedRectangle(cornerRadius: size.radius))
            case .full: PortedAnyShape(Circle())
        }
    }
}

extension RadixAvatar {

    @ViewBuilder
    private var avatarShape: some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: fallbackColor.first!,
                        width: size.frame, height: size.frame
                    )
            case .large:
                RoundedRectangle(cornerRadius: size.radius)
                    .radixShapeFillApplier(
                        color: fallbackColor.first!,
                        width: size.frame, height: size.frame
                    )
            case .full:
                Capsule()
                    .radixShapeFillApplier(
                        color: fallbackColor.first!,
                        width: size.frame, height: size.frame
                    )
        }
    }

}
