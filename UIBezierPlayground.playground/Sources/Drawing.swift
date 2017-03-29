import Foundation
import UIKit

let WIDTH = 400
let HEIGHT = 550
let MID = WIDTH/2
let BGCOLOR = UIColor.white
let DIFF = 20

func drawHorzLine() -> CAShapeLayer {
    let startAt = CGPoint(x: 0+DIFF, y: HEIGHT/2)
    let endAt = CGPoint(x: WIDTH-DIFF, y: HEIGHT/2)
    
    let path = UIBezierPath()
    path.move(to: startAt)
    path.addLine(to: endAt)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.fillColor = UIColor.white.cgColor
    
    return shapeLayer
}


func drawVertLine() -> CAShapeLayer {
    let startAt = CGPoint(x: WIDTH/2, y: HEIGHT - DIFF)
    let endAt = CGPoint(x: WIDTH/2, y: 0 + DIFF)
    
    let path = UIBezierPath()
    path.move(to: startAt)
    path.addLine(to: endAt)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.fillColor = UIColor.white.cgColor
    
    return shapeLayer
}

func drawSquare() -> CAShapeLayer {
    let point1 = CGPoint(x: 0 + DIFF, y: 0 + DIFF)
    let point2 = CGPoint(x: 0 + DIFF, y: HEIGHT - DIFF)
    let point3 = CGPoint(x: WIDTH - DIFF, y: HEIGHT - DIFF)
    let point4 = CGPoint(x: WIDTH - DIFF, y: 0 + DIFF)
    
    let path = UIBezierPath()
    path.move(to: point1)
    path.addLine(to: point2)
    path.addLine(to: point3)
    path.addLine(to: point4)
    path.addLine(to: point1)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.fillColor = UIColor.white.cgColor
    shapeLayer.backgroundColor = UIColor.init(white: 0.0, alpha: 1).cgColor
    
    return shapeLayer
}

func getDistance(speed: Int, glide: Int) -> Int {
    var distance = 250
    switch speed {
    case 14:
        distance = 420 + glide * 2
    case 13:
        distance = 415 + glide * 2
    case 12:
        distance = 410 + glide * 2
    case 11:
        distance = 385 + glide * 2
    case 10:
        distance = 375 + glide * 2
    case 9:
        distance = 365 + glide * 2
    case 8:
        distance = 335 + glide * 2
    case 7:
        distance = 325 + glide * 2
    case 6:
        distance = 280 + glide * 2
    case 5:
        distance = 275 + glide * 2
    case 4:
        distance = 270 + glide * 2
    default:
        distance = 265 + glide * 2
    }
    return distance
}

func drawDisc(speed: Int, glide: Int, turn: Int, fade: Int) -> CAShapeLayer {
    let startAt = CGPoint(x: WIDTH/2, y: HEIGHT)
    let finishAt = CGPoint(x: WIDTH/2, y: HEIGHT - getDistance(speed: speed, glide: glide))
    
    let cPoint1 = CGPoint(x: WIDTH/2-30, y: HEIGHT/2 - 30)
    let cPoint2 = CGPoint(x: WIDTH/2+80, y: HEIGHT/2)
    
    print(startAt, finishAt, cPoint1, cPoint2)
    
    let path = UIBezierPath()
    path.move(to: startAt)
    path.addCurve(to: finishAt, controlPoint1: cPoint1, controlPoint2: cPoint2)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.fillColor = UIColor.white.cgColor
    shapeLayer.backgroundColor = UIColor.init(white: 0.0, alpha: 1).cgColor
    
    return shapeLayer
}

// speed, glide, turn, fade
func drawDiscPath() -> CAShapeLayer {
    let point1 = CGPoint(x: WIDTH/2, y: HEIGHT)
    let point2 = CGPoint(x: WIDTH/2, y: 0)
    
    let cpoint1 = CGPoint(x: WIDTH/2+40, y: HEIGHT/2 - 30)
    let cpoint2 = CGPoint(x: WIDTH/2-30, y: HEIGHT/2)
    
    print(cpoint1, cpoint2)
    
    let path = UIBezierPath()
    path.move(to: point1)
    path.addCurve(to: point2, controlPoint1: cpoint1, controlPoint2: cpoint2)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.fillColor = UIColor.white.cgColor
    shapeLayer.backgroundColor = UIColor.init(white: 0.0, alpha: 1).cgColor
    
    return shapeLayer
}
