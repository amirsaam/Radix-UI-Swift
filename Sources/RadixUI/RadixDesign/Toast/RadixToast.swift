//
//  RadixToast.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/23/1403 AP.
//

import SwiftUI

public struct RadixToast<ButtonLabel: View, ToastLabel: View>: View {

    @Environment(\.colorScheme) private var colorScheme

    @Binding var isPresented: Bool

    private var variant: RadixToastVariant
    private var position: RadixToastPosition
    private var color: RadixAutoColor?
    private var duration: Int
    private var buttonAction: (() -> Void)?
    private var buttonLabel: (() -> ButtonLabel)?
    private var toastLabel: () -> ToastLabel

    public var body: some View {
        HStack {
            toastLabel()
            Spacer()
            Button {
                if let buttonAction {
                    buttonAction()
                } else {
                    isPresented = false
                }
            } label: {
                if let buttonLabel {
                    buttonLabel()
                } else {
                    Label(
                        "Ignored Text",
                        imageName: "eye-closed",
                        imageSize: 17.5,
                        bundle: .module
                    )
                }
            }
            .buttonStyle(
                buttonStyle,
                isLoading: .constant(false)
            )
        }
        .frame(width: 360)
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .radixShapeFillApplier(
                    color: toastColor.first!,
                    width: nil, height: nil
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .radixShapeBorderApplier(
                            color: toastColor.last!,
                            width: nil, height: nil
                        )
                }
        }
        .foregroundStyle(reversedBlackOrWhite.text2)
        .task {
            guard duration != 0 else { return }
            try? await Task.sleep(nanoseconds: UInt64(duration) * 1000000000)
            isPresented = false
        }
    }

}

extension RadixToast {

    init(
        isPresented: Binding<Bool>,
        variant: RadixToastVariant,
        position: RadixToastPosition,
        color: RadixAutoColor?,
        duration: Int,
        buttonAction: @escaping () -> Void,
        @ViewBuilder buttonLabel: @escaping () -> ButtonLabel,
        @ViewBuilder toastLabel: @escaping () -> ToastLabel
    ) {
        self._isPresented = isPresented
        self.variant = variant
        self.position = position
        self.color = color
        self.duration = duration
        self.buttonAction = buttonAction
        self.buttonLabel = buttonLabel
        self.toastLabel = toastLabel
    }

    init(
        isPresented: Binding<Bool>,
        variant: RadixToastVariant,
        position: RadixToastPosition,
        color: RadixAutoColor?,
        duration: Int,
        @ViewBuilder toastLabel: @escaping () -> ToastLabel
    ) where ButtonLabel == Never {
        self._isPresented = isPresented
        self.variant = variant
        self.position = position
        self.color = color
        self.duration = duration
        self.toastLabel = toastLabel
    }

}

extension RadixToast {

    private var unwrappedColor: RadixAutoColor {
        guard let color else { return .blue }
        return color
    }

    var isBlackOrWhite: Bool {
        let isBlack = unwrappedColor == .blackA
        let isWhite = unwrappedColor == .whiteA
        return isBlack || isWhite
    }

    var reversedBlackOrWhite: RadixAutoColor {
        guard unwrappedColor != .blackA else { return .whiteA }
        guard unwrappedColor != .whiteA else { return .blackA }
        return unwrappedColor
    }

    private var toastColor: [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .soft: [
                isBlackOrWhite ? unwrappedColor.text2 : unwrappedColor.component1,
                .clear
            ]
            case .surface: [
                isBlackOrWhite ? unwrappedColor.text2 : unwrappedColor.background2,
                isBlackOrWhite ? reversedBlackOrWhite.solid1 : unwrappedColor.border2
            ]
        }
    }

    private var buttonStyle: RadixButtonStyle {
        switch variant {
            case .soft:
                return RadixButtonStyle(
                    variant: .solid,
                    layout: .icon,
                    radius: .large,
                    color: reversedBlackOrWhite
                )
            case .surface:
                return RadixButtonStyle(
                    variant: isBlackOrWhite ? .solid : .soft,
                    layout: .icon,
                    radius: .large,
                    color: reversedBlackOrWhite
                )
        }
    }

}
