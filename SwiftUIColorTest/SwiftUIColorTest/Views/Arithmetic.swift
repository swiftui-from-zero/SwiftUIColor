//
//  Calc.swift
//  SwiftUIColorTest
//
//  Created by Zilin Zhu on 2021/2/26.
//

import SwiftUI

struct Arithmetic: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ColorWithCode(code: "Color.red.opacity(0.5) + Color.blue.opacity(0.5)",
                              color: Color.red.opacity(0.5) + Color.blue.opacity(0.5))
                    .frame(height: 150)
                ColorWithCode(code: "Color.blue.opacity(0.5) + Color.red.opacity(0.5)",
                              color: Color.blue.opacity(0.5) + Color.red.opacity(0.5))
                    .frame(height: 150)
                ColorWithCode(code: "-Color.blue", color: -Color.blue)
                    .frame(height: 150)
                ColorWithCode(code: "Color.blue * Color.green", color: Color.blue * Color.green)
                    .frame(height: 150)
                ColorWithCode(code: "-(-Color.blue * -Color.green)", color: -(-Color.blue * -Color.green))
                    .frame(height: 150)
                
            }
        }
        
    }
}

struct Calc_Previews: PreviewProvider {
    static var previews: some View {
        Arithmetic()
    }
}
