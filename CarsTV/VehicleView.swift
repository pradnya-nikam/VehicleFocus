//
//  VehicleView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 21/12/23.
//

import SwiftUI

struct VehicleView: View {
  let vehicle: Vehicle
    var body: some View {
      Button(action: {

      }){
        VStack {
          Image(vehicle.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)

          Text(vehicle.name)
            .dynamicTypeSize(.xSmall)
        }
      }
      .buttonStyle(.plain)
      .frame(height: 200)
//      .frame(width: 150)
    }
}

#Preview {
  VehicleView(
    vehicle: Vehicle(name: "Car", imageName: "car1")
  )
}
