//
//  CMYK.swift
//  SwiftColorTest
//
//  Created by Zilin Zhu on 2021/2/18.
//

import SwiftUI

struct CMYK: View {
    @State private var c: Double = 0.15
    @State private var m: Double = 0.2
    @State private var y: Double = 0.5
    @State private var k: Double = 0.1
    
    var body: some View {
        VStack {
            SliderWithText(text: String(format: "c: %.2f", c),
                           value: $c, range: 0...1,
                           sliderWidth: 280)
            SliderWithText(text: String(format: "m: %.2f", m),
                           value: $m, range: 0...1,
                           sliderWidth: 280)
            SliderWithText(text: String(format: "y: %.2f", y),
                           value: $y, range: 0...1,
                           sliderWidth: 280)
            SliderWithText(text: String(format: "k: %.2f", k),
                           value: $k, range: 0...1,
                           sliderWidth: 280)
            Divider()
            ColorWithCode(code: String(format: "Color(c: %.2f, m: %.2f,\n      y: %.2f, k: %.2f)", c, m, y, k),
                          color: Color(c: c, m: m, y: y, k: k))
        }
        .padding()
        .navigationTitle("CMYK")
    }
}

struct CMYK_Previews: PreviewProvider {
    static var previews: some View {
        CMYK()
    }
}
