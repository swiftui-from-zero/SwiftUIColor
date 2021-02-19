# SwiftUIColor

For so many times, I found some nice color and hope to add to my app, I found that `Color` in SwiftUI does not accept the colorspace... I have to type "XXX to Color Swift" in Google and go through those the stackoverflow answers for `UIColor` or Swift 3 that I don't need again and again.

That's why I start this project. A file that contains intuitive initializers for `Color` in SwiftUI. Supporting RGBA, Hex, HSL, HSV and CMKY color space at the moment.

Simply copy the `Color.swift` to your project to use them :)

## RGB

```swift
// `r`, `g`, `b`, `a` in [0, 1].
Color(r: Double, g: Double, b: Double, a: Double = 1)
// `r`, `g`, `b`, `a` in [0, 255].
Color(r: Int, g: Int, b: Int, a: Int = 255)
```

## Hex

```swift
// `hex` should start with "#". It can be 6 digit like "#ABC123" or 3 digit like "#ABC".
// When the hex string is of invalid format, the initializer will throw
// `ColorInitError.hexStringErrorFormatted`.
// It is case-insensitive, you could use "#FFFfff".
// `opacity` in [0, 1].
Color(hex: String, opacity: Double = 1) throws
```

## HSL

```swift
// `h` is an `Angle` variable as custom.
// `s`, `l`, `opacity` in [0, 1].
Color(h: Angle, s: Double, l: Double, opacity: Double = 1)
```

## HSV

```swift
// `h` is an `Angle` variable as custom.
// `s`, `v`, `opacity` in [0, 1].
Color(h: Angle, s: Double, v: Double, opacity: Double = 1)
```

## CMYK

```swift
// `c`, `m`, `y`, `k`, `opacity` in [0, 1]
Color(c: Double, m: Double, y: Double, k: Double, opacity: Double = 1)
```

