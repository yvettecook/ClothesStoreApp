//
//  CategoryStruct.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation

struct CategoryStruct {
    
    let gender : Gender
    let department : Department
    
}

enum Gender {
    case Male
    case Female
    
    var description : String {
        switch self {
            case .Male   :  return "Male"
            case .Female :  return "Female"
        }
    }
}

enum Department {
    case Footwear, Casualwear, Formalwear
}