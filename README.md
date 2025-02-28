# RadixUI-Swift
> Radix-UI is an open source library optimized for fast development, easy maintenance, and accessibility.

[![Swift Version][swift-image]][swift-url]
[![Last Release][latest-tag-image]][releases-url]
[![Last Stable Release][latest-stable-image]][releases-url]
[![Last Commit Date][last-commit-image]][commits-url]
[![Contributors][contributors-image]][contributors-url]
![Stars][stars-image]
![Forks][forks-image]
[![License][license-image]][license-url]

Since [Radix-UI](https://www.radix-ui.com) developers said it is not available to Mobile Development (like SwiftUI) and never be ([reference](https://github.com/radix-ui/themes/issues/522)), I decided to make it ready for myself to use it because I just like it so much.
My inspiration for doing it is [Basics](https://swiftuibasics.com) website and the minimal and gorgeous design of Radix-UI.

## Installation

1. In Xcode, go to your Package Dependencies
2. Put `https://github.com/amirsaam/Radix-UI-Swift.git` in Searchbar
3. Change `Dependency Rule` to `Up to Next Minor Version`
4. Set the lowest version to your desired version
5. Press the `Add Package` button

## Why `Minor`?

Since RadixUI for Swift will not have any breaking Semantic's Minor version, it is versioned as `Epoch.Major.Minor * 100 + Patch` if it could've, it should've been vice versa as `Epoch * 100 + Major`, as result to get the correct behaviour as Semantic Versioning, choosing the `Up to Next Minor Version` is the way to go.

## Usage example

Import the package in any place you want to use it as:
```swift
import RadixUI
```

### Colors
You can use Radix Colors in 2 ways:
```swift
Text("RadixUI-Swift")
  .foregroundColor(.crimson9) // Directly
```
or
```swift
private var color: RadixAutoColor = .crimson

Text("RadixUI-Swift")
  .foregroundColor(color.solid9) // From RadixAutoColor Enum
```

In order to use your own custom color pallete head to [Radix Pallete Generator](https://www.radix-ui.com/colors/custom) and create your pallete and add them to your Asset Catalogue in 12 level named in this way for example: MyColor1, MyColor2, MyColor3, MyColor4, MyColor5, ... MyColor12 then using RadixAutoColor's `.custom` property:
```swift
private var color: RadixAutoColor = .custom("myColor")
// Reads all 12 levels of your custom pallete using the color's child variables.
// It will automatically capitalize the first letter for you.

Text("RadixUI-Swift")
  .foregroundColor(color.solid9)
```

**Important Note**: All RadixUI modifiers and styles are using `RadixAutoColor` enum

**Most Important Note**: All Radix theme styles have a default dynamic Black on Light ColorScheme and White on Dark ColorScheme, so

**DO NOT PASS `.whiteA` or `.blackA` TO RADIX MODIFIERS**

### Icons
Use icons in `Image` with bundle name completely customizable in two ways
```swift
// Default SwiftUI's Image
Image("github-logo", bundle: .radixUI)
  .resizable()
  .aspectRatio(contentMode: .fit)
  .frame(width: anySize, height: anySize)
  .foregroundColor(.ruby9)

// Built-in Custom Extension
ResizableBundledImage(imageName: "vercel-logo", imageSize: 20, bundle: .radixUI)
  .foregroundColor(.ruby9)
```
For using in `Label` use the built-in extension that uses `ResizableBundledImage`:
```swift
Label("Vercel", imageName: "vercel-logo", imageSize: 20, bundle: .radixUI)
```

### Avatar
To create an Radix-themed Avatar loader you can use this View that loads the image from url using built-in SwiftUI's `AsyncImage`:
```swift
// for person's name abbreviation placeholder/fallback, it will automatically abbreviate the full name
RadixAvatar(
    url: URL(string: "urlToImage"),
    name: "Passed Name",
    variant: .soft,
    size: .small,
    radius: .large,
    color: .grass
)
// or for person icon placeholder/fallback
RadixAvatar(
    url: URL(string: "urlToImage"),
    variant: .solid,
    size: .medium,
    radius: .none,
    color: .grass
)

// variant: soft, solid
// size: small, medium, large
// radius: none, large, full
```

### Badge
You can tranform any Text into a RadixUI badge:
```swift
Text("New")
    .font(.footnote)
    .radixBadge(variant: .outline, radius: .none, color: .grass)
// variant: outline, soft, solid, surface
// radius: none, large, full
```

### Button
RadixUI does have multiple ButtonStyles as: radixGhost, radixOutline, radixSoft, radixSolid and radixSurface

**Note 1**: RadixUI buttons can have a loading state after press that does change the Button label's icon into a progress view until the boolean becomes `false` again.
Examples:
```swift
@State private var isLoading = false

// Surely you can go for < Button {} label: {} > approach too!
Button(action: functionName) {
    // Best for using Label with RadixUI icons
    Label(LocalizedStringKey, imageName: String, imageSize: CGFloat, bundle: Bundle)
    // or create one
    Label {
        Text(LocalizedStringKey)
    } icon: {
        Image(String)
        Image(systemName: String)
        Image(String, bundle: Bundle?)
    }
    // or to use Asset Catalog Image and SFSymbols
    Label(LocalizedStringKey, image: String)
    Label(LocalizedStringKey, systemImage: String)
}
.buttonStyle(
// for having the similarity to RadixUI buttons like scale and opacity and etc;
// does not change anything of the button but adds some effects.
    .radixCustom()
// or
    .radixGhost(
        layout: .leading,
        radius: .large,
        color: .grass
    ),
    isLoading: $isLoading
// or
    .radixOutline(
        layout: .leading,
        radius: .large,
        color: .grass
    ),
    isLoading: $isLoading
// or
    .radixSoft(
        layout: .leading,
        radius: .large,
        color: .grass
    ),
    isLoading: $isLoading
// or
    .radixSolid(
        layout: .leading,
        radius: .large,
        color: .grass
    ),
    isLoading: $isLoading
// or
    .radixSurface(
        layout: .leading,
        radius: .large,
        color: .grass
    ),
    isLoading: .constant(false) // for disabling the loading state change
)
// layout: icon, title, leading, trailing
// radius: none, large, full
```
**Note 2**: Always pass a Label() as label of the button, do not pass Text or Image only, if you want only one of them use the `layout` variable's `.icon` or `.title` cases.

### Callout
You can tranform any Text into a RadixUI callout:
```swift
let infoText = "You will need admin privileges to install and access this application."
let alertText = "Access denied. Please contact the network administrator to view this page."

Text(infoText)
    .radixInfoCallout(variant: .surface, color: .grass) // info callout, customizable color, `info-circled` icon

Text(alertText)
    .radixAlertCallout(variant: .surface) // alert callout, red color, `exclamation-triangle` icon

// variant: outline, soft, surface
```

### RadioGroup
Under the hood it is just a looped Toggle but, it only allows one toggle to be on in the same time, needs to get passed an array of options that their model conforms to certain protocols
```swift
// the radio option data options should conform to these protocols
struct Option: Identifiable, Equatable {
    let id = UUID()
    let title: LocalizedStringKey
}

@State private var selectedOption: Option? = nil
private let options = [
    Option(title: "Option 1"),
    Option(title: "Option 2"),
    Option(title: "Option 3")
]

RadixRadioGroup(
    options: options, // pass the array of data options
    selected: $selectedOption, // bound of selected option
    style: (variant: .surface, layout: .trailing, color: .grass)
) {
// what the options should show as label
    Text($0.title)
        .foregroundStyle(.grass12)
}
// variant: .soft, surface
// layout: .leading, .trailing
```

### SegmentedControl
For customizing Segmented Picker of SwiftUI to match Radix style create an `init` in `@main` struct of the app to apply it globally or just apply such `init` in any view you want: 
```swift
struct PickerDemoView: View {

    init() {
        RadixSegmentedPicker(
            color: .grass,
            selectedFont: .systemFont(ofSize: 15, weight: .semibold),
            notSelectedFont: .systemFont(ofSize: 15, weight: .light)
        )
    }

    @State private var selected: RadixToggleType = .switch

    var body: some View {
        Picker(String(""), selection: $selected) {
            Text("Checkbox").tag(RadixToggleType.checkbox)
            Text("Radio").tag(RadixToggleType.radio)
            Text("Switch").tag(RadixToggleType.switch)
            Text("Toggle").tag(RadixToggleType.toggle)
            
        }
        .pickerStyle(.segmented)
        .padding()
        .frame(width: 400)
    }
}
```
**Important Note**: It does not work in macOS yet!

### Slider
Since SwiftUI's Slider does not accept styles like how button does, RadixUI for Swift has it's own RadixSlider View:
```swift
@State private var value = 5.0

RadixSlider(value: $value, step: 1, in: 0...10)
    .rxSliderStyle(
        .radixSoft(
            radius: .full,
            size: .medium,
            color: .grass
        )
// or
        .radixSurface(
            radius: .full,
            size: .medium,
            color: .grass
        )
    )
// radius: .none, .large, .full
// size: small, medium, large

```

### TextField
RadixUI for Swift TextFieldStyle just like ButtonStyle has a loading state that transforms `iconLabel` into a ProgressView also can have a action passing a function into it with or without a button that will show `iconButton` in trailing side that follows textfieldstyle's styling.
```swift
@State private var input = ""
@State private var isLoading = false

TextField("Placeholder1", text: $input)
    .textFieldStyle(
        .radixSurface(
            radius: .large,
            color: .grass, // optional, default .blue
            iconLabel: Image("quote", bundle: .radixUI), // optional
            iconButton: Image("arrow-right", bundle: .radixUI), // optional
            action: functionName // optional action, does provide .onSubmit by default to textfield
        ),
        isLoading: $isLoading
// or
        .radixSoft(
            radius: .large,
            color: .grass, // optional, default .blue
            iconLabel: Image("quote", bundle: .radixUI),  // optional image
            iconButton: Image("arrow-right", bundle: .radixUI),  // optional image
            action: functionName  // optional action, does provide .onSubmit by default to textfield
        ),
        isLoading: $isLoading
    )
// radius: .none, .large, .full
```

### Toast
This package has a toast or in-app notification functionality with RadixUI style following Apple Design Guidelines. It does get triggered by a `Binding<Bool>` variable, can have action button as a CTA or just a dismiss button, can be swiped to top or bot based on toast showing location.
```swift
@State private var presentInfoToast = false
@State private var presentActionToast = false

var body: some View {
    VStack { // << this is the highest container in the view, toast should applied to it
        HStack {

        }
    }
    .radixInfoToast( // this is a info toast, action is dismiss
        $presentInfoToast,
        variant: .surface,
        position: .bottom,
        color: .grass,
        duration: 3 // 0 == never, any other number auto dismisses the toast after the given number in seconds
    ) {
        Label(
            "This is a Radix Info Toast",
            imageName: "vercel-logo",
            imageSize: 20,
            bundle: .module
        ) // << pass a label to this part just like how explained in button part of this readme
    }
    .radixActionToast( // this is a action toast, you should define an action for it
        $presentActionToast,
        variant: .soft,
        position: .top,
        color: .grass,
        duration: 0
    ) {
        presentInfoToast = true // define the action you wnat here or just pass a function
    } buttonLabel: {
        Label(
            "Ignored Text",
            imageName: "avatar",
            imageSize: 20,
            bundle: .radixUI
        ) // pass a label as before for the button of the action, only shows the icon
    } toastLabel: {
        Label(
            "Button Presents Info Toast",
            imageName: "vercel-logo",
            imageSize: 20,
            bundle: .radixUI
        ) // pass a label as the toast's main content
    }
}
// variant: .soft, .surface
// position: .bottom, .top
```

### Toggle
RadixUI has 4 types of toggle styles, one of them is `radixRadio` that has been skipped in this part because its mainly used in `RadixRadioGroup` and using it as a togglestyle on one item is not a good approach
```swift
Toggle(isOn: $toggleBinding) {
    ResizableBundledImage( // showed after toggle (checkbox( has been turned on (checked)
        imageName: "check",
        imageSize: 20,
        bundle: .radixUI
    )
}
.toggleStyle(
    .radixCheckbox(
        variant: .surface,
        color: .grass
    )
)
Toggle(isOn: $toggleBinding) {
    Text("Label Text")
        .foregroundStyle(radixColor.grass.text2)
}
.toggleStyle(
    .radixSwitch( // a switch style, just like swiftui's default with styling of radix ui
        variant: .surface,
        radius: .full,
        color: .grass
    )
)
Toggle(isOn: $toggleBinding) {
    ResizableBundledImage(
        imageName: "font-italic",
        imageSize: 20,
        bundle: .radixUI
    )
}
.toggleStyle(
    .radixToggle( // toggle as toggle, dimmer color when off, strong color when on
        color: .grass
    )
)
// variant: .soft, .surface
// radius: .none, .large, .full
```

### Shadow
Radix Shadows are available as `ViewModifier` in 6 level:
```swift
AnyView
.radixShadow1()
.radixShadow2()
.radixShadow3()
.radixShadow4()
.radixShadow5()
.radixShadow6()
```

## To Do

Main:
- [x] Add [Radix Colors](https://github.com/radix-ui/colors)
- [x] Add [Radix Icons](https://github.com/radix-ui/icons)
- [ ] Complete [Radix Themes](https://github.com/radix-ui/themes) (WIP, surely all of them are not suitable)

Help needed on these, any PR is welcomed:
- [ ] Add Ranged Slider (Two Thumbs)
- [ ] Add `classic` variant for components that have it
- [ ] Add [Progress Bar](https://www.radix-ui.com/themes/docs/components/progress)
- [ ] Add [Skeleton](https://www.radix-ui.com/themes/docs/components/skeleton)
- [ ] Improve [Shadows](https://www.radix-ui.com/themes/docs/theme/shadows)

## Dependencies 

- RadixUI-Swift has no dependency

## Meta

Amir Mohammadi – [@amirsaam](https://twitter.com/amirsaam) – amirsaam [at] me [dot] com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/amirsaam/RadixUI-Swift](https://github.com/amirsaam/RadixUI-Swift)

## Credits

- [@WorkOS](https://github.com/workos) for [Radix-UI](https://github.com/radix-ui)


[swift-image]: https://badgen.net/static/Swift/5.5/orange
[swift-url]: https://swift.org/

[latest-tag-image]: https://badgen.net/github/tag/amirsaam/radix-ui-swift
[latest-stable-image]: https://badgen.net/github/release/amirsaam/Radix-UI-Swift/stable
[releases-url]: https://github.com/amirsaam/Radix-UI-Swift/releases

[last-commit-image]: https://badgen.net/github/last-commit/amirsaam/Radix-UI-Swift
[commits-url]: https://github.com/amirsaam/Radix-UI-Swift/commits/main/

[contributors-image]: https://badgen.net/github/contributors/amirsaam/Radix-UI-Swift
[contributors-url]: https://github.com/amirsaam/Radix-UI-Swift/graphs/contributors

[stars-image]: https://badgen.net/github/stars/amirsaam/Radix-UI-Swift
[forks-image]: https://badgen.net/github/forks/amirsaam/Radix-UI-Swift

[license-image]: https://badgen.net/github/license/amirsaam/Radix-UI-Swift
[license-url]: LICENSE
