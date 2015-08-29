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
    let basket = BasketModel()
    
    @IBOutlet var storeCollectionContainer: UIView!
    @IBOutlet var basketContainer: UIView!
    
    var basketVC : BasketViewController?
    var storeVC : StoreCollectionViewController?
    
    // Mark: ViewController LifeCycle

    override func viewDidLoad() {
        populateStore()
        populateStoreCollectionView()
        populateBasketView()
    }
    
    // Mark: Store Set-Up
    
    func populateStore() {
        let product1cat = CategoryStruct(gender: Gender.Female, department: Department.Footwear)
        let product1 = ProductModel(name: "Almond Toe Court Shoes", category: product1cat, price:99.00)
        store.addProductToCatalogue(product1, quantity: 5)
        let product2cat = CategoryStruct(gender: .Male, department: .Footwear)
        let product2 = ProductModel(name: "Suede Shoes", category: product2cat, price:42.00)
        store.addProductToCatalogue(product2, quantity: 4)
        
    }
    
    // Mark: Child ViewControllers Set-Up
    
    func populateStoreCollectionView() {
        let storeCollectionVC = storyboard?.instantiateViewControllerWithIdentifier("StoreCollectionViewController") as! StoreCollectionViewController
        storeCollectionVC.store = self.store
        storeCollectionVC.view.frame = storeCollectionContainer.bounds
        storeCollectionContainer.addSubview(storeCollectionVC.view)
        addChildViewController(storeCollectionVC)
        self.storeVC = storeCollectionVC
    }
    
    func populateBasketView() {
        let basketVC = storyboard?.instantiateViewControllerWithIdentifier("BasketViewController") as! BasketViewController
        basketVC.basket = self.basket
        basketVC.view.frame = basketContainer.bounds
        basketContainer.addSubview(basketVC.view)
        addChildViewController(basketVC)
        self.basketVC = basketVC

    }
    
    // Mark: Basket Methods
    
    func addProductToBasket(index: Int) {
        store.decrementProductAtCatalogueIndex(index)
        let product = store.catalogue[index].product
        basket.addProductToBasket(product)
        basketVC?.refresh()
        storeVC?.refresh()
    }
    
    func removeProductFromBasket(index: Int) {
        let productName = basket.basket[0].product.name
        store.incrementProductWithName(productName)
        basket.removeProductFromBasket(index)
        basketVC?.refresh()
        storeVC?.refresh()

    }
    
}