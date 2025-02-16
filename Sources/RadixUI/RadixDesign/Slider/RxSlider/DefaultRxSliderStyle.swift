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
                .radixShapeBorderApplier(
                    color: RadixAutoColor.gray.border2,
                    width: 20, height: 20
                )
            if configuration.isActive {
                Circle()
                    .radixShapeFillApplier(
                        color: RadixAutoColor.blackA.component3,
                        width: 27.5, height: 27.5
                    )
            }
            Circle()
                .radixShapeFillApplier(
                    color: RadixAutoColor.whiteA.text2,
                    width: 20, height: 20
                )
        }
    }

    public func makeTrack(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            Capsule()
                .radixShapeFillApplier(
                    color: RadixAutoColor.gray.component2,
                    width: nil, height: 8
                )
            Capsule()
                .radixShapeBorderApplier(
                    color: RadixAutoColor.gray.border2,
                    width: nil, height: 8
                )
            Capsule()
                .radixShapeFillApplier(
                    color: RadixAutoColor.indigo.solid2,
                    width: CGFloat(configuration.filledPercentage),
                    height: 8
                )
        }
        .opacity(configuration.isDisabled ? 0.6 : 1.0)
    }

}
