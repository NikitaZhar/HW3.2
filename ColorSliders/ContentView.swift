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
                        Text("\(lround(redSliderValue))")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .frame(minWidth: 10, maxWidth: 40, minHeight: 20, maxHeight: 20)
                        Slider(value: $redSliderValue, in: 0...255, step: 1)
                            .accentColor(.red)
                            .frame(height: 50)
                        TextField("000", value: $redSliderValue, formatter: NumberFormatter())
                            .font(.system(size: 20))
                            .frame(width: 51, height: 35)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("\(lround(greenSliderValue))")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .frame(minWidth: 10, maxWidth: 40, minHeight: 20, maxHeight: 20)
                        Slider(value: $greenSliderValue, in: 0...255)
                            .accentColor(.green)
                            .frame(height: 50)
                        TextField("000", value: $greenSliderValue, formatter: NumberFormatter())
                            .font(.system(size: 20))
                            .frame(width: 51, height: 35)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("\(lround(blueSliderValue))")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .frame(minWidth: 10, maxWidth: 40, minHeight: 20, maxHeight: 20)
                        Slider(value: $blueSliderValue, in: 0...255)
                            .accentColor(.green)
                            .frame(height: 50)
                        TextField("000", value: $blueSliderValue, formatter: NumberFormatter())
                            .font(.system(size: 20))
                            .frame(width: 51, height: 35)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
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

