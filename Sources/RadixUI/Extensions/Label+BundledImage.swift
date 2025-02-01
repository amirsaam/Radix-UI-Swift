//
//  Label+BundledImage.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/12/1403 AP.
//

import SwiftUI

struct ResizableBundledImage: View {

  let imageName: String
  let imageSize: CGFloat
  let bundle: Bundle

  var body: some View {
    Image(imageName, bundle: bundle)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: imageSize, height: imageSize)
  }
}

extension Label where Title == Text, Icon == ResizableBundledImage {
  init(_ title: LocalizedStringKey, imageName: String, imageSize: CGFloat, bundle: Bundle) {
    let titleView: () -> Text = { Text(title) }
    let iconView: () -> ResizableBundledImage = { ResizableBundledImage(imageName: imageName, imageSize: imageSize, bundle: bundle) }
    self.init(title: titleView, icon: iconView)
  }
}
