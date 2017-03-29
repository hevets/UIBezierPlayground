import Foundation
import UIKit

public struct FlightCanvas {
    var width = 400
    var height = 400
    
    enum SortType {
        case speed
        case overlap
    }
    
    public init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    public func toRect() -> CGRect {
        return CGRect(x: 0, y: 0, width: self.width, height: self.height)
    }
    
    public func getStartFinish() -> (start: CGPoint, finish: CGPoint) {
        return (start: CGPoint(x: self.width / 2, y: self.height), finish: CGPoint(x: self.width / 2, y: 0))
    }
    
    public func drawFlightPath(with disc:Disc) -> CAShapeLayer {
        // TODO: can turn the /2 into some sort of sort option (speed, shuffle, mixed)
        // TODO: this value might need to be passed in or keep a reference to where the pen is...
        // TODO: with the height value I can create a feature that shows you the flight guide flipped
        let start = getStartFinish().start
        let finish = getStartFinish().finish
        
        let path = disc.toFlightPath(with: start, and: finish)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.white.cgColor
        shapeLayer.backgroundColor = UIColor.init(white: 0.0, alpha: 1).cgColor
        
        return shapeLayer
    }
}
