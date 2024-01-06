//
//  TrackView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 4/1/24.
//

import SwiftUI

struct TrackView: View {
  @Binding var vehiclesOnTrack: [Vehicle]
  @FocusedValue(\.vehicleValue) var focusedVehicle

  var body: some View {
    VStack {
//      Text("Track")
//        .font(.title2)
//      Divider()
//        .background(.white)
//      Divider()
//        .background(.white)
//        .padding()

      ZStack(alignment: Alignment(horizontal: .leading, vertical: .center))
      {
        HStack(spacing: 0) {
          Image("road")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 190)
            .padding(0)
          Image("road")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 190)
            .padding(0)
        }

        HStack(alignment: .top) {
          ForEach(vehiclesOnTrack) { vehicle in
            TrackVehicleView(vehicle: vehicle)
          }
          if let focusedVehicle = focusedVehicle {
            TrackVehicleView(vehicle: focusedVehicle)
              .opacity(0.4)
              .overlay {
                Rectangle()
                  .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [10]))

              }
          }
          Spacer()
        }
      }
    }
//    .frame(width: 200)
  }

}

#Preview {
  TrackView(vehiclesOnTrack: .constant([Vehicle(name: "Jeep", imageName: "car7")]))
}
