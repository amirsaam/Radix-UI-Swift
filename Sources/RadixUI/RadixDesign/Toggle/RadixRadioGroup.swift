//
//  RadixRadioGroup.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 12/1/1403 AP.
//

import SwiftUI

public struct RadixRadioGroup<DataType: Identifiable & Equatable, Label: View>: View {

    @Binding private var selected: DataType?

    private let options: [DataType]
    private var style: (variant: RadixToggleVariant, layout: RadixToggleLayout, color: RadixAutoColor?)
    @ViewBuilder private let label: (DataType) -> Label

    init(
        options: [DataType],
        selected: Binding<DataType?>,
        style: (variant: RadixToggleVariant, layout: RadixToggleLayout, color: RadixAutoColor?),
        label: @escaping (DataType) -> Label
    ) {
        self.options = options
        self._selected = selected
        self.style = style
        self.label = label
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ForEach(options) { item in
                let isOnBinding = Binding {
                    item == selected
                } set: { _ in
                    selected = item
                }
                Toggle(isOn: isOnBinding) {
                    label(item)
                }
                .toggleStyle(
                    .radixRadio(
                        variant: style.variant,
                        layout: style.layout,
                        color: style.color
                    )
                )
            }
        }
    }

}
