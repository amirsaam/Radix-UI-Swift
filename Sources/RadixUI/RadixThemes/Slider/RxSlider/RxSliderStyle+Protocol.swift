//
//  RxSliderStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/18/1403 AP.
//

import SwiftUI

public protocol RxSliderStyle {

    associatedtype Thumb: View
    associatedtype Track: View

    typealias Configuration = RxSliderStyleConfiguration

    @ViewBuilder @MainActor @preconcurrency
    func makeThumb(configuration:  Configuration) -> Self.Thumb
    
    @ViewBuilder @MainActor @preconcurrency
    func makeTrack(configuration:  Configuration) -> Self.Track

}

public extension RxSliderStyle {

    func makeThumbTypeErased(configuration:  Configuration) -> AnyView {
        AnyView(self.makeThumb(configuration: configuration))
    }

    func makeTrackTypeErased(configuration:  Configuration) -> AnyView {
        AnyView(self.makeTrack(configuration: configuration))
    }

}

#warning("TODO: Use this protocol to make RadixRangedSlider")
public protocol RxRangeSliderStyle: RxSliderStyle {

    associatedtype SecondThumb: View

    @ViewBuilder @MainActor @preconcurrency
    func makeSecondThumb(configuration: Configuration) -> Self.SecondThumb

}

public extension RxRangeSliderStyle {

    func makeSecondThumbTypeErased(configuration:  Configuration) -> AnyView {
        AnyView(self.makeSecondThumb(configuration: configuration))
    }

}
