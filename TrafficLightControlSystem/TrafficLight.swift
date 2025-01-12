//
//  TrafficLight.swift
//  TrafficLightControlSystem
//
//  Created by Jacob Mobin on 1/12/25.
//

import SwiftUI

struct TrafficLight: View {
    @State private var redLight: Bool = false
    @State private var yellowLight: Bool = false
    @State private var greenLight: Bool = false
    @State private var redIntensity: Double = 0.5
    @State private var yellowIntensity: Double = 0.5
    @State private var greenIntensity: Double = 0.5

    var body: some View {
        HStack {
            // Sliders
            VStack(spacing: 30) {
                Slider(value: $redIntensity, in: 0...1)
                    .rotationEffect(.degrees(-90))
                    .frame(height: 200)

                Slider(value: $yellowIntensity, in: 0...1)
                    .rotationEffect(.degrees(-90))
                    .frame(height: 200)

                Slider(value: $greenIntensity, in: 0...1)
                    .rotationEffect(.degrees(-90))
                    .frame(height: 200)
            }
            .padding()
            
            VStack(spacing: 20) {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color.red.opacity(redLight ? redIntensity : 0.1))
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .onTapGesture {
                        redLight.toggle()
                    }

                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color.yellow.opacity(yellowLight ? yellowIntensity : 0.1))
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .onTapGesture {
                        yellowLight.toggle()
                    }

                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color.green.opacity(greenLight ? greenIntensity : 0.1))
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .onTapGesture {
                        greenLight.toggle()
                    }
            }
            .frame(maxHeight: .infinity)

            
            Spacer()

        }
        .padding()
        .padding(.trailing, 20)
        .background(Color.black.opacity(0.8))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    TrafficLight()
}
