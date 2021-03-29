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
                    HStack {
                        Text(sliderValue(from: redSliderValue))
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .padding(.horizontal)
                        Slider(value: $redSliderValue, in: 0...255)
                            .accentColor(.red)
                    }
                    HStack {
                        Text(sliderValue(from: greenSliderValue))
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .padding(.horizontal)
                        Slider(value: $greenSliderValue, in: 0...255)
                            .accentColor(.green)
                    }
                    HStack {
                        Text(sliderValue(from: blueSliderValue))
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .padding(.horizontal)
                        Slider(value: $blueSliderValue, in: 0...255)
                            .accentColor(.blue)
                    }
                }
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

private func sliderValue(from value: Double) -> String {
    String(format: "%.3d", Int(value))
}
