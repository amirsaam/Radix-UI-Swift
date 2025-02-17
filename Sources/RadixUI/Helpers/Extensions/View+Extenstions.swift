//
//  View+Extenstions.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/24/1403 AP.
//

import SwiftUI

extension View {

    /// Make any presented modals dismissable
    public func radixSwipeToDismiss(
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

    /// Shows a Toast on any View of your choice with a Dismiss Button Action, use it on highest container in your view hierarchy, duration == 0 will disable auto dismiss
    public func radixInfoToast<ToastLabel: View>(
        _ isPresented: Binding<Bool>,
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
    
    /// Shows a Toast on any View of your choice with a Custom Button Action, use it on highest container in your view hierarchy, duration == 0 will disable auto dismiss
    public func radixActionToast<ButtonLabel: View, ToastLabel: View>(
        _ isPresented: Binding<Bool>,
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

extension View where Self == Text {

    ///
    public func radixBadge(
        variant: RadixBadgeVariant,
        radius: RadixElementShapeRadius,
        color: RadixAutoColor
    ) -> some View {
        self
            .modifier(
                RadixBadge(
                    variant: variant,
                    radius: radius,
                    color: color
                )
            )
    }

    /// Modifies a Text View to become an Info Callout with Customizable Color
    public func radixInfoCallout(
        variant: RadixCalloutVariant,
        color: RadixAutoColor
    ) -> some View {
        self
            .modifier(
                RadixCallout(
                    variant: variant,
                    role: .info,
                    color: color
                )
            )
    }

    /// Modifies a Text View to become an Alert Callout with Red Color
    public func radixAlertCallout(variant: RadixCalloutVariant) -> some View {
        self
            .modifier(
                RadixCallout(
                    variant: variant,
                    role: .alert,
                    color: .red
                )
            )
    }

}
