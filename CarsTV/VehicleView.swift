//
//  VehicleView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 21/12/23.
//

import SwiftUI

struct VehicleView: View {

  let vehicle: Vehicle
  @Binding var selectedVehicle: Vehicle?
    var body: some View {
      Button(action: {
        selectedVehicle = vehicle
      }){
        VStack {
          Spacer()
          Image(vehicle.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)

          Text(vehicle.name)
            .font(.caption)
        }
      }
      .buttonStyle(.plain)
      .frame(height: 200)
      .frame(width: 320)
      .padding(.bottom, 30)
    }
}

#Preview {
  VehicleView(
    vehicle: Vehicle(name: "Car", imageName: "car1"),
    selectedVehicle: .constant(nil)
  )
}
