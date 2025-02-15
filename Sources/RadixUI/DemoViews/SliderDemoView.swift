//
//  SliderDemo.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/23/1403 AP.
//

import SwiftUI

struct SliderDemoView: View {

    @State private var value1 = 5.0
    @State private var value2 = 50.0

    var body: some View {
        HStack(spacing: 25) {
            Text(String(describing: value1))
                .frame(width: 50)
            RadixSlider(value: $value1, step: 1, in: 0...10)
                .rxSliderStyle(
                    .radixSoft(
                        radius: .full,
                        size: .medium,
                        color: .grass
                    )
                )
        }
        .padding()
        .frame(width: 400)
        HStack(spacing: 25) {
            Text(String(describing: value2))
                .frame(width: 50)
            RadixSlider(value: $value2, step: 5, in: 0...100)
                .rxSliderStyle(
                    .radixSurface(
                        radius: .full,
                        size: .medium,
                        color: .grass
                    )
                )
        }
        .padding()
        .frame(width: 400)
    }
}

#Preview {
    SliderDemoView()
}
