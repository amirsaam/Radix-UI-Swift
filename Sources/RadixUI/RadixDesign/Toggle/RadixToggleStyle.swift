//
//  RadixToggleStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

public struct RadixToggleStyle: ToggleStyle {

    @Environment(\.colorScheme) private var colorScheme

    private var type: RadixToggleType
    private var variant: RadixToggleVariant
    private var layout: RadixToggleLayout
    private var radius: RadixElementShapeRadius
    private var color: RadixAutoColor?
    private var size: CGFloat?

    init(
        type: RadixToggleType,
        variant: RadixToggleVariant,
        layout: RadixToggleLayout,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor?,
        size: CGFloat?
    ) {
        self.type = type
        self.variant = variant
        self.layout = layout
        self.radius = radius
        self.color = color
        self.size = size
    }

    private var gray: RadixAutoColor = .gray

    public func makeBody(configuration: Configuration) -> some View {
        switch type {
            case .checkbox: checkbox(configuration: configuration)
            case .radio: radio(configuration: configuration)
            case .switch: escapedSwitch(configuration: configuration)
            case .toggle: toggle(configuration: configuration)
        }
    }

}

// MARK: - RaddixToggle Computed Variables
extension RadixToggleStyle {

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

    private var unwrappedSize: CGFloat {
        guard let size else { return 27.5 }
        return size
    }

    private func checkboxStyleColor(_ configuration: Configuration) -> [Color] {
        switch variant {
                // 1st Entry is Background and 2nd is Foreground Colors
            case .soft:
                return [
                    isBlackOrWhite ? unwrappedColor.solid2 : unwrappedColor.component3,
                    configuration.isOn
                    ? isBlackOrWhite ? reversedBlackOrWhite.text2 : unwrappedColor.solid2
                    : .clear
                ]
            case .surface:
                return [
                    configuration.isOn ? unwrappedColor.solid2 : .clear,
                    configuration.isOn ?
                     (isBlackOrWhite ? reversedBlackOrWhite.text2 : unwrappedColor.text2)
                    : .clear
                ]
        }
    }

    private func radioStyleColor(_ configuration: Configuration) -> [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .soft:
                return [
                    isBlackOrWhite ? unwrappedColor.solid2 : unwrappedColor.component3,
                    .clear
                ]
            case .surface:
                return [
                    configuration.isOn ? unwrappedColor.solid2 : .clear,
                    configuration.isOn ? .clear : gray.border2
                ]
        }
    }

    private func switchStyleColor(_ configuration: Configuration) -> [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .soft:
                return [
                    isBlackOrWhite ? unwrappedColor.solid2
                    : configuration.isOn ? unwrappedColor.component3 : gray.component3,
                    .clear
                ]
            case .surface:
                return [
                    isBlackOrWhite ? unwrappedColor.solid2
                    : configuration.isOn ? unwrappedColor.solid2 : gray.background2,
                    configuration.isOn ? .clear : gray.border2
                ]
        }
    }

}

// MARK: - RadixToggle Type Builders
extension RadixToggleStyle {

    @ViewBuilder
    private func checkbox(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(checkboxStyleColor(configuration).first!)
            .overlay {
                if variant == .surface {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(gray.border2, lineWidth: 1)
                }
                if configuration.isOn {
                    configuration.label
                        .foregroundColor(
                            variant == .surface
                            ? (isBlackOrWhite ? reversedBlackOrWhite.text2 : unwrappedColor.background2)
                            : checkboxStyleColor(configuration).last!
                        )
                }
            }
            .frame(width: unwrappedSize, height: unwrappedSize)
            .radixShadow1()
            .onTapGesture {
                configuration.isOn.toggle()
            }
    }

    @ViewBuilder
    private func radio(configuration: Configuration) -> some View {
        HStack(spacing: 15) {
            if layout == .leading {
                radioShape(
                    configuration,
                    size: .init(width: 22, height: 22)
                )
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            }
            configuration.label
            if layout == .trailing {
                Spacer()
                radioShape(
                    configuration,
                    size: .init(width: 22, height: 22)
                )
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            }
        }
    }

