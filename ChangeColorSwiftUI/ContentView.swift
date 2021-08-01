//
//  ContentView.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 31.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    
    var body: some View {
        VStack {
            MixColor(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
            HStack {
                VStack {
                    ColorSlider(value: $redValue, sliderColor: .red)
                    ColorSlider(value: $greenValue, sliderColor: .green)
                    ColorSlider(value: $blueValue, sliderColor: .blue)
                }
                VStack {
                    TextFields()
                    TextFields()
                    TextFields()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
