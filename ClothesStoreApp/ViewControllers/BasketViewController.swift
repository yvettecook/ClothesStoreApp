//
//  BasketViewController.swift
//  ClothesStoreApp
//
//  Created by Yvette Cook on 29/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

import Foundation
import UIKit

class BasketViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var basket = BasketModel()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // Mark: UITableViewDelegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basket.basket.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BasketProductCell") as! BasketProductCell
        let productInfo = basket.basket[0]
        let product = productInfo.product
        cell.nameLabel.text = product.name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    }
    
    // Mark: Updating View
    
    func refresh() {
        tableView.reloadData()
    }
    
}