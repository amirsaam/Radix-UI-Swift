//
//  View+Extenstions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/24/1403 AP.
//

import SwiftUI

extension View {

    /// Make any presented modals dismissable
    func radixSwipeToDismiss(
        _ isPresented: Binding<Bool>,
        direction: DismissSwipeDirection
    ) -> some View {
        self
            .modifier(
                RadixSwipeToDismiss(
                    isPresented: isPresented,
                    direction: direction
                )
            )
    }

    /// Shows a Toast on any View of your choice with a Dismiss Button Action, use it on highest container in your view hierarchy
    public func radixInfoToast<ToastLabel: View>(
        isPresented: Binding<Bool>,
        variant: RadixToastVariant,
        position: RadixToastPosition,
        color: RadixAutoColor?,
        duration: Int,
        toastLabel: @escaping () -> ToastLabel
    ) -> some View {
        self
            .modifier(
                RadixToastModifier(
                    isPresented: isPresented,
                    variant: variant,
                    position: position,
                    color: color,
                    duration: duration,
                    toastLabel: toastLabel
                )
            )
    }
    
    /// Shows a Toast on any View of your choice with a Custom Button Action, use it on highest container in your view hierarchy
    public func radixActionToast<ButtonLabel: View, ToastLabel: View>(
        isPresented: Binding<Bool>,
        variant: RadixToastVariant,
        position: RadixToastPosition,
        color: RadixAutoColor?,
        duration: Int,
        buttonAction: @escaping () -> Void,
        buttonLabel: @escaping () -> ButtonLabel,
        toastLabel: @escaping () -> ToastLabel
    ) -> some View {
        self
            .modifier(
                RadixToastModifier(
                    isPresented: isPresented,
                    variant: variant,
                    position: position,
                    color: color,
                    duration: duration,
                    buttonAction: buttonAction,
                    buttonLabel: buttonLabel,
                    toastLabel: toastLabel
                )
            )
    }
    
}
