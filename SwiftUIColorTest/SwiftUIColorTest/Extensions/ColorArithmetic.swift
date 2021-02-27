//
//  Created by Zilin Zhu.
//  https://github.com/swiftui-from-zero/SwiftUIColor
//

import SwiftUI

extension Color {
    static func +(_ background: Color, _ foreground: Color) -> Color {
        let f = foreground.components
        let b = background.components
        
        let over = { (c1: Double, a1: Double, c2: Double, a2: Double) -> Double in
            (c1 * a1 + c2 * a2 * (1 - a1)) / (a1 + a2 * (1 - a1))
        }
        
        return Color(r: over(f.r, f.a, b.r, b.a),
                     g: over(f.g, f.a, b.g, b.a),
                     b:  over(f.b, f.a, b.b, b.a),
                     a: f.a + b.a * (1 - f.a))
    }

    static func *(_ foreground: Color, _ background: Color) -> Color {
        let f = foreground.components
        let b = background.components
        return Color(r: b.r * f.r,
                     g: b.g * f.g,
                     b:  b.b * f.b,
                     a: 1.0)
    }

    static prefix func -(_ color: Color) -> Color {
        let c = color.components
        return Color(r: 1 - c.r, g: 1 - c.g, b: 1 - c.b, a: c.a)
    }
}
