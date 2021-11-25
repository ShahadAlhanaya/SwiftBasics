import UIKit

// Create a Point struct that has two properties called "X" & "Y" both of which are Doubles
struct Point{
    var x: Double
    var y: Double
}

// Create a Line struct that has a "Start" and "End" property both of type Point
struct Line{
    var start: Point
    var end: Point
    
    // In the Line struct add a function to return the Length of the created line as a Double.
    func length() -> Double{
        let xDiff = end.x - start.x
        let yDiff = end.y - start.y
        return sqrt(pow(xDiff,2)+pow(yDiff,2))
    }
}

// Create a Triangle Struct that contains a property called "Points" which is an array of type Point
struct Triangle{
    var points: [Point]
    
    init(a: Point, b: Point, c: Point){
        points = [Point]()
        points.append(a)
        points.append(b)
        points.append(c)
    }
    
    
    // Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.
    func area() -> Double{
        let a = points[0]
        let b = points[1]
        let c = points[2]
        return 0.5*(a.x*(b.y-c.y) + b.x*(c.y-a.y) + c.x*(a.y-b.y))
    }
}


