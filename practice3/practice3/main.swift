//
//  main.swift
//  practice3
//
//  Created by raghav babbar on 15/01/17.
//  Copyright © 2017 raghav babbar. All rights reserved.
//

import Foundation
//the didSet and willset are stored properties
// they did not occur at the time of initialisation
//if the new value of variable if invalid it will regain its old value
class Time
{
    
    public var hour :Int=0
        {
        willSet {
          print("the value of hour ~ \(hour) is changing to new value \(newValue)")
        
        }
        didSet{
        if hour > 23
        { hour=oldValue
            }
        }
    
    }

    public var minutes :Int=0
        {
        willSet {
            print("the value of hour ~ \(minutes) is changing to new value \(newValue)")
            
        }
        didSet{
            if minutes > 60
            { minutes=oldValue
            }
        }
        
    }
    
    
    public var second :Int=0
        {
        willSet {
            print("the value of hour ~ \(second) is changing to new value \(newValue)")
            
        }
        didSet{
            if second > 60
            { second=oldValue
            }
        }
        
    }
    
    public var show:String {
    return String("\(hour):\(minutes):\(second)")
    }

}

var t1=Time()
t1.hour=3
t1.minutes=44
t1.second=44
print(t1.show)
t1.hour=25
print(t1.show)

