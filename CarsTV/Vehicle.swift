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
    Vehicle(name: "Car", imageName: "car"),
    Vehicle(name: "Police Car", imageName: "police-car"),
    Vehicle(name: "Jeep", imageName: "jeep"),
    Vehicle(name: "Race Car", imageName: "race-car"),
    Vehicle(name: "Sports Car", imageName: "sports-car"),
    Vehicle(name: "Convertible", imageName: "convertible"),
    Vehicle(name: "Taxi", imageName: "taxi")
  ]

  public static let construction = [
    Vehicle(name: "Crane", imageName: "crane"),
    Vehicle(name: "Excavator", imageName: "excavator"),
    Vehicle(name: "Cement Mixer", imageName: "cement-mixer"),
    Vehicle(name: "Dump Truck", imageName: "dump-truck"),
    Vehicle(name: "Bulldozer", imageName: "bulldozer"),
    Vehicle(name: "Tractor", imageName: "tractor")
  ]

  public static let trucks = [
    Vehicle(name: "Food Truck", imageName: "food-truck"),
    Vehicle(name: "Fire Truck", imageName: "fire-truck"),
    Vehicle(name: "Car Hauler", imageName: "car-hauler"),
    Vehicle(name: "Dump Truck", imageName: "dump-truck"),
    Vehicle(name: "Ice Cream Truck", imageName: "ice-cream-truck"),
    Vehicle(name: "Oil Truck", imageName: "oil-truck")
  ]

  public static let airborne = [
    Vehicle(name: "Aeroplane", imageName: "airplane"),
    Vehicle(name: "Helicopter", imageName: "helicopter"),
    Vehicle(name: "Hot Air Balloon", imageName: "hot-air-balloon"),
    Vehicle(name: "Sea Plane", imageName: "sea-plane"),
    Vehicle(name: "Rocket", imageName: "rocket"),
    Vehicle(name: "Fighter Plane", imageName: "fighter-plane")
  ]

  public static let twoWheeler = [
    Vehicle(name: "Motorbike", imageName: "motorbike"),
    Vehicle(name: "Scooter", imageName: "scooter"),
    Vehicle(name: "Harley", imageName: "harley"),
    Vehicle(name: "Bicycle", imageName: "bicycle"),
    Vehicle(name: "Kids Scooter", imageName: "kids-scooter"),
    Vehicle(name: "Dirt Bike", imageName: "dirt-bike")
  ]


  public static let grid: [(String, [Vehicle])] = [
    ("Cars", cars),
    ("Construction", construction),
    ("Trucks", trucks),
    ("Airborne", airborne),
    ("Two Wheelers", twoWheeler),
  ]
}

extension Vehicle: Hashable, Identifiable {
  var id: String {
    return name
  }
}
