//
//  SliderWithText.swift
//  SwiftUIColorTest
//
//  Created by Zilin Zhu on 2021/2/19.
//

import SwiftUI

struct SliderWithText: View {
    let text: String
    @Binding var value: Double
    let range: ClosedRange<Double>
    var step: Double? = nil
    let sliderWidth: CGFloat

    var body: some View {
        HStack {
            Text(text)
            Spacer()
            if let step = step {
                Slider(value: $value, in: range, step: step)
                    .frame(maxWidth: sliderWidth)
            } else {
                Slider(value: $value, in: range)
                    .frame(maxWidth: sliderWidth)
            }
        }
    }
}
