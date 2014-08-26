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


/**
 * subscript test
 */
class SubScriptTest {
    var usernames:[String]?
    
    init() {
        usernames = []
    }

    // define [] operator
    subscript(index:Int) -> String {
        // var t = ins[index]
        get {
            assert(usernames?.count > index, "Index out of range")
            return "\(usernames?[index])さん昨晩はお楽しみでしたね"
        }
        // ins[index] = hoge
        set(name) {
            assert(0 > index || usernames?.count >= index, "Index out of range")
            usernames?.insert(name, atIndex: index)
        }
    }
    
    // define [ , ] operator
    subscript(index:Int, index2:Int) -> String {
        return (usernames![index] as NSString).substringWithRange(NSMakeRange(index2, 1))
    }
    

}

let sst = SubScriptTest()
sst[0] = "hoge"
sst[0, 2]
