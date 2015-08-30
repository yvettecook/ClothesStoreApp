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
    
    // When refactoring comes, these 2 functions would be the priority.
    
    func decrementProductAtCatalogueIndex(index: Int) {
        catalogue[index].quantity = catalogue[index].quantity - 1
    }
    
    func incrementProductWithName(name: String) {
        for productInfo in catalogue {
            var index = 0
            if (productInfo.product.name == name) {
                println(productInfo.quantity)
                catalogue[index].quantity = catalogue[index].quantity + 1
                return
            } else {
                index++
            }
        }
    }
    
    
    
    
    
}
