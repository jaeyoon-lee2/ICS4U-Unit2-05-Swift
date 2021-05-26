/*
This class use contructor.
author  Jay Lee
version 1.0
since   2021-05-25
*/

class Vehicle {
  // Fields
  private var licensePlateNumber, colour: String
  private let numberOfDoors, maxSpeed: Int
  private var speed: Int

  // Constructor
  init(licensePlateNumber: String, colour: String, numberOfDoors: Int,
                                                    maxSpeed: Int) {
    self.licensePlateNumber = licensePlateNumber
    self.colour = colour
    self.numberOfDoors = numberOfDoors
    self.maxSpeed = maxSpeed
    self.speed = 0
  }

  // This method prints to console all the properties.
  func PrintVehicleInfo() {
    print("License plate number: \(self.GetLicensePlateNumber())")
    print("Colour:  \(self.GetColour())")
    print("Number of doors : \(String(GetNumberOfDoors()))")
    print("Max speed: \(self.GetMaxSpeed())km/h")
    print("Current speed: \(self.GetSpeed())km/h")
  }

// This method accelerates the speed.
  func Accelerate(increment: Int) {
    if (speed + increment <= maxSpeed) {
      self.speed += increment
    } else {
      print("The vehicle is at max speed!")
      self.speed = maxSpeed
    }
  }

  // This method decelerates the speed.
  func Brake(decrement: Int) {
    if (speed - decrement >= 0) {
      self.speed -= decrement
    } else {
      print("The vehicle has stopped!")
      self.speed = 0
    }
  }

  // This method returns the license plate number.
  func GetLicensePlateNumber() -> String{
    return self.licensePlateNumber
  }

  // This method returns the colour of the vehicle.
  func GetColour() -> String {
    return self.colour
  }

  // This method returns the number of doors.
  func GetNumberOfDoors() -> Int {
    return self.numberOfDoors
  }

  // This method returns the current speed of vehicle.
  func GetSpeed() -> Int {
    return self.speed
  }

  // This method returns the max speed.
  func GetMaxSpeed() -> Int {
    return self.maxSpeed
  }

  // This method gets new license plate number and sets it.
  func SetLicensePlateNumber(newLicensePlateNumber: String) {
    self.licensePlateNumber = newLicensePlateNumber
  }

  // This method gets new colour and sets it.
  func SetColour(newColour: String) {
    self.colour = newColour
  }
}
