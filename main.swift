/*
This program uses the Vehicle class with constructor.
author  Jay Lee
version 1.0
since   2021-05-25
*/

enum InvalidInputError : Error {
  case invalidInput
}

do {
  print("Enter the license plate number: ", terminator:"")
  let licensePlateNumber = String(readLine()!)
  print("Enter the colour of the car: ", terminator:"")
  let colour = String(readLine()!)
  print("Enter the number of doors: ", terminator:"")
  guard let numberOfDoors = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  print("Enter the max speed(km/h): ", terminator:"")
  guard let maxSpeed = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }

  let myVehicle = Vehicle(licensePlateNumber: licensePlateNumber,
                          colour: colour, numberOfDoors: numberOfDoors,
                          maxSpeed: maxSpeed)

  print("")

  while(true) {
    print("Enter the command: ", terminator:"")
    let inputString = String(readLine()!).uppercased()
    if (inputString == "END") {
      break
    } else if (inputString == "ACCELERATE") {
      print("Enter the value to be accelerated (km/h): ", terminator:"")
      guard let increment: Int = Int(readLine()!) else {
        throw InvalidInputError.invalidInput
      }
      myVehicle.Accelerate(increment: increment)
    } else if (inputString == "BRAKE") {
      print("Enter the value to be decelerated (km/h):  ", terminator:"")
      guard let decrement = Int(readLine()!) else {
        throw InvalidInputError.invalidInput
      }
      myVehicle.Brake(decrement: decrement)
    } else if (inputString == "LICENSE") {
      print("Enter the new license plate number: ", terminator:"")
      myVehicle.SetLicensePlateNumber(newLicensePlateNumber:String(readLine()!))
    } else if (inputString == "COLOUR") {
      print("Enter the new colour of the car: ", terminator:"")
      myVehicle.SetColour(newColour: String(readLine()!))
    } else {
      continue
    }
  }
  print("\nMy Vehicle: ")
  myVehicle.PrintVehicleInfo()
} catch {
  print("\nInvalid input.")
}
print("\nDone.")
