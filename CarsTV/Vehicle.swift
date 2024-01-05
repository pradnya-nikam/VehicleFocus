//
//  Vehilcle.swift
//  CarsTV
//
//  Created by Nikam, Pradnya on 21/12/23.
//

import Foundation
struct Vehicle {
  let name: String
  let imageName: String
  public static let cars = [
    Vehicle(name: "Car1", imageName: "car1"),
    Vehicle(name: "Jeep", imageName: "car2"),
    Vehicle(name: "Jeep1", imageName: "car3"),
    Vehicle(name: "Jeep2", imageName: "car4"),
    Vehicle(name: "Jeep3", imageName: "car5"),
    Vehicle(name: "Jeep4", imageName: "car6"),
    Vehicle(name: "Jeep5", imageName: "car7"),
    Vehicle(name: "Jeep6", imageName: "car8"),
    Vehicle(name: "Jeep7", imageName: "car10"),
//    Vehicle(name: "Jeep8", imageName: "car10")
//    Vehicle(name: "Jeep9", imageName: "car1"),
//    Vehicle(name: "Jeep10", imageName: "car1")
  ]

  public static let grid: [(String, [Vehicle])] = [
    ("Cars", cars),
    ("Construction", cars),
    ("Bicycles", cars),
    ("Scooters", cars),
    ("Race car", cars),
    ("Aeroplanes", cars),
    ("Trucks", cars)
  ]

//     public static let grid: [String: [Vehicle]] = [
//      "cars" : cars,
//      "trucks": cars,
//      "aeroplanes": cars,
//      "construction": cars,
//      "three-wheelers": cars
//     ]
}

extension Vehicle: Hashable, Identifiable {
  var id: String {
    return name
  }

}
