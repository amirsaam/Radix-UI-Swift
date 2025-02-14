//
//  RadixTextFieldStyle.swift
//
//
//  Created by Amir Mohammadi on 5/14/1403 AP.
//

import SwiftUI

public struct RadixTextFieldStyle: TextFieldStyle {

    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isLoading) private var isLoading

    @FocusState private var isFocused: Bool

    private var variant: RadixTextFieldVariant
    private var radius: RadixElementShapeRadius
    private var color: RadixAutoColor?
    private var iconLabel: Image?
    private var iconButton: Image?
    private var iconSize: CGFloat
    private var action: (() -> Void)?

    init(
        variant: RadixTextFieldVariant,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor?,
        iconLabel: Image?,
        iconButton: Image?,
        iconSize: CGFloat,
        action: (() -> Void)?
    ) {
        self.variant = variant
        self.radius = radius
        self.color = color
        self.iconLabel = iconLabel
        self.iconButton = iconButton
        self.iconSize = iconSize
        self.action = action
    }

    public func _body(configuration: TextField<Self._Label>) -> some View {
        VStack(alignment: .leading) {
            HStack(spacing: 8) {
                if let iconLabel {
                    if isLoading.wrappedValue {
                        ProgressView()
                            .progressViewStyle(.circular)
                            .tint(isFocused ? newColor.solid1 : newColor.border2)
                            .controlSize(.regular)
                    } else {
                        iconLabel
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: iconSize, height: iconSize)
                            .foregroundStyle(isFocused ? newColor.solid1 : newColor.border2)
                    }
                }
                configuration
                    .foregroundStyle(newColor.text2)
                if let action {
                    Spacer()
                    Button(action: action) {
                        Label {
                            Text("Ignored Text")
                        } icon: {
                            if let iconButton {
                                iconButton
                            }
                        }
                    }
                    .buttonStyle(
                        buttonStyle,
                        isLoading: .constant(false)
                    )
                }
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(shape)
        .focused($isFocused)
        .onSubmit {
            if let action {
                action()
            }
        }
    }

    @ViewBuilder
    private var shape: some View {
        switch radius {
            case .none:
                Rectangle()
                    .fill(textfieldColor.first!)
                    .overlay {
                        Rectangle()
                            .stroke(
                                textfieldColor.last!,
                                lineWidth: 1
                            )
                            .background(.clear)
                    }
            case .large:
                RoundedRectangle(cornerRadius: 8)
                    .fill(textfieldColor.first!)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(
                                textfieldColor.last!,
                                lineWidth: 1
                            )
                            .background(.clear)
                    }
            case .full:
                Capsule()
                    .fill(textfieldColor.first!)
                    .overlay {
                        Capsule()
                            .stroke(
                                textfieldColor.last!,
                                lineWidth: 1
                            )
                            .background(.clear)
                    }
        }
    }

}

extension RadixTextFieldStyle {

    private var newColor: RadixAutoColor {
        guard let color else { return .blue }
        return color
    }

    private var textfieldColor: [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .soft:
                [
                    newColor.component1,
                    isFocused ? newColor.solid1 : newColor.border2
                ]
            case .surface:
                [
                    .clear,
                    isFocused ? newColor.solid1 : newColor.border2
                ]
        }
    }

    private var buttonStyle: RadixButtonStyle {
        switch variant {
            case .soft:
                return RadixButtonStyle(
                    variant: .solid,
                    layout: .icon,
                    radius: radius,
                    color: newColor
                )
            case .surface:
                return RadixButtonStyle(
                    variant: .soft,
                    layout: .icon,
                    radius: radius,
                    color: newColor
                )
        }
    }

}
