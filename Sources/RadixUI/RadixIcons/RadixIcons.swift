//
//  File.swift
//  
//
//  Created by Amir Mohammadi on 4/30/1403 AP.
//

import Foundation

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
