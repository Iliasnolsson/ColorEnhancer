ColorEnhancer
=============

ColorEnhancer is a Swift package designed to simplify and enhance the process of working with colors in your iOS applications. It provides a set of powerful structures, enums, and protocols to work with colors in different formats, including RGBA, HSBA, and RGB. ColorEnhancer also supports dynamic colors for different themes, like light and dark mode, and offers convenient extensions for UIColor.

Features
--------

*   Define colors in RGBA, HSBA, and RGB formats
*   Easily convert between different color formats
*   Manage and retrieve colors based on light and dark themes
*   Convenient UIColor extensions for handling colors
*   Codable support for RGB and HSBA colors

Installation
------------

### Swift Package Manager

Add the following dependency to your `Package.swift` file:

```swift
.package(url: "https://github.com/Iliasnolsson/ColorEnhancer", "1.0.0"..<"2.0.0")
```

Then, add `ColorEnhancer` to your target dependencies:

```swift
.target(name: "YourTarget", dependencies: ["ColorEnhancer"]),
```

Usage
-----

### Basic Color Formats

ColorEnhancer offers several structures for defining colors in different formats.

#### RGBA

```swift
let redColor = RGBA(r: 1, g: 0, b: 0, a: 1)
```

#### HSBA

```swift
let greenColor = HSBA(h: 120/360, s: 1, b: 1, a: 1)
```

#### RGB


```swift
let blueColor = RGB(r: 0, g: 0, b: 1)
```

### Converting Between Color Formats

You can easily convert between different color formats using the provided methods.

```swift
let redColor = RGBA(r: 1, g: 0, b: 0, a: 1)
let redColorHSBA = redColor.hsba() // Convert to HSBA
let redColorRGB = redColor.rgb() // Convert to RGB
```

### Dynamic Colors

ColorEnhancer allows you to create dynamic colors that change based on the current theme (light or dark).

```swift
let dynamicColor = DynamicColor(
    .light(RGBA(r: 1, g: 1, b: 1, a: 1)),
    .dark(RGBA(r: 0, g: 0, b: 0, a: 1))
)

// Get the color for the current theme as RGBA
let currentRgba = dynamicColor.rgba()

// Get the color for the current theme as HSBA
let currentHsba = dynamicColor.hsba()

// Get the color for the current theme as UIColor
// This UIColor automatically changes wherever used (such as a backgroundColor)
// when the theme changes
let currentColor = dynamicColor.uiColor()

```

### UIColor Extensions

ColorEnhancer provides convenient extensions for working with UIColor.

```swift
let uiColor = UIColor.red

// Convert to RGBA
let rgbaColor = uiColor.rgba()

// Get the UIColor instance
let uiColorInstance = rgbaColor.uiColor()

// Get the CGColor instance
let cgColorInstance = rgbaColor.cgColor()
```

License
-------

ColorEnhancer is available under the MIT license. See the [LICENSE](LICENSE) file for more information.
