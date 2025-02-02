//
//  ButtonDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

struct ButtonDemoView: View {

    @State var isLoading1 = false
    @State var isLoading2 = false
    @State var isLoading3 = false
    @State var isLoading4 = false
    @State var isLoading5 = false

    var body: some View {
        VStack(spacing: 15) {
            Button {
                isLoading1.toggle()
            } label: {
                Label(
                    "Label",
                    imageName: "update",
                    imageSize: 15,
                    bundle: .module
                )
            }
            .buttonStyle(
                .radixGhost(
                    layout: .leading,
                    size: .large,
                    radius: .large,
                    color: .grass
                ),
                isLoading: $isLoading1
            )
            Button {
                isLoading2.toggle()
            } label: {
                Label(
                    "Label",
                    imageName: "update",
                    imageSize: 15,
                    bundle: .module
                )
            }
            .buttonStyle(
                .radixOutline(
                    layout: .leading,
                    size: .large,
                    radius: .large,
                    color: .grass
                ),
                isLoading: $isLoading2
            )
            Button {
                isLoading3.toggle()
            } label: {
                Label(
                    "Label",
                    imageName: "update",
                    imageSize: 15,
                    bundle: .module
                )
            }
            .buttonStyle(
                .radixSoft(
                    layout: .leading,
                    size: .large,
                    radius: .large,
                    color: .grass
                ),
                isLoading: $isLoading3
            )
            Button {
                isLoading4.toggle()
            } label: {
                Label(
                    "Label",
                    imageName: "update",
                    imageSize: 15,
                    bundle: .module
                )
            }
            .buttonStyle(
                .radixSolid(
                    layout: .leading,
                    size: .large,
                    radius: .large,
                    color: .grass
                ),
                isLoading: $isLoading4
            )
            Button {
                isLoading5.toggle()
            } label: {
                Label(
                    "Label",
                    imageName: "update",
                    imageSize: 15,
                    bundle: .module
                )
            }
            .buttonStyle(
                .radixSurface(
                    layout: .leading,
                    size: .large,
                    radius: .large,
                    color: .grass
                ),
                isLoading: $isLoading5
            )
        }
    }
}

#Preview {
    ButtonDemoView()
}
