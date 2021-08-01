//
//  MixColor.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 01.08.2021.
//

import SwiftUI

struct MixColor: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 400, height: 200)
                .foregroundColor(Color(red: redValue, green: greenValue, blue: blueValue))
        }               .padding(.bottom, 100)
    }
}

struct MixColor_Previews: PreviewProvider {
    static var previews: some View {
        MixColor(redValue: .constant(0.0), greenValue: .constant(0.0), blueValue: .constant(0.0))
    }
}
