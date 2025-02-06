//
//  PickerDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

#if canImport(UIKit)
struct PickerDemoView: View {

    init() {
        RadixSegmentedPicker(
            backgroundColor: RadixAutoColor.tomato.component1,
            selectedColor: RadixAutoColor.tomato.solid2,
            foregroundColor: RadixAutoColor.tomato.background2,
            selectedFont: .systemFont(ofSize: 15),
            unselectedFont: .systemFont(ofSize: 15)
        )
    }

    @State private var selection: [RadixToggleVariant] = [.checkbox, .switch, .toggle]
    @State private var selected: RadixToggleVariant = .switch

    var body: some View {
        Picker(String(""), selection: $selected) {
            Text("Checkbox").tag(RadixToggleVariant.checkbox)
            Text("Switch").tag(RadixToggleVariant.switch)
            Text("Toggle").tag(RadixToggleVariant.toggle)
        }
        .pickerStyle(.segmented)
        .padding()
        .frame(width: 400)
    }
}

#Preview {
    PickerDemoView()
}
#endif
