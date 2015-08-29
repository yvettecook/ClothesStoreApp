//
//  MainViewController.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation
import UIKit

class MainViewController : UIViewController {
 
    let store = StoreModel()
    
    override func viewDidLoad() {
        populateStore()
    }
    
    func populateStore() {
        println(store.catalogue.count)
        let product1 = ProductModel(name: "Almond Toe Court Shoes");
        store.addProductToCatalogue(product1, quantity: 5)
        println(store.catalogue.count)
    }
    
}