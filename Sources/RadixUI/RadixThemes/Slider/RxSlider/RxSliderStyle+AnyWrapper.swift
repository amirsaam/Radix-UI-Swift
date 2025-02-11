//
//  AnyRXSliderStyle.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/21/1403 AP.
//

import SwiftUI

public struct AnyRxSliderStyle: RxSliderStyle {

    private let _makeThumb: (Configuration) -> AnyView
    private let _makeTrack: (Configuration) -> AnyView

    public init<S: RxSliderStyle>(_ style: S) {
        self._makeThumb = style.makeThumbTypeErased
        self._makeTrack = style.makeTrackTypeErased
    }

    public func makeThumb(configuration: Configuration) -> some View {
        self._makeThumb(configuration)
    }

    public func makeTrack(configuration: Configuration) -> some View  {
        self._makeTrack(configuration)
    }

}
