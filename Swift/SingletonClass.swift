// -- Swift Singleton Versions -----------------------------------------------------------
// From: https://github.com/hpique/SwiftSingleton/tree/master/Singleton

import Foundation

class SingletonA 
{
    static let sharedInstance: SingletonA = SingletonA()
    
    private init() 
    {
        print("AAA");
    }
}

class SingletonB 
{
    class var sharedInstance: SingletonB 
    {
        struct Static 
        {
            static let instance: SingletonB = SingletonB()
        }
        
        return Static.instance
    }
    
    private init() 
    {
        print("BBB");
    }
}

class SingletonC 
{
    class var sharedInstance: SingletonC 
    {
        struct Static 
        {
            static var onceToken: dispatch_once_t = 0
            static var instance: SingletonC? = nil
        }
        
        dispatch_once(&Static.onceToken) 
        {
            Static.instance = SingletonC()
        }
        
        return Static.instance!
    }
    
    private init() 
    {
        print("CCC");
    }
}