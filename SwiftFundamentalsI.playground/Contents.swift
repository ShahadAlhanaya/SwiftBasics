import UIKit

//changed to constants
let type: String = "Rectangle"
let description: String = "A quadrilateral with four right angles"

//specify type as double to keep calculation percise
var width: Double = 5
var height: Double = 10.5
var area = width * height
height += 1
width += 1
area = width * height
print("The shape is a \(type) or \(description) with an area of \(area)")
