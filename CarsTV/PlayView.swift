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
      HStack {
        VehicleGrid(selectedVehicle: $selectedVehicle)
        Divider()
          .background(.white)
          .padding(50)
        TrackView(vehiclesOnTrack: $vehiclesOnTrack)
      }
      .onChange(of: selectedVehicle) {
        guard let selectedVehicle else { return }
        vehiclesOnTrack.append(selectedVehicle)
      }
    }
}

#Preview {
    PlayView()
}
