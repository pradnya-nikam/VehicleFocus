//
//  TrackView.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 4/1/24.
//

import SwiftUI

struct TrackView: View {
  var body: some View {
    VStack{
      Text("Track")
        .font(.title2)
      Image("road")
        .resizable()
        .aspectRatio(contentMode: .fit)

    }
    .frame(width: 200)
  }
  
}

#Preview {
    TrackView()
}
