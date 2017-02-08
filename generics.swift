//
//  main.swift
//  extension
//
//  Created by raghav babbar on 08/02/17.
//  Copyright © 2017 raghav babbar. All rights reserved.
//

import Foundation

extension Int
{
    var square:Int
    {get
    {
        return self*self}
    }
}
var a=9
print(a.square)
extension Double
{
    var m:Double{
    return self}
    var cm:Double
    {
     return self/100
    }
    var ft:Double
    {
    return self/3.284
    }
}
var r:Double=2.2
print("\(r.m) \(r.cm)  \(r.ft)")
extension Double
{mutating func square()
   {  self=self*self
    }
}
var num:Double=19
num.square()
print(num)


func swapValue<T>(inout a:T,inout b:T)
{var t : T!
    t=a;
    a=b;
    b=t;

}

