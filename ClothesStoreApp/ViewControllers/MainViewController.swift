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
    
    @IBOutlet var storeCollectionContainer: UIView!
    
    // Mark: ViewController LifeCycle

    override func viewDidLoad() {
        populateStore()
        populateStoreCollectionView()
    }
    
    // Mark: Store Set-Up
    
    func populateStore() {
        let product1 = ProductModel(name: "Almond Toe Court Shoes")
        store.addProductToCatalogue(product1, quantity: 5)
        let product2 = ProductModel(name: "Suede Shoes")
        store.addProductToCatalogue(product2, quantity: 4)
    }
    
    // Mark: Child ViewControllers Set-Up
    
    func populateStoreCollectionView() {
        let storeCollectionVC = storyboard?.instantiateViewControllerWithIdentifier("StoreCollectionViewController") as! StoreCollectionViewController
        storeCollectionVC.store = self.store
        storeCollectionVC.view.frame = storeCollectionContainer.bounds
        storeCollectionContainer.addSubview(storeCollectionVC.view)
        self.addChildViewController(storeCollectionVC)
    }
    
}