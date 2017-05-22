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
    
    func removeItem(_ item: Item)  {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        // Get reference to object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        
        // Remove item from array
        allItems.remove(at: fromIndex)
        
        // Remove item from array
        allItems.remove(at: fromIndex)
        
        // Insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
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
