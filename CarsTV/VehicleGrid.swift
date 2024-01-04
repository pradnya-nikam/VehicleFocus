//
//  VehicleGrid.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 22/12/23.
//

import SwiftUI

struct VehicleGrid: View {
  let cars = Vehicle.cars
  let gridData = Vehicle.grid

    var body: some View {
      ScrollView(.vertical) {
        ForEach(gridData, id: \.0) { vehicleRow in

          VStack(alignment:.leading) {

            Text(vehicleRow.0)
              .font(.title3)
              .padding(.bottom, 30)

            //Rows
            ScrollView(.horizontal) {
              HStack(alignment: .center, spacing: 200) {
                ForEach(vehicleRow.1, id: \.name) { car in
                  VehicleView(vehicle: car)
                }
              }
            }
            .scrollClipDisabled()

            Divider()

          }
        }
      }
//      .scrollClipDisabled()
    }
}

#Preview {
    VehicleGrid()
}
