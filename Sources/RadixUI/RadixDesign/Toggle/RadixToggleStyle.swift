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
    private var switchStyle: (RadixSwitchVariant, RadixElementShapeRadius)?
    private var backgroundColor: RadixAutoColor?
    private var foregroundColor: RadixAutoColor?
    private var size: CGFloat?

    init(
        type: RadixToggleType,
        switchStyle: (RadixSwitchVariant, RadixElementShapeRadius)?,
        backgroundColor: RadixAutoColor?,
        foregroundColor: RadixAutoColor?,
        size: CGFloat?
    ) {
        self.type = type
        self.switchStyle = switchStyle
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.size = size
    }

    public func makeBody(configuration: Configuration) -> some View {
        switch type {
            case .checkbox: checkbox(configuration: configuration)
            case .switch: escapedSwitch(configuration: configuration)
            case .toggle: toggle(configuration: configuration)
        }
    }

}

// MARK: - RaddixToggle Computed Variables
extension RadixToggleStyle {

    private var newBackgroundColor: RadixAutoColor {
        guard let backgroundColor else {
            return colorScheme == .light ? .blackA : .whiteA
        }
        return backgroundColor
    }

    private var newForegroundColor: RadixAutoColor {
        guard let foregroundColor else {
            return colorScheme == .light ? .whiteA : .blackA
        }
        return foregroundColor
    }

    private var newSize: CGFloat {
        guard let size else { return 27.5 }
        return size
    }

}

// MARK: - RadixToggle Type Builders
extension RadixToggleStyle {

    @ViewBuilder
    private func checkbox(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(newBackgroundColor.solid2)
            .overlay {
                if configuration.isOn {
                    configuration.label
                        .foregroundColor(newForegroundColor.text2)
                }
            }
            .frame(width: newSize, height: newSize)
            .radixShadow1()
            .onTapGesture {
                configuration.isOn.toggle()
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
            .fill(configuration.isOn ? newBackgroundColor.solid2 : newBackgroundColor.component3)
            .frame(width: newSize, height: newSize)
            .radixShadow1()
            .overlay {
                configuration.label
                    .foregroundColor(newForegroundColor.text2)
            }
            .onTapGesture {
                configuration.isOn.toggle()
            }
    }

}

// MARK: - RadixToggle Builders where Type == Switch
extension RadixToggleStyle {

    @ViewBuilder
    private func switchBase(_ configuration: Configuration, size: CGSize) -> some View {
        if let switchStyle {
            switch switchStyle.1 {
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
        } else {
            EmptyView()
        }
    }

    @ViewBuilder
    private func switchBaseBorder(_ configuration: Configuration, size: CGSize) -> some View {
        if let switchStyle {
            switch switchStyle.1 {
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
        } else {
            EmptyView()
        }
    }

    @ViewBuilder
    private func switchThumb(_ configuration: Configuration, size: CGSize) -> some View {
        if let switchStyle {
            switch switchStyle.1 {
                case .none:
                    Rectangle()
                        .radixShapeFillApplier(
                            color: newForegroundColor.text2,
                            width: size.width, height: size.height
                        )
                        .radixShadow3()
                case .large:
                    RoundedRectangle(cornerRadius: 4)
                        .radixShapeFillApplier(
                            color: newForegroundColor.text2,
                            width: size.width, height: size.height
                        )
                        .radixShadow3()
                case .full:
                    Circle()
                        .radixShapeFillApplier(
                            color: newForegroundColor.text2,
                            width: size.width, height: size.height
                        )
                        .radixShadow3()
            }
        } else {
            EmptyView()
        }
    }

    private func switchStyleColor(_ configuration: Configuration) -> [Color] {
        guard let switchStyle else { return [] }
        switch switchStyle.0 {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .soft:
                return [
                    configuration.isOn ? newBackgroundColor.solid2 : RadixAutoColor.gray.component3,
                    .clear
                ]
            case .surface:
                return [
                    configuration.isOn ? newBackgroundColor.solid2 : RadixAutoColor.gray.component2,
                    configuration.isOn ? .clear : RadixAutoColor.gray.border2
                ]
        }
    }

}
