//
//  subscript.swift
//  
//
//  Created by TakanoriMatsumoto on 2014/08/27.
//
//

import Foundation


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