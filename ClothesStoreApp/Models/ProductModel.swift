//
//  ProductModel.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation

class ProductModel : NSObject {
    
    let name : String
    let category : CategoryStruct
    let price : PriceStruct
    
    init(name: String, category: CategoryStruct, price: Float){
        self.name = name
        self.category = category
        self.price = PriceStruct(value: price)
    }
    
}