//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let c = FlightCanvas(width: 400, height: 400)
let containerView = UIView(frame: c.toRect())
containerView.backgroundColor = UIColor.white

var r = Rating(speed: 14, glide: 6, turn: -2, fade: 3)
var d = Disc(withRating: r)
var l = c.drawFlightPath(with: d)

containerView.layer.addSublayer(l)

PlaygroundPage.current.liveView = containerView
