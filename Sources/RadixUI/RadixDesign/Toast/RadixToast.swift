//
//  RadixToast.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/23/1403 AP.
//

import SwiftUI

public struct RadixToast<ButtonLabel: View, ToastLabel: View>: View {

    @Binding var isPresented: Bool

    private var variant: RadixToastVariant
    private var position: RadixToastPosition
    private var color: RadixAutoColor?
    private var duration: Int
    private var buttonAction: (() -> Void)?
    private var buttonLabel: (() -> ButtonLabel)?
    @ViewBuilder private var toastLabel: () -> ToastLabel

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
        .foregroundStyle(newColor.solid2)
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
        buttonLabel: @escaping () -> ButtonLabel,
        toastLabel: @escaping () -> ToastLabel
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
        toastLabel: @escaping () -> ToastLabel
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

    private var newColor: RadixAutoColor {
        guard let color else { return .blue }
        return color
    }

    private var toastColor: [Color] {
        switch variant {
                // 1st Entry is Fill and 2nd is Stroke Colors
            case .soft:
                [
                    newColor.component1,
                    .clear
                ]
            case .surface:
                [
                    newColor.background2,
                    newColor.border2
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
                    color: newColor
                )
            case .surface:
                return RadixButtonStyle(
                    variant: .soft,
                    layout: .icon,
                    radius: .large,
                    color: newColor
                )
        }
    }

}
