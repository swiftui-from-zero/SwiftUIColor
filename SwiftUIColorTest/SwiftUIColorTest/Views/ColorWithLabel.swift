//
//  ColorWithLabel.swift
//  SwiftUIColorTest
//
//  Created by Zilin Zhu on 2021/2/19.
//

import SwiftUI

struct ColorWithCode: View {
    let label: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.custom("CourierNewPS-BoldMT", size: 18))
                
            Color(h: h, s: s, v: v, opacity: opacity)
        }
    }
}
