//
//  ContentView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 19/12/23.
//

import SwiftUI

struct ContentView: View {
  
  @State private var selectedTab = 0

  var body: some View {
    VStack {
      Picker("", selection: $selectedTab) {
        Text("Red").tag(0)
        Text("Green").tag(1)
        Text("Blue").tag(2)
      }
      .pickerStyle(.segmented)

      Spacer()
        .frame(height: 100)

      VehicleGrid()

    }
  }
}

#Preview {
  ContentView()
}
