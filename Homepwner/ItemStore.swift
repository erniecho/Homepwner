//
//  ItemStore.swift
//  Homepwner
//
//  Created by Ernie Cho on 2/19/17.
//  Copyright © 2017 ErnShu. All rights reserved.
//

import Foundation

class ItemStore {
    var allItems = [Item]()
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        //This is OK
        //let newItem = itemStore.createItem()
        
        //This is also OK; the result is not assigned to a variable
        //ItemStore.createItem()
        
        allItems.append(newItem)
        
        return newItem
    }
}
