//
//  PlayView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 4/1/24.
//

import SwiftUI

struct PlayView: View {
    var body: some View {
      HStack {
        VehicleGrid()
        Divider()
          .background(.white)
          .padding(50)
        TrackView()
      }
    }
}

#Preview {
    PlayView()
}
