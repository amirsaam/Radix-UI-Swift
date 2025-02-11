//
//  DefaultRxSliderStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/21/1403 AP.
//

import SwiftUI

public struct DefaultRxSliderStyle: RxSliderStyle {

    public init() {}

    public func makeThumb(configuration: Configuration) -> some View {
        ZStack {
            Circle()
                .stroke(RadixAutoColor.gray.border2, lineWidth: 2)
                .background(.clear)
                .frame(width: 20, height: 20)
            if configuration.isActive {
                Circle()
                    .fill(RadixAutoColor.blackA.component3)
                    .frame(width: 27.5, height: 27.5)
            }
            Circle()
                .fill(RadixAutoColor.whiteA.text2)
                .frame(width: 20, height: 20)
        }
    }

    public func makeTrack(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            Capsule()
                .fill(RadixAutoColor.gray.component2)
                .frame(height: 8)
            Capsule()
                .stroke(RadixAutoColor.gray.border2, lineWidth: 1)
                .background(.clear)
                .frame(height: 8)
            Capsule()
                .fill(RadixAutoColor.indigo.solid2)
                .frame(width: CGFloat(configuration.filledPercentage), height: 8)
        }
        .opacity(configuration.isDisabled ? 0.6 : 1.0)
    }

}
