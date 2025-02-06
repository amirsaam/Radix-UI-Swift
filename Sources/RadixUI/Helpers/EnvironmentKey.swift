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

fileprivate struct RadixSliderStyleKey: EnvironmentKey {
    static let defaultValue: AnyRadixSliderStyle = AnyRadixSliderStyle(RadixValueSliderStyle())
}

public extension EnvironmentValues {

    var isLoading: Binding<Bool> {
        get { self[LoadingKey.self] }
        set { self[LoadingKey.self] = newValue }
    }

    var radixSliderStyle: AnyRadixSliderStyle {
        get { self[RadixSliderStyleKey.self] }
        set { self[RadixSliderStyleKey.self] = newValue }
    }

}
