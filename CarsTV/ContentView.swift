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
//    VStack(alignment:.leading) {
//      Text("Vroom💨")
//        .font(.title)
//      Picker("", selection: $selectedTab) {
//        Text("Play").tag(0)
//        Text("Settings").tag(1)
//      }
//      .fixedSize()
//      .frame(width: 900)
//      .pickerStyle(.segmented)

//      Spacer()
//        .frame(height: 100)
      if selectedTab == 0 {
        PlayView()
      }
      else {
        SettingsView()
      }
    }
//  }
}

#Preview {
  ContentView()
}
