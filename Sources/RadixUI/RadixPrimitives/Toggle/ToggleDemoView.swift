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
    @State private var toggle3 = false

    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            HStack {
                Text("Label Text")
                    .foregroundStyle(RadixAutoColor.grass.text2)
                Spacer()
                Toggle(isOn: $toggle1) {
                    Image("update", bundle: .module)
                }
                .toggleStyle(
                    .radixCheckbox(bgColor: .grass, iconColor: .whiteA)
                )
            }
            Toggle(isOn: $toggle2) {
                Text("Label Text")
                    .foregroundStyle(RadixAutoColor.grass.text2)
            }
            .toggleStyle(
                .radixSwitch(bgColor: .grass, thumbColor: .whiteA)
            )
            HStack {
                Text("Label Text")
                    .foregroundStyle(RadixAutoColor.grass.text2)
                Spacer()
                Toggle(isOn: $toggle3) {
                    Image("update", bundle: .module)
                }
                .toggleStyle(
                    .radixToggle(bgColor: .grass, iconColor: .whiteA)
                )
            }
        }
        .padding()
        .frame(width: 200)
    }
}

#Preview {
    ToggleDemoView()
}
