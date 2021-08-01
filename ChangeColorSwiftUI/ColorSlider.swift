//
//  ColorSlider.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 01.08.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    var sliderColor: Color
    
    var body: some View {
        VStack {
            HStack {
                Text("0")
                Slider(value: $value)
                .accentColor(sliderColor)
                Text("255")
            } .padding(20)
            Text(
                String(format: "%.0f", value * 255)
                )
        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(0.0), sliderColor: .red)
    }
}
