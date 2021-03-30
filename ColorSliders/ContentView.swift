//
//  ContentView.swift
//  ColorSliders
//
//  Created by Nikita Zharinov on 29/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 44 / 255, green: 108 / 255, blue: 188 / 255)
                .ignoresSafeArea()
            VStack {
                ColoredView(viewColor: Color(
                    red: redSliderValue / 255,
                    green: greenSliderValue / 255,
                    blue: blueSliderValue / 255
                ))
                VStack {
                    ColoredSlider(sliderValue: $redSliderValue, color: .red)
                    ColoredSlider(sliderValue: $greenSliderValue, color: .green)
                    ColoredSlider(sliderValue: $blueSliderValue, color: .blue)
                }.padding()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColoredSlider: View {
    @Binding var sliderValue: Double
    var color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .frame(minWidth: 10, maxWidth: 40, minHeight: 20, maxHeight: 20)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
                .frame(height: 50)
            TextField("000", value: $sliderValue, formatter: NumberFormatter())
                .keyboardType(.decimalPad)
                .font(.system(size: 20))
                .frame(width: 51, height: 35)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}
