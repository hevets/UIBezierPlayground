import Foundation
import UIKit


public class FlightGuide {
    
    public static func drawDisc(speed: Int, glide: Int, turn: Int, fade: Int) -> CAShapeLayer {
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
    
    public static func getDistance(speed: Int, glide: Int) -> Int {
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

}
