//
//  ResizableBundledImage.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

public struct ResizableBundledImage: View {

    let imageName: String
    let imageSize: CGFloat
    let bundle: Bundle

    public var body: some View {
        Image(imageName, bundle: bundle)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: imageSize, height: imageSize)
    }

}
