# RadixUI-Swift
> Radix-UI is an open source library optimized for fast development, easy maintenance, and accessibility.

[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url]

Since [Radix-UI](https://www.radix-ui.com) developers said it is not available to Mobile Development (like SwiftUI) and never be ([reference](https://github.com/radix-ui/themes/issues/522)), I decided to make it ready for myself to use it because I just like it so much.
My inspiration for doing it is [Basics](https://swiftuibasics.com) website and the minimal and gorgeous design of Radix-UI.

## Installation

Add this project on your `Package.swift`

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .package(url: "https://github.com/amirsaam/RadixUI-Swift.git", from: "0.8.00"),
    ]
)
```

## Usage example


Surely import the package
```swift
import RadixUI
```

Use colors as any other colors
```swift
Text("RadixUI-Swift")
  .foregroundColor(.crimson1)
```

In order to use your own custom color pallete head to [Radix Pallete Generator](https://www.radix-ui.com/colors/custom) and create your pallete and then use color hexes to have your own pallete with the following code:
```swift
public extension Color {
    static let colorExampleSolid = Color(lightHex: "lightSixDigitHex", darkHex: "darkSixDigitHex")
    static let colorExampleAlpha = Color(lightHex: "lightEightDigitHex", darkHex: "darkEightDigitHex")
}
```

Use icons in `Image` with bundle name completely customisable
```swift
Image("github-logo", bundle: .radixUI)
  .resizable()
  .aspectRatio(contentMode: .fit)
  .frame(width: anySize, height: anySize)
  .foregroundColor(.ruby1)
```
Or, make some custom extension to use `Label`
```swift
struct SVGImage: View {
  let imageName: String
  let bundle: Bundle
  let size: CGFloat
  var body: some View {
    Image(imageName, bundle: bundle)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: size, height: size)
  }
}

extension Label where Title == Text, Icon == SVGImage {
  init(_ title: LocalizedStringKey, image: String, bundle: Bundle, size: CGFloat) {
    let titleView: () -> Text = { Text(title) }
    let iconView: () -> SVGImage = { SVGImage(imageName: image, bundle: bundle, size: size) }
    self.init(title: titleView, icon: iconView)
  }
}
```

## To Do

Any PRs are welcomed:
- [x] Add [Radix Colors](https://github.com/radix-ui/colors)
- [x] Add [Radix Icons](https://github.com/radix-ui/icons)
- [ ] Add [Radix Primitives](https://github.com/radix-ui/primitives) (WIP)
- [ ] Add [Radix Themes](https://github.com/radix-ui/themes) (WIP)
- [x] Make a macOS ready version
- [ ] Write Xcode Tests
- [ ] Make Pod
- [x] Deploy Github Action

## Dependencies 

- RadixUI-Swift has no dependency

## Meta

Amir Mohammadi – [@amirsaam](https://twitter.com/amirsaam) – amirsaam [at] me [dot] com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/amirsaam/RadixUI-Swift](https://github.com/amirsaam/RadixUI-Swift)

## Credits

- [@WorkOS](https://github.com/workos) for [Radix-UI](https://github.com/radix-ui)

[swift-image]:https://img.shields.io/badge/swift-5.4-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
