//
//  ContentView.swift
//  TrafficLightControlSystem
//
//  Created by Jacob Mobin on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //TopBar()
            TrafficLight()
        }
        .padding()
        .background(Color.black.opacity(0.8))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
