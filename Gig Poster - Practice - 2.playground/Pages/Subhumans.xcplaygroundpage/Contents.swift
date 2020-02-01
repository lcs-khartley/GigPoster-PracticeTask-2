//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...
canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)

// Make a list of points
canvas.drawShapesWithBorders = false

canvas.fillColor = brown
var polygonVertices: [Point] = []
polygonVertices.append(Point(x: 0, y: 225))
polygonVertices.append(Point(x: 0, y: 325))
polygonVertices.append(Point(x: 60, y: 325))
polygonVertices.append(Point(x: 10, y: 225))

canvas.drawCustomShape(with: polygonVertices)

var polygonVertices2: [Point] = []
polygonVertices2.append(Point(x: 180, y: 225))
polygonVertices2.append(Point(x: 330, y: 225))
polygonVertices2.append(Point(x: 380, y: 325))
polygonVertices2.append(Point(x: 230, y: 325))

canvas.drawCustomShape(with: polygonVertices2)

var polygonVertices3: [Point] = []
polygonVertices3.append(Point(x: 180, y: 50))
polygonVertices3.append(Point(x: 330, y: 50))
polygonVertices3.append(Point(x: 380, y: 150))
polygonVertices3.append(Point(x: 230, y: 150))

canvas.drawCustomShape(with: polygonVertices3)

var polygonVertices4: [Point] = []
polygonVertices4.append(Point(x: 0, y: 50))
polygonVertices4.append(Point(x: 0, y: 150))
polygonVertices4.append(Point(x: 60, y: 150))
polygonVertices4.append(Point(x: 10, y: 50))

canvas.drawCustomShape(with: polygonVertices4)



canvas.fillColor = Color.black

// Horizontal lines
for y in stride(from: 0, through: 600, by: 50){
    
    canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: y))
    

}

// Vertical lines
for x in stride(from: 0, through: 400, by: 50){
    
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
}



/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

