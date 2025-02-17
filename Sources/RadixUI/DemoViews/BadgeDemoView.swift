//
//  BadgeDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/28/1403 AP.
//

import SwiftUI

struct BadgeDemoView: View {

    let new = "New"

    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .outline, radius: .none, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .outline, radius: .large, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .outline, radius: .full, color: .grass)
            }
            HStack(spacing: 20) {
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .soft, radius: .none, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .soft, radius: .large, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .soft, radius: .full, color: .grass)
            }
            HStack(spacing: 20) {
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .solid, radius: .none, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .solid, radius: .large, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .solid, radius: .full, color: .grass)
            }
            HStack(spacing: 20) {
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .surface, radius: .none, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .surface, radius: .large, color: .grass)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .surface, radius: .full, color: .grass)
            }
        }
    }

}

#Preview {
    BadgeDemoView()
}
