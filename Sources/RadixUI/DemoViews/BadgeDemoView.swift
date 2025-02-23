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
                    .radixBadge(variant: .outline, radius: .none, color: .blue)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .outline, radius: .large)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .outline, radius: .full, color: .orange)
            }
            HStack(spacing: 20) {
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .soft, radius: .none, color: .blue)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .soft, radius: .large)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .soft, radius: .full, color: .orange)
            }
            HStack(spacing: 20) {
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .solid, radius: .none, color: .blue)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .solid, radius: .large)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .solid, radius: .full, color: .orange)
            }
            HStack(spacing: 20) {
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .surface, radius: .none, color: .blue)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .surface, radius: .large)
                Text(new)
                    .font(.footnote)
                    .radixBadge(variant: .surface, radius: .full, color: .orange)
            }
        }
    }

}

#Preview {
    BadgeDemoView()
}
