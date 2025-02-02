//
//  TextFieldDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/14/1403 AP.
//

import SwiftUI

struct TextFieldDemoView: View {

    @State private var input = ""

    var body: some View {
        TextField("TextField Placeholder", text: $input)
            .textFieldStyle(
                .radix(
                    color: .grass,
                    iconImage: Image("quote", bundle: .module)
                )
            )
            .padding()
    }
}

#Preview {
    TextFieldDemoView()
}
