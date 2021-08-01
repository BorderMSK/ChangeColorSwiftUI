//
//  TextField.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 01.08.2021.
//

import SwiftUI

struct TextFields: View {
    
   @State private var textFieldValue = ""
    
    var body: some View {
        VStack {
            TextField(" ", text: $textFieldValue)
        }
        .frame(width: 60, height: 50)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .keyboardType(.numberPad)
        .padding(20)
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
