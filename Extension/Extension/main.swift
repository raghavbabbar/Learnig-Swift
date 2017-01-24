//
//  main.swift
//  Extension
//
//  Created by raghav babbar on 24/01/17.
//  Copyright © 2017 raghav babbar. All rights reserved.
//

import Foundation
extension Int
{
    var adding :Int{
    return self+100
    }
    var subtracting:Int
    {
    return self - 100
    }
}
var obj = 1000
print(obj.adding)
print(obj.subtracting)
struct aa {
    var a:Int!
}
struct bb {
    var b:Int!
}
extension aa
{
   // var c:Int! extension can not contain stroed properties
    init(a:Int)
    {self.a=a
   
    }
    var show :String
    { return "the vaue is \(a)"
    }
}
var obbj=aa(a:1)
print(obbj.show)

