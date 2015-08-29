//
//  StoreModel.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation

class StoreModel : NSObject {
    
    var catalogue : [ProductInfoStruct] = []
    
    func addProductToCatalogue(product: ProductModel, quantity: Int){
        let productInfo = ProductInfoStruct(product: product, quantity: quantity)
        catalogue.append(productInfo)
    }
    
    
}
