//
//  StoreCollectionViewController.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation
import UIKit

class StoreCollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var store = StoreModel()
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    // Mark : UICollectionViewDelegate
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return store.catalogue.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("productCell", forIndexPath: indexPath) as! ProductCell
        let productInfo = store.catalogue[indexPath.row] as ProductInfoStruct
        let product = productInfo.product
        cell.nameLabel.text = product.name
        cell.quantityLabel.text = productInfo.quantity.description
        cell.genderLabel.text = product.category.gender.description
        return cell
    }
    

    
    
}