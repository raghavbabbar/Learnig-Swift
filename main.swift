//
//  protocolsObj.swift
//  swiftpractice
//
//  Created by raghav babbar on 09/02/17.
//  Copyright © 2017 raghav babbar. All rights reserved.
//

import Foundation

print("Hello, World!")

func swapValue<T>(inout a:T,inout b:T)
{var t : T!
    t=a;
    a=b;
    b=t
    
}
var a="raghav"
var b="babbar"
swapValue(&a, b: &b)
print("a=\(a) b=\(b)")


struct stack<T> {
    var item=[T]()
    mutating func push(i:T)
    {item.append(i)
    }
    mutating func pop()
    {item.removeLast()
    }
    func top()->T
    {let i=item.endIndex
    return item[i-1]
    }
}
var stk=stack<Int>()
stk.push(1)
stk.push(232)
print(stk.top())


protocol payable {
    var payableAmount:Double
    { get
    }
    
}


class Invoice:payable
{
    let partNumber:String!
    var quantity:Int!
    var price :Double!
     init?(patnumber:String,quantity:Int,price:Double)
    {
    if quantity<0 || patnumber.isEmpty || price<0
    {return nil }
     self.partNumber=patnumber
     self.quantity=quantity
     self.price=price
        
}
    public var payableAmount: Double
        {get {
        return (Double(quantity)*price)        }
    }
    public var description:String
    {return "Invoice object"
    }
}
public class employee:payable
{
    var name :String!
    var earning :Double!
    init?(name :String,earning:Double)
    {if name.isEmpty || earning<0
    { return nil
        }
    self.name=name
    self.earning=earning
    }
     public var payableAmount: Double
    { return earning }

    public var description:String
    {return "employee object"
    }
}
 var ara=[payable]()
ara.append(Invoice(patnumber: "raghav", quantity: 11, price: 10.9)!)
ara.append(employee(name: "babbar", earning: 2500.0)!)
ara[0].payableAmount
ara[0].payableAmount


