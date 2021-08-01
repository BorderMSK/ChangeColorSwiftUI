//
//  MixColor.swift
//  ChangeColorSwiftUI
//
//  Created by Igor Makeev on 01.08.2021.
//

import SwiftUI

struct MixColor: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        
        Color(red: red/255, green: green/255, blue: blue/255)
            .frame(height: 200)
            .cornerRadius(30)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 5))
            .padding(.bottom, 100)
        
    }
    
    struct MixColor_Previews: PreviewProvider {
        static var previews: some View {
            MixColor(red: 0, green: 0, blue: 0)
        }
    }
}
