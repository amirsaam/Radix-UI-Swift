//
//  ToggleDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

struct ToggleDemoView: View {

    @State private var toggle1 = false
    @State private var toggle2 = false
    @State private var toggle3 = true

    private var radixColor = RadixAutoColor.self

    var body: some View {
        VStack(alignment: .trailing, spacing: 25) {
            HStack {
                Text("Label Text")
                    .foregroundStyle(radixColor.grass.text2)
                Spacer()
                Toggle(isOn: $toggle1) {
                    ResizableBundledImage(
                        imageName: "check",
                        imageSize: 20,
                        bundle: .module
                    )
                }
                .toggleStyle(
                    .radixCheckbox(
                        bgColor: .grass,
                        iconColor: .whiteA
                    )
                )
            }
            Toggle(isOn: $toggle2) {
                Text("Label Text")
                    .foregroundStyle(radixColor.grass.text2)
            }
            .toggleStyle(
                .radixSwitch(
                    bgColor: .grass,
                    thumbColor: .whiteA
                )
            )
            HStack {
                Text("Label Text")
                    .foregroundStyle(radixColor.grass.text2)
                    .font(toggle3 ? .body.italic() : .body)
                Spacer()
                Toggle(isOn: $toggle3) {
                    ResizableBundledImage(
                        imageName: "font-italic",
                        imageSize: 20,
                        bundle: .module
                    )
                }
                .toggleStyle(
                    .radixToggle(
                        bgColor: .grass,
                        iconColor: .whiteA
                    )
                )
            }
        }
        .padding()
        .frame(width: 300)
    }
}

#Preview {
    ToggleDemoView()
}
