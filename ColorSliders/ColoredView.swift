//
//  coloredView.swift
//  ColorSliders
//
//  Created by Nikita Zharinov on 29/03/2021.
//

import SwiftUI

struct ColoredView: View {
    var viewColor: Color
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(height: 100)
            .foregroundColor(viewColor)
            .overlay(RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(Color.white, lineWidth: 4))
            .padding()
        
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(viewColor: .green)
    }
}
