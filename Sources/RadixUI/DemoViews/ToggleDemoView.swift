//
//  ToggleDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

struct Option: Identifiable, Equatable {
    let id = UUID()
    let title: LocalizedStringKey
}


struct ToggleDemoView: View {

    @State private var checkbox = false
    @State private var switchToggle = false
    @State private var toggle = false

    private var radixColor = RadixAutoColor.self

    @State private var selectedOption: Option? = nil
    private let options = [
        Option(title: "Option 1"),
        Option(title: "Option 2"),
        Option(title: "Option 3")
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            RadixRadioGroup(
                options: options,
                selected: $selectedOption,
                style: (
                    variant: .surface,
                    layout: .trailing,
                    color: .grass
                )
            ) {
                Text($0.title)
                    .foregroundStyle(radixColor.grass.text2)
            }
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
                        variant: .surface,
                        color: .grass
                    )
                )
            }
            Toggle(isOn: $switchToggle) {
                Text("Label Text")
                    .foregroundStyle(radixColor.grass.text2)
            }
            .toggleStyle(
                .radixSwitch(
                    variant: .surface,
                    radius: .full,
                    color: .grass
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
                    .radixToggle(color: .grass)
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
