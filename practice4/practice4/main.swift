//
//  main.swift
//  practice4
//
//  Created by raghav babbar on 15/01/17.
//  Copyright © 2017 raghav babbar. All rights reserved.
//
// 2 type of constructor are thr
//1.designated constructor==> which need to initialize all the data member
//2.convenience constructor ==> that directly or indirectly call the designated constructor

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
    

    public init( hr hour:Int=0,min:Int=0,sec:Int=0)
  { self.hour=hour
    self.min=min
    self.sec=sec
}
    public convenience init(hour:Int)
    {   self.init(hr:hour,min: 0,sec: 0)
    }
    public convenience init(hour:Int,min:Int)
    {self.init(hr:hour,min: min)
    }

    public var show:String{
    return String("\(hour):\(min):\(sec)")}
    
    
}
var t1=Time(hr:2,min:33,sec:33)
var t2=Time(hr:2)
var t3=Time(hr:2,min: 32)
print(t1.show)
print(t2.show)
print(t3.show)

