//
//  ToastDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/27/1403 AP.
//

import SwiftUI

struct ToastDemoView: View {
    
    @State private var presentInfoToast = false
    @State private var presentActionToast = false
    
    var body: some View {
        VStack(spacing: 25) {
            Button {
                presentInfoToast = true
            } label: {
                Label(
                    "Present Bot Toast",
                    imageName: "vercel-logo",
                    imageSize: 20,
                    bundle: .module
                )
            }
            .buttonStyle(
                .radixSolid(
                    layout: .leading,
                    radius: .full,
                    color: .grass
                ),
                isLoading: .constant(false)
            )
            Button {
                presentActionToast = true
            } label: {
                Label(
                    "Present Top Toast",
                    imageName: "vercel-logo",
                    imageSize: 20,
                    bundle: .module
                )
            }
            .buttonStyle(
                .radixSolid(
                    layout: .leading,
                    radius: .full,
                    color: .grass
                ),
                isLoading: .constant(false)
            )
        }
        .radixInfoToast(
            $presentInfoToast,
            variant: .surface,
            position: .bottom,
            color: .grass,
            duration: 3
        ) {
            Label(
                "This is a Radix Info Toast",
                imageName: "vercel-logo",
                imageSize: 20,
                bundle: .module
            )
        }
        .radixActionToast(
            $presentActionToast,
            variant: .soft,
            position: .top,
            color: .grass,
            duration: 0
        ) {
            presentInfoToast = true
        } buttonLabel: {
            Label(
                "Ignored Text",
                imageName: "avatar",
                imageSize: 20,
                bundle: .module
            )
        } toastLabel: {
            Label(
                "Button Presents Info Toast",
                imageName: "vercel-logo",
                imageSize: 20,
                bundle: .module
            )
        }
    }
    
}

#Preview {
    ToastDemoView()
}
