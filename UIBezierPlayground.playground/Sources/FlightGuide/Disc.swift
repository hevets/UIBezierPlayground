import Foundation
import UIKit

public struct Disc {
    
    var rating: Rating
    
    public init(withRating rating:Rating) {
        self.rating = rating
    }
    
    func toFlightPath(with start:CGPoint, and finish:CGPoint) -> UIBezierPath {
        // TODO: figure out the distance issue (not sure how i'm going to fix this
        let adjustedFinish = CGPoint(x: finish.x, y: finish.y)
        let cPoint1 = CGPoint(x: 10*self.rating.turn, y: Int(start.y / 2))
        let cPoint2 = CGPoint(x: -10*self.rating.fade, y: Int(start.y / 2))
        
        let path = UIBezierPath()
        path.move(to: start)
        path.addCurve(to: adjustedFinish, controlPoint1: cPoint1, controlPoint2: cPoint2)
        
        return path
    }
    
    
    
}
