//
//  Data.swift
//  Passing Values
//
//  Created by Nitin Bhatia on 31/08/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import Foundation


let sharedInstance = Data()

class Data{
    

    var title = String()
    
    
    func setData(str : String) -> Void{
        title = str
    }
    
    func getData() -> String{
        return title
    }
    
    
 
}
