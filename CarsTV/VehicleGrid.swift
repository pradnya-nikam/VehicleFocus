//
//  VehicleGrid.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 22/12/23.
//

import SwiftUI

struct VehicleGrid: View {

  let gridData = Vehicle.grid
  @Binding var selectedVehicle: Vehicle?

  var body: some View {
      ScrollView(.vertical) {
        VStack(alignment: .leading) {
          ForEach(gridData, id: \.0) { vehicleRow in

            VStack(alignment:.leading) {

              //Section title
              Text(vehicleRow.0)
                .font(.body)
                .padding(.bottom, 10)

              //Rows
              ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 60) {
                  ForEach(vehicleRow.1) { vehicle in
                    VehicleView(vehicle: vehicle, selectedVehicle: $selectedVehicle)
                      .focusedValue(\.vehicleValue, vehicle)
                  }
                }
                .padding(.leading, 60)
              }
              .scrollClipDisabled()

            }
          }
        }
      }
//      .scrollClipDisabled()
    }
}

#Preview {
  VehicleGrid(selectedVehicle: .constant(nil))
}
