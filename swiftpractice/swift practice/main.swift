//
//  main.swift
//  swift practice
//
//  Created by raghav babbar on 24/01/17.
//  Copyright © 2017 raghav babbar. All rights reserved.
//

import Foundation
class sample
{
    var n1:Int!
    var n2:Int!
    var l:Double!
    var b:Double!
    init(n1:Int,n2:Int,l:Double,b:Double)
    {
    self.n1=n1
    self.n2=n2
     self.l=l
     self.b=b
    }
    var ss:(Double,Double)
    {get
    { return(l/2,b/2)
    }
    set
       {ss.0=newValue.0
        ss.1=newValue.1
        }
        
    }

}

class vehicle
{
    
    
    var name:String!
    var mode:Int!
    init (name:String,mode:Int)
    {
     self.name=name
     self.mode=mode
    }


   func show()
   {
    }


}
class bike: vehicle
{   var size:Int!
    init(name:String,mode:Int,size:Int)
    {
  
     self.size=size
     super.init(name: name, mode: mode)
    
    }
    
    override func show() {
        print("bike:  name=\(name) model=\(mode) size=\(size)")
    }
    
}
class car: vehicle
{
    init(name:String,mode:Int,size:Int)
{
    
    self.size=size
    super.init(name: name, mode: mode)
    
    }
    var size:Int!
    override func show() {
        print("car:  name=\(name) model=\(mode) size=\(size)")
    }
    
}
class days
{
var week=["sunday","monday","tuesday","wednesday","thrusday","friday","saturday"]

    subscript (index:Int)->String
    {get
    {return week[index]
    }
    set
    { week[index]=newValue
        }
    
    }
}
class matrix
{
    var row:Int
    var col:Int
    var a:[Double]
    init(row:Int,col:Int)
    {self.row=row
    self.col=col
        
        a = Array(count: row * col, repeatedValue: 0.0)
    }
    subscript(aa:Int, b:Int)->Double
        {get{
            return a[aa*(row-1)+b*(col-1)]}
        set
        {a[aa*(row-1)+b*(col-1)]=newValue
        }
    }

}
var b=bike(name: "ri5", mode: 2011, size: 2222)
var c=car(name: "jazz", mode: 2017, size: 9999)
var general:vehicle
general=b
general.show()
general=c
general.show()
var g=sample(n1: 4, n2: 6, l: 8, b: 88)
print(g.ss.0)
var d=days()
print(d[5])
d[5]="aaaaa"
print(d[5])
var mm=matrix(row: 2, col: 2)
mm[1,1]=11
print(mm[1,1])