//
//  TextFieldDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

struct TextFieldDemoView: View {

    @State private var input1 = ""
    @State private var isLoading1 = false
    @State private var input2 = ""
    @State private var isLoading2 = false

    var body: some View {
        VStack(spacing: 25) {
            TextField("Placeholder1", text: $input1)
                .textFieldStyle(
                    .radixSurface(
                        color: .grass,
                        radius: .large,
                        iconLabel: Image("quote", bundle: .module),
                        iconButton: Image("arrow-right", bundle: .module),
                        action: toggleLoading1
                    ),
                    isLoading: $isLoading1
                )
            TextField("Placeholder2", text: $input2)
                .textFieldStyle(
                    .radixSoft(
                        color: .grass,
                        radius: .large,
                        iconLabel: Image("quote", bundle: .module),
                        iconButton: Image("arrow-right", bundle: .module),
                        action: toggleLoading2
                    ),
                    isLoading: $isLoading2
                )
        }
        .frame(width: 300)
    }

    private func toggleLoading1() {
        isLoading1.toggle()
    }

    private func toggleLoading2() {
        isLoading2.toggle()
    }
}

#Preview {
    TextFieldDemoView()
}
