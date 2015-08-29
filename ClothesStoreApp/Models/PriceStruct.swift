//
//  PriceStruct.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation

struct PriceStruct {
    
    let value : Float
    
    var priceDisplay : String {
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_GB")
        let text = "\(formatter.stringFromNumber(value)!)"
        return text
    }
    
}
