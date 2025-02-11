//
//  EnvironmentKey.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

fileprivate struct LoadingKey: EnvironmentKey {
    static let defaultValue: Binding<Bool> = .constant(false)
}

fileprivate struct RxSliderStyleKey: EnvironmentKey {    
    static let defaultValue: AnyRxSliderStyle = AnyRxSliderStyle(DefaultRxSliderStyle())
}

public extension EnvironmentValues {

    var isLoading: Binding<Bool> {
        get { self[LoadingKey.self] }
        set { self[LoadingKey.self] = newValue }
    }

    var rxSliderStyle: AnyRxSliderStyle {
        get { self[RxSliderStyleKey.self] }
        set { self[RxSliderStyleKey.self] = newValue }
    }

}
