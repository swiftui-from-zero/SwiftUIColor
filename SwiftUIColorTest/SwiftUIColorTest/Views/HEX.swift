//
//  HEX.swift
//  SwiftColorTest
//
//  Created by Zilin Zhu on 2021/2/18.
//

import SwiftUI

struct HEX: View {
    @State var hex: String = "#4287f5"
    var color: Color? {
        let c: Color?
        do {
            c = try Color(hex: hex)
        } catch {
            c = nil
        }
        return c
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Input:")
                TextField("hex", text: $hex)
            }
            Divider()
            VStack(alignment: .leading) {
                Text("Color(hex: \"\(hex)\")")
                    .font(.custom("CourierNewPS-BoldMT", size: 18))
                if let color = color {
                    color
                } else {
                    ZStack {
                        Color.gray
                        Text("\"\(hex)\" is an invalid hex string")
                    }
                }
            }
        }
        .padding()
        .navigationTitle("HEX")
    }
}

struct HEX_Previews: PreviewProvider {
    static var previews: some View {
        HEX()
    }
}
