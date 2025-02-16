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
            color: .grass,
            selectedFont: .systemFont(ofSize: 15, weight: .semibold),
            notSelectedFont: .systemFont(ofSize: 15, weight: .light)
        )
    }

    @State private var selected: RadixToggleType = .switch

    var body: some View {
        Picker(String(""), selection: $selected) {
            Text("Checkbox").tag(RadixToggleType.checkbox)
            Text("Switch").tag(RadixToggleType.switch)
            Text("Toggle").tag(RadixToggleType.toggle)
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
