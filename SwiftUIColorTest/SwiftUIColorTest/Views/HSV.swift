//
//  HSV.swift
//  SwiftColorTest
//
//  Created by Zilin Zhu on 2021/2/19.
//

import SwiftUI

struct HSV: View {
    @State private var h: Angle = Angle(degrees: 120)
    @State private var s: Double = 0.5
    @State private var v: Double = 1
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
            SliderWithText(text: String(format: "v: %.2f", v),
                           value: $v,
                           range: 0...1,
                           sliderWidth: 250)
            SliderWithText(text: String(format: "opacity: %.2f", opacity),
                           value: $opacity,
                           range: 0...1,
                           sliderWidth: 250)
            Divider()
            ColorWithCode(code: String(format: "Color(h: %.0f°, s: %.2f, v: %.2f,\n      opacity: %.2f)",h.degrees, s, v, opacity),
                          color: Color(h: h, s: s, v: v, opacity: opacity))
        }
        .padding()
        .navigationTitle("HSV")
    }
}

struct HSV_Previews: PreviewProvider {
    static var previews: some View {
        HSV()
    }
}
