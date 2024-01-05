//
//  TrackVehicleView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 5/1/24.
//

import SwiftUI

struct TrackVehicleView: View {
  let vehicle: Vehicle

  var body: some View {
    Image(vehicle.imageName)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .padding(.top, 30)
      .padding(.trailing, 12)
      .frame(height: 200)
  }
}

#Preview {
  TrackVehicleView(vehicle: Vehicle(name: "Jeep", imageName: "car7"))
}
