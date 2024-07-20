//
//  File.swift
//  
//
//  Created by Amir Mohammadi on 4/30/1403 AP.
//

import Foundation
import SwiftUI
import SVGView

// MARK: - Make RadixUI assets available to client app
public extension Bundle {
    static let radixUI: Bundle = {
        // The actual bundle name observed in the build output
        let bundleName = "RadixUI-Swift_RadixUI-Swift"

        // Construct the URL for the bundle
        guard let bundleURL = Bundle.main.bundleURL
            .appendingPathComponent(
                bundleName + ".bundle"
            ) as URL? else { return Bundle.main }

        // Load the bundle
        return Bundle(url: bundleURL) ?? Bundle.main
    }()
}

// MARK: - SwiftUI Extensions

/// Make `Label` accept a `bundle` input just like how `Image` does but use `SVGView` instead of it.
public extension Label where Title == Text, Icon == SVGView {
    init(_ title: LocalizedStringKey, svgName: String, bundle: Bundle, size: CGFloat) {
        // Define a closure that returns a Text view
        let titleView: () -> Text = { Text(title) }
        
        // Define a closure that returns an SVGView view
        let iconView: () -> SVGView = {
            return SVGView(contentsOf: bundle.url(forResource: svgName, withExtension: "svg")!)
        }
        
        // Initialize the Label with the closures
        self.init(title: titleView, icon: iconView)
    }
}
