//
//  main.swift
//  polymorphism
//
//  Created by raghav babbar on 19/01/17.
//  Copyright © 2017 raghav babbar. All rights rese
    import Foundation
public  class employee
{
    public var name:String!
    
    
    public init?(name:String)
    {if name.isEmpty
    { return nil }
    self.name=name
        
    }
    public var earning:NSDecimalNumber
        { return NSDecimalNumber.zero() }
    public var description:String
        {return name }
    
}

public class salariedemployee:employee
{
    public var weeklySalary:NSDecimalNumber!
    public init?(name:String,weeklySalary:NSDecimalNumber)
    {super.init(name:name)
     if Int(weeklySalary)==0
     { return nil
        }
     self.weeklySalary=weeklySalary
    }
    public override var earning: NSDecimalNumber
    { return weeklySalary
    }
    public override var description: String
    { return String("name=\(super.description)  salary=\(weeklySalary!)")}

}
public class CommissionEmployee :employee
{
 public var grosssale:NSDecimalNumber!
 public var commision:NSDecimalNumber!
    public init?( g grosssale:NSDecimalNumber, c commision:NSDecimalNumber,n name:String)
    {super.init(name: name)
     if grosssale==0||commision==0
     { return nil
        }
        self.commision=commision
        self.grosssale=grosssale
    }
    public override var earning: NSDecimalNumber
    {return  grosssale.decimalNumberByMultiplyingBy(commision)  }
    public override var description: String
    {
    return String(" \(super.description)  gross= \(grosssale)  commision=\(commision)")
    }
    
}
public class BasepluCommisionEmploye:CommissionEmployee
{
    public var basesalary:NSDecimalNumber!
    public init?(name:String ,grosssalary:NSDecimalNumber,commision:NSDecimalNumber,basesalary:NSDecimalNumber)
    {super.init(g:grosssalary,c:commision,n:name)
       if basesalary==0
       {return nil}
        self.basesalary=basesalary

    }
public override var earning: NSDecimalNumber
    { return basesalary.decimalNumberByAdding(super.earning)
    }
public override var description: String
    {return String("basesalalry=\(basesalary)  super=\(super.earning)")
    }
}

var salem=salariedemployee(name: "raghav", weeklySalary: NSDecimalNumber(string:"90000"))!
var comm=CommissionEmployee(g:NSDecimalNumber(string:"1000") , c: NSDecimalNumber(string:"900"), n: "babbar")!
var bpc=BasepluCommisionEmploye(name: "rahul", grosssalary: NSDecimalNumber(string:"8000"), commision: NSDecimalNumber(string:"100"), basesalary: NSDecimalNumber(string:"9023"))!

print(salem.description)
print(salem.earning)
print(comm.description)
print(comm.earning)
print(bpc.earning)
print(bpc.description)

var  genral:employee;
genral=salem
print("---\(genral.description)")
genral=comm
print("---\(genral.description)")
genral=bpc
print("---\(genral.description)")