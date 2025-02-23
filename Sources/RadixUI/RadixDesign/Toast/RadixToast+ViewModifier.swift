//
//  RadixToast+ViewModifier.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/24/1403 AP.
//

import SwiftUI


public struct RadixToastModifier<ButtonLabel: View, ToastLabel: View>: ViewModifier {

    @Binding var isPresented: Bool
    
    private var variant: RadixToastVariant
    private var position: RadixToastPosition
    private var color: RadixAutoColor?
    private var duration: Int
    private var isInverted: Bool
    private var buttonAction: (() -> Void)?
    private var buttonLabel: (() -> ButtonLabel)?
    @ViewBuilder private var toastLabel: () -> ToastLabel

    public func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented {
                VStack {
                    if position == .bottom {
                        Spacer()
                    }
                    if buttonAction != nil && buttonLabel != nil {
                        actionToast.radixInvertedColorScheme(isInverted)
                    } else {
                        infoToast.radixInvertedColorScheme(isInverted)
                    }
                    if position == .top {
                        Spacer()
                    }
                }
                .transition(.move(edge: position.edge))
                .radixSwipeToDismiss(
                    $isPresented,
                    direction: position == .top ? .up : .down
                )
            }
        }
        .animation(.bouncy(duration: 0.3), value: isPresented)
    }

    @ViewBuilder
    private var infoToast: some View {
        RadixToast(
            isPresented: $isPresented,
            variant: variant,
            position: position,
            color: color,
            duration: duration,
            toastLabel: toastLabel
        )
    }

    @ViewBuilder
    private var actionToast: some View {
        if let buttonAction, let buttonLabel {
            RadixToast(
                isPresented: $isPresented,
                variant: variant,
                position: position,
                color: color,
                duration: duration,
                buttonAction: buttonAction,
                buttonLabel: buttonLabel,
                toastLabel: toastLabel
            )
        }
    }

}

extension RadixToastModifier {

    init(
        isPresented: Binding<Bool>,
        variant: RadixToastVariant,
        position: RadixToastPosition,
        color: RadixAutoColor?,
        isInverted: Bool,
        duration: Int,
        buttonAction: @escaping () -> Void,
        buttonLabel: @escaping () -> ButtonLabel,
        toastLabel: @escaping () -> ToastLabel
    ) {
        self._isPresented = isPresented
        self.variant = variant
        self.position = position
        self.color = color
        self.isInverted = isInverted
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
        isInverted: Bool,
        duration: Int,
        toastLabel: @escaping () -> ToastLabel
    ) where ButtonLabel == Never {
        self._isPresented = isPresented
        self.variant = variant
        self.position = position
        self.color = color
        self.isInverted = isInverted
        self.duration = duration
        self.toastLabel = toastLabel
    }


}
