//
//  TrackView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 4/1/24.
//

import SwiftUI

struct TrackView: View {
  @Binding var vehiclesOnTrack: [Vehicle]

  var body: some View {
    VStack {
      Text("Track")
        .font(.title2)
      Divider()
        .background(.white)
      Divider()
        .background(.white)

      ZStack {
        Image("road")
          .resizable()
          .aspectRatio(contentMode: .fit)
        VStack {
          ForEach(vehiclesOnTrack) { vehicle in
            Image(vehicle.imageName)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .rotationEffect(.degrees(270))
              .padding(.top, 30)
              .padding(.trailing, 20)
          }
          Spacer()
        }
      }
    }
    .frame(width: 200)
  }
  
}

#Preview {
  TrackView(vehiclesOnTrack: .constant([Vehicle(name: "Jeep", imageName: "car7")]))
}
