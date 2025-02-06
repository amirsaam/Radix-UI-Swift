//
//  ToggleDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

struct ToggleDemoView: View {

    @State private var checkbox = false
    @State private var `switch` = false
    @State private var toggle = false

    private var radixColor = RadixAutoColor.self

    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            HStack {
                Text("Label Text")
                    .foregroundStyle(radixColor.grass.text2)
                Spacer()
                Toggle(isOn: $checkbox) {
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
            Toggle(isOn: $switch) {
                Text("Label Text")
                    .foregroundStyle(radixColor.grass.text2)
            }
            .toggleStyle(
                .radixSwitch(
                    onColor: .grass,
                    thumbColor: .whiteA
                )
            )
            HStack {
                Text("Label Text")
                    .foregroundStyle(radixColor.grass.text2)
                    .font(toggle ? .body.italic() : .body)
                Spacer()
                Toggle(isOn: $toggle) {
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
