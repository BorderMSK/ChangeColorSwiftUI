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
    @State private var textFieldValue = ""
    
    var body: some View {
        VStack {
            TextField("", text: $textFieldValue, onCommit: checkValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 50)
                .alert(isPresented: $alertPresent) {
                    Alert(title: Text("Wrong value"),
                          message: Text("Range 0...255"),
                          dismissButton: .destructive(Text("OK"),
                                                      action: dissmiss))
                }
                .onAppear {
                    textFieldValue = "\(lround(sliderValue))"
                }
                .onChange(of: sliderValue, perform: { value in
                    textFieldValue = "\(lround(value))"
                })
        }
    }
    private func dissmiss() {
        textFieldValue = "\(lround(sliderValue))"
    }
    private func checkValue() {
        if let textFieldValue = Double(textFieldValue), (0...255).contains(textFieldValue) {
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
