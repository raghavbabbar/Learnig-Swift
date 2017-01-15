//
//  main.swift
//  failable initailizers in class
//
//  Created by raghav babbar on 15/01/17.
//  Copyright © 2017 raghav babbar. All rights reserved.
/*
 whenever you make failaible initializer for a class
 it will either return an optional  type of class object 
 or nil.
*/
import Foundation
public class Time
{
    public var hour:Int=0
        {
        didSet
        { if hour<0 || hour>23
        {  hour=oldValue
            print("old value regained")
            }
            
        }
    }
    
    public var min:Int=0
        {
        didSet
        { if min<0 || min>60
        {  min=oldValue
            print("old value regained")
            }
            
        }
    }
    
    public var sec:Int=0
        {
        didSet
        { if sec<0 || sec>60
        {  sec=oldValue
            print("old value regained")
            }
            
        }
    }
    
    public init?(h hour:Int=0,m min:Int=0,s sec:Int=0)
    {
     self.hour=hour
     self.min=min
     self.sec=sec
     
        if hour>23||min>60||sec>60||hour<0||min<0||sec<0
        { return nil }
    }
    
    public convenience init?( hour:Int, min:Int)
    {
        self.init(h:hour,m:min)
    
    }
    public var show:String{
        return String("\(hour):\(min):\(sec)")}
}

if let t1=Time(h:24,m:1,s:2)
{
print(t1.show)

}
else
{print("initialization failed")
}
var tt1=Time(h:2,m:1,s:2)
if tt1 == nil
{
print("initialization failed")
}
else {
print(tt1!.show)
}
