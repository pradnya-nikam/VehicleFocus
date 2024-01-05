//
//  PlayView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 4/1/24.
//

import SwiftUI

struct PlayView: View {
  @State var selectedVehicle: Vehicle?
  @State var vehiclesOnTrack: [Vehicle] = []
    var body: some View {
      VStack(alignment:.leading) {
        HStack {
          Text("Vroom💨")
            .font(.title)
          Spacer()
          Button {
            resetTrack()
          } label: {
            Text("Reset")
          }
        }.focusSection()
        TrackView(vehiclesOnTrack: $vehiclesOnTrack)
        Divider()
          .background(.white)
          .ignoresSafeArea()
//          .padding(50)

        VehicleGrid(selectedVehicle: $selectedVehicle)
      }
      .onChange(of: selectedVehicle) {
        guard let selectedVehicle else { return }
        vehiclesOnTrack.append(selectedVehicle)
      }
    }

  func resetTrack() {
    vehiclesOnTrack = []
  }
}

#Preview {
    PlayView()
}
