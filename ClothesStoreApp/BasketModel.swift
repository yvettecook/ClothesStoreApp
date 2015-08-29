//
//  BasketModel.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation

class BasketModel : NSObject {
    
    var basket = [ProductInfoStruct]()
 
    func addProductToBasket(product: ProductModel) {
        let productInfo = ProductInfoStruct(product: product, quantity:1)
        basket.append(productInfo)
    }
    
    func removeProductFromBasket(index: Int) {
        basket.removeAtIndex(index)
    }
    
    func calculateTotalCost() -> Float {
        var cost : Float = 0.00
        
        for productInfo in basket {
            let price = productInfo.product.price.value
            cost = cost + price
        }
        
        return cost
    }
    
    func totalCostString() -> String {
        let costFloat = calculateTotalCost()
        let cost = PriceStruct(value:costFloat)
        return cost.priceDisplay
    }
    
}
