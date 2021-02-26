//
//  Created by Zilin Zhu.
//  https://github.com/swiftui-from-zero/SwiftUIColor
//

import SwiftUI

extension Color {
    // MARK: RGB initalizers
    init(r: Double, g: Double, b: Double, a: Double = 1) {
        self.init(red: r, green: g, blue: b, opacity: a)
    }

    init(r: Int, g: Int, b: Int, a: Int = 255) {
        self.init(red: Double(r) / 255, green: Double(g) / 255,
                  blue: Double(b) / 255, opacity: Double(a) / 255)
    }

    // MARK: HSV initializers
    init(h: Angle, s: Double, v: Double, opacity: Double = 1) {
        self.init(hue: h.degrees / 360, saturation: s, brightness: v, opacity: opacity)
    }

    // MARK: HSL initializers
    init(h: Angle, s: Double, l: Double, opacity: Double = 1) {
        let v = l + s * min(l, 1 - l)
        self.init(h: h, s: v == 0 ? 0 : 2 * (1 - l / v), v: v, opacity: opacity)
    }

    // MARK: CMYK initializers
    init(c: Double, m: Double, y: Double, k: Double, opacity: Double = 1) {
        let r = 1.0 - c * (1.0 - k) - k
        let g = 1.0 - m * (1.0 - k) - k
        let b = 1.0 - y * (1.0 - k) - k
        self.init(r: r, g: g, b: b, a: opacity)
    }

    // MARK: HEX initializers
    init(hex: String, opacity: Double = 1) throws {
        guard hex.count == 7 || hex.count == 4 else {
            throw ColorInitError.hexStringErrorFormatted
        }
        guard hex.hasPrefix("#") else {
            throw ColorInitError.hexStringErrorFormatted
        }

        var tmp: UInt64 = 0
        Scanner(string: String(hex.dropFirst())).scanHexInt64(&tmp)
        print(tmp)
        let r, g, b: Int
        if hex.count == 4 {
            r = (Int(tmp) & 0xF00) >> 8 * 0x11
            g = (Int(tmp) & 0x0F0) >> 4 * 0x11
            b = (Int(tmp) & 0x00F) * 0x11
            print(r, g, b)
        } else {
            r = (Int(tmp) & 0xFF0000) >> 16
            g = (Int(tmp) & 0x00FF00) >> 8
            b = (Int(tmp) & 0x0000FF)
        }
        self.init(r: r, g: g, b: b)
    }

    // MARK: Errors
    enum ColorInitError: Error {
        case hexStringErrorFormatted
    }

    // MARK: Get RGBA
    // From stackoverflow
    // https://stackoverflow.com/a/62994482/5163915
    var components: (r: Double, g: Double, b: Double, a: Double) {
        #if canImport(UIKit)
        typealias NativeColor = UIColor
        #elseif canImport(AppKit)
        typealias NativeColor = NSColor
        #endif

        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        guard NativeColor(self).getRed(&r, green: &g, blue: &b, alpha: &a) else {
            // You can handle the failure here as you want
            return (0, 0, 0, 0)
        }

        return (Double(r), Double(g), Double(b), Double(a))
    }
}
