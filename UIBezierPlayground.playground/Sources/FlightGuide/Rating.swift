import Foundation

public struct Rating {
    
    var speed: Int
    var glide: Int
    var turn: Int
    var fade: Int
    
    public init(speed: Int, glide: Int, turn: Int, fade: Int) {
        self.speed = speed
        self.glide = glide
        self.turn = turn
        self.fade = fade
    }
    
}
