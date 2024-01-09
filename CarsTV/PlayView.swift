//
//  PlayView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 4/1/24.
//

import SwiftUI

struct FocusedVehicleValue: FocusedValueKey {
  typealias Value = Vehicle
}
extension FocusedValues {
  var vehicleValue: FocusedVehicleValue.Value? {
    get { self[FocusedVehicleValue.self] }
    set { self[FocusedVehicleValue.self] = newValue }
  }
}

struct PlayView: View {
  @State var selectedVehicle: Vehicle?
  @State var vehiclesOnTrack: [Vehicle] = []

  var body: some View {
      VStack(alignment:.leading) {

        header

        TrackView(vehiclesOnTrack: $vehiclesOnTrack)

        Divider()
          .background(.white)
          .ignoresSafeArea()
          .padding(50)

        VehicleGrid(selectedVehicle: $selectedVehicle)

      }
      .onChange(of: selectedVehicle) {
        guard let selectedVehicle else { return }
        vehiclesOnTrack.append(selectedVehicle)
      }
    }

  var header: some View {
    HStack {
      Text("Vroom💨")
        .font(.title)
      Spacer()
      Button(
        action: {
          start()
        }, 
        label: {
          Text("Start")
        }
      )
      .disabled(vehiclesOnTrack.isEmpty)

      Button(
        action: {
          resetTrack()
        },
        label: {
          Text("Reset")
        }
      )
    }
    .focusSection()
  }

  func resetTrack() {
    vehiclesOnTrack = []
  }

  func start() {
  }
}

#Preview {
    PlayView()
}
