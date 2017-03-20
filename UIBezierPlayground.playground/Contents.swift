//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let WIDTH = 400
let HEIGHT = 400
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

// create a container view
let containerView = UIView(frame: CGRect(x: 0, y: 0, width: WIDTH, height: HEIGHT))
containerView.backgroundColor = BGCOLOR

containerView.layer.addSublayer(drawSquare())
containerView.layer.addSublayer(drawVertLine())
containerView.layer.addSublayer(drawHorzLine())

PlaygroundPage.current.liveView = containerView
