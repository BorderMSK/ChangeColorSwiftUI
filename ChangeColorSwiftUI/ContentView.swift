//
//  ContentView.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 31.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    
    var body: some View {
        VStack {
            MixColor(red: redValue, green: greenValue, blue: blueValue)
            HStack {
                VStack (spacing: 20) {
                    ColorSlider(value: $redValue, color: .red)
                    ColorSlider(value: $greenValue, color: .green)
                    ColorSlider(value: $blueValue, color: .blue)
                    
                }
                VStack {
                    TextFields(sliderValue: $redValue)
                        .padding(.bottom, 50)
                    TextFields(sliderValue: $greenValue)
                        .padding(.bottom, 50)
                    TextFields(sliderValue: $blueValue)
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
