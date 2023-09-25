//
//  CartManger.swift
//  ShopApp
//
//  Created by Ebraheem Alnaqer on 25/09/2023.
//

import Foundation


class CartManger: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product:Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product:Product) {
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
