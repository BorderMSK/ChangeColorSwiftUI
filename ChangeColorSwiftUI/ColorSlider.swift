//
//  ColorSlider.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 01.08.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
        Slider(value: $value, in: 0...255, step: 1)
            .accentColor(color)
            Text("255")
        } .padding(20)
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(0.0), color: .red)
    }
}
