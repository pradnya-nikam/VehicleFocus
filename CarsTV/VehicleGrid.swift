//
//  VehicleGrid.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 22/12/23.
//

import SwiftUI

struct VehicleGrid: View {
  let cars = Vehicle.cars

    var body: some View {
      ScrollView(.vertical) {
        ForEach(0..<5) { _ in
          VStack {

            //Rows
            ScrollView(.horizontal) {
              HStack(alignment: .center, spacing: 200) {
                ForEach(cars, id: \.name) { car in
                  VehicleView(vehicle: car)
                }
              }
            }
            .scrollClipDisabled()

            Divider()
          }
        }
      }
      .scrollClipDisabled()
    }
}

#Preview {
    VehicleGrid()
}