    @ViewBuilder
    private func escapedSwitch(configuration: Configuration) -> some View {
        let baseSize: CGSize = .init(width: 44, height: 24)
        let thumbSize: CGSize = .init(width: 21, height: 21)
        let offset: CGFloat = configuration.isOn ? 10 : -10
        HStack {
            configuration.label
            Spacer()
            ZStack {
                switchBase(configuration, size: baseSize)
                switchBaseBorder(configuration, size: baseSize)
                switchThumb(configuration, size: thumbSize)
                    .offset(x: offset)
            }
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    configuration.isOn.toggle()
                }
            }
        }
    }

    @ViewBuilder
    private func toggle(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(
                configuration.isOn
                ? unwrappedColor.solid2
                : isBlackOrWhite ? unwrappedColor.border1 : unwrappedColor.component3
            )
            .frame(width: unwrappedSize, height: unwrappedSize)
            .radixShadow1()
            .overlay {
                configuration.label
                    .foregroundColor(
                        isBlackOrWhite
                         ? reversedBlackOrWhite.text2
                         : unwrappedColor.background2
                    )
            }
            .onTapGesture {
                configuration.isOn.toggle()
            }
    }

}

// MARK: - RadixToggle Builders where Type == Radio
extension RadixToggleStyle {
    
    @ViewBuilder
    private func radioShape(_ configuration: Configuration, size: CGSize) -> some View {
        ZStack {
            Circle()
                .radixShapeFillApplier(
                    color: radioStyleColor(configuration).first!,
                    width: size.width, height: size.height
                )
            Circle()
                .radixShapeBorderApplier(
                    color: radioStyleColor(configuration).last!,
                    width: size.width, height: size.height
                )
            if configuration.isOn {
                Circle()
                    .radixShapeFillApplier(
                        color: variant == .soft
                        ? reversedBlackOrWhite.solid2
                        : (isBlackOrWhite ? reversedBlackOrWhite.text2 : unwrappedColor.background2),
                        width: size.width - 12, height: size.height - 12
                    )
            }
        }
        .compositingGroup()
    }

}

// MARK: - RadixToggle Builders where Type == Switch
extension RadixToggleStyle {

    @ViewBuilder
    private func switchBase(_ configuration: Configuration, size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: switchStyleColor(configuration).first!,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: 4)
                    .radixShapeFillApplier(
                        color: switchStyleColor(configuration).first!,
                        width: size.width, height: size.height
                    )
            case .full:
                Capsule()
                    .radixShapeFillApplier(
                        color: switchStyleColor(configuration).first!,
                        width: size.width, height: size.height
                    )
        }
    }

    @ViewBuilder
    private func switchBaseBorder(_ configuration: Configuration, size: CGSize) -> some View {
        switch radius {
            case .none:
                Rectangle()
                    .radixShapeBorderApplier(
                        color: switchStyleColor(configuration).last!,
                        width: size.width, height: size.height
                    )
            case .large:
                RoundedRectangle(cornerRadius: 4)
                    .radixShapeBorderApplier(
                        color: switchStyleColor(configuration).last!,
                        width: size.width, height: size.height
                    )
            case .full:
                Capsule()
                    .radixShapeBorderApplier(
                        color: switchStyleColor(configuration).last!,
                        width: size.width, height: size.height
                    )
        }
    }

    @ViewBuilder
    private func switchThumb(_ configuration: Configuration, size: CGSize) -> some View {

        let whiteA: RadixAutoColor = .whiteA

        switch radius {
            case .none:
                Rectangle()
                    .radixShapeFillApplier(
                        color: whiteA.text2,
                        width: size.width, height: size.height
                    )
                    .radixShadow3()
            case .large:
                RoundedRectangle(cornerRadius: 4)
                    .radixShapeFillApplier(
                        color: whiteA.text2,
                        width: size.width, height: size.height
                    )
                    .radixShadow3()
            case .full:
                Circle()
                    .radixShapeFillApplier(
                        color: whiteA.text2,
                        width: size.width, height: size.height
                    )
                    .radixShadow3()
        }
    }

}
