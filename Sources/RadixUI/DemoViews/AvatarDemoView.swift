//
//  AvatarDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 12/10/1403 AP.
//

import SwiftUI

struct AvatarDemoView: View {

    let url = URL(string: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde")

    var body: some View {
        VStack(spacing: 25) {
            RadixAvatar(
                url: url,
                name: "Amir Mohammadi",
                variant: .soft,
                size: .small,
                radius: .large,
                color: .gold
            )
            RadixAvatar(
                url: url,
                variant: .solid,
                size: .medium,
                radius: .none,
                color: .gold
            )
            Button {
                
            } label: {
                RadixAvatar(
                    url: url,
                    name: "Amir Mohammadi",
                    variant: .soft,
                    size: .large,
                    radius: .full,
                    color: .gold
                )
            }
            .buttonStyle(.radixCustom())
        }
    }
}

#Preview {
    AvatarDemoView()
}
