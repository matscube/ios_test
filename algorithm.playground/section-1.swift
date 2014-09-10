// Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Algorithm Test"

func debugVector2(vii:[Int : [Int]]) {
    var size = vii.count
    
    var vi:[Int] = vii[0]!
    var length = vi.count
    
    for var i = 0; i < size; i++ {
        for var j = 0; j < length; j++ {
            vii[i]![j]
        }
    }
}

// hogehoge
/*
var a:[Int : [Int]] = [Int : [Int]]()

for var i = 0; i < 10; i++ {
    a[i] = []
    for var j = 0; j < 10; j++ {
        a[i]!.append(j)
    }
}


debugVector2(a)

typealias Point = (Int, Int)
let origin: Point = (0, 0)
*/


// Assign
var a:String
var b:Int; var c:Int
(a, _, (b, c)) = ("test", 9.34, (1, 4))


//https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Expressions.html#//apple_ref/doc/uid/TP40014097-CH32-XID_720
