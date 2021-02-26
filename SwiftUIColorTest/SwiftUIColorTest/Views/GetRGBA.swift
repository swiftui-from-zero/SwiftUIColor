//
//  GetRGBA.swift
//  SwiftUIColorTest
//
//  Created by Zilin Zhu on 2021/2/26.
//

import SwiftUI

struct GetRGBA: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<colors.count) { i in
                    ColorWithCode(code: "Color." + colorNames[i], color: colors[i])
                    Text("r: \(Int(round(colors[i].components.r * 255))), g: \(Int(round(colors[i].components.g * 255))), b: \(Int(round(colors[i].components.b * 255)))")
                }
            }
        }
    }
    
    let colors: [Color] = [.red, .orange, .yellow, .green,
                           .blue, .purple, .pink, .gray,
                           .primary, .secondary]
    let colorNames: [String] = ["red", "orange", "yellow", "green",
                                "blue", "purple", "pink", "gray",
                                "primary", "secondary"]
}

struct GetRGBA_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GetRGBA()
            GetRGBA()
                .environment(\.colorScheme, .dark)
        }
    }
}
