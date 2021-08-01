//
//  TextFields.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 01.08.2021.
//

import SwiftUI

struct TextFields: View {
    @Binding var sliderValue: Double
    @State var alertPresent = false
    @State private var textValue = ""
    
    var body: some View {
        VStack {
            TextField("", text: $textValue, onCommit: checkValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 50)
                .alert(isPresented: $alertPresent) {
                    Alert(title: Text("Wrong value"),
                          message: Text("Range 0...255"),
                          dismissButton: .destructive(Text("OK"),
                                                      action: dissmiss))
                }
                .onAppear {
                    textValue = "\(lround(sliderValue))"
                }
                .onChange(of: sliderValue, perform: { value in
                    textValue = "\(lround(value))"
                })
        }
        
    }
    private func dissmiss() {
        textValue = "\(lround(sliderValue))"
    }
    
    
    private func checkValue() {
        
        if let textFieldValue = Double(textValue), (0...255).contains(textFieldValue) {
            sliderValue = textFieldValue
        } else {
            alertPresent.toggle()
        }
    }
}


struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields(sliderValue: .constant(0.0))
    }
}
