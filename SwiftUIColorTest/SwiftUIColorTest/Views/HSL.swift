//
//  HSL.swift
//  SwiftColorTest
//
//  Created by Zilin Zhu on 2021/2/19.
//

import SwiftUI

struct HSL: View {
    @State private var h: Angle = Angle(degrees: 120)
    @State private var s: Double = 1
    @State private var l: Double = 0.75
    @State private var opacity: Double = 1
    
    var body: some View {
        VStack {
            SliderWithText(text: String(format: "h: %.0f°", h.degrees),
                           value: $h.degrees,
                           range: 0...360,
                           sliderWidth: 250)
            SliderWithText(text: String(format: "s: %.2f", s),
                           value: $s,
                           range: 0...1,
                           sliderWidth: 250)
            SliderWithText(text: String(format: "l: %.2f", l),
                           value: $l,
                           range: 0...1,
                           sliderWidth: 250)
            SliderWithText(text: String(format: "opacity: %.2f", opacity),
                           value: $opacity,
                           range: 0...1,
                           sliderWidth: 250)
            Divider()
            ColorWithCode(code: String(format: "Color(h: %.0f°, s: %.2f, l: %.2f,\n      opacity: %.2f)",h.degrees, s, l, opacity),
                          color: Color(h: h, s: s, l: l, opacity: opacity))
        }
        .padding()
        .navigationTitle("HSL")
    }
}

struct HSL_Previews: PreviewProvider {
    static var previews: some View {
        HSL()
    }
}
