//
//  ProductsViewModel.swift
//  SampleShoppingCart
//
//  Created by Fernando Ortiz on 23/11/2018.
//  Copyright © 2018 Fernando Ortiz. All rights reserved.
//

import Foundation
import CoreData

final class ProductsViewModel {
    
    var products: [Product] = []
    
    init() {
//        let product = Product(context: context)
//        product.name = "Pitusas"
//        product.count = 10
//        product.price = 20
//        product.picture = "Pitusas"
//
//        let product2 = Product(context: context)
//        product2.name = "Manaos"
//        product2.count = 5
//        product2.price = 25
//        product2.picture = "Manaos"
//
//        try? context.save()
        let request = NSFetchRequest<Product>(entityName: "Product")
        self.products = (try? context.fetch(request)) ?? []
    }
}
