//
//  RGB.swift
//  SwiftColorTest
//
//  Created by Zilin Zhu on 2021/2/18.
//

import SwiftUI

struct RGB: View {
    @State private var r: Double = 255
    @State private var g: Double = 125
    @State private var b: Double = 0
    @State private var a: Double = 255
    
    var body: some View {
        VStack {
            SliderWithText(text: "r: \(Int(r))",
                           value: $r,
                           range: 0...255,
                           step: 1, sliderWidth: 280)
            SliderWithText(text: "g: \(Int(g))",
                           value: $g,
                           range: 0...255,
                           step: 1, sliderWidth: 280)
            SliderWithText(text: "b: \(Int(b))",
                           value: $b,
                           range: 0...255,
                           step: 1, sliderWidth: 280)
            SliderWithText(text: "a: \(Int(a))",
                           value: $a,
                           range: 0...255,
                           step: 1, sliderWidth: 280)
            Divider()
            ColorWithCode(code: "Color(r: \(Int(r)), g: \(Int(g)), b: \(Int(b)),\n      a: \(Int(a)))",
                          color: Color(r: Int(r), g: Int(g), b: Int(b), a: Int(a)))
            ColorWithCode(code: String(format: "Color(r: %.2f, g: %.2f, b: %.2f,\n      a: %.2f)", r / 255, g / 255, b / 255, a / 255),
                          color: Color(r: r / 255, g: g / 255, b: b / 255, a: a / 255))
        }
        .padding()
        .navigationTitle("RGB")
    }
}

struct RGB_Previews: PreviewProvider {
    static var previews: some View {
        RGB()
    }
}
