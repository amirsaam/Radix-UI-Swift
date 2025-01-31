//
//  RadixSoftLabel.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct RadixSoftLabel: LabelStyle {

    @Environment(\.isLoading) var isLoading

    private var isPressed: Bool
    private var isEnabled: Bool
    
    private var layout: RadixButtonLayout
    private var size: RadixButtonSize
    private var radius: RadixButtonRadius
    private var color: RadixAutoColor

    public func makeBody(configuration: Self.Configuration) -> some View {
        
    }

    @ViewBuilder
    private func icon(_ icon: LabelStyleConfiguration.Icon) -> some View {
        if isLoading.wrappedValue {
            ProgressView()
                .progressViewStyle(.circular)
        } else {
            icon
        }
    }
}
