//
//  ContentView.swift
//  SwiftColorTest
//
//  Created by Zilin Zhu on 2021/2/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(
                    destination: RGB(),
                    label: { Text("RGB") })
                NavigationLink(
                    destination: HEX(),
                    label: { Text("HEX") })
                NavigationLink(
                    destination: HSV(),
                    label: { Text("HSV") })
                NavigationLink(
                    destination: HSL(),
                    label: { Text("HSL") })
                NavigationLink(
                    destination: CMYK(),
                    label: { Text("CMYK") })
                NavigationLink(
                    destination: GetRGBA(),
                    label: { Text("Get RGBA") })
            }
            .navigationBarTitle(Text("SwiftUIColor"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
