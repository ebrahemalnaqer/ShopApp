//
//  Product.swift
//  ShopApp
//
//  Created by Ebraheem Alnaqer on 25/09/2023.
//

import Foundation



struct Product : Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Mr.Ahmed", image: "img1", price: 23),
                   Product(name: "Mr.Khaild", image: "img2", price: 50),
                   Product(name: "Mr.Salem", image: "img3", price: 45),
                   Product(name: "Eng.Mohamed", image: "img4", price: 12),
                   Product(name: "Mr.Ali", image: "img5", price: 32),
                   Product(name: "Mr.Amgad", image: "img6", price: 91),
                   Product(name: "Eng.Omar", image: "img7", price: 16),
                   Product(name: "Eng.Ahmed", image: "img8", price: 88)]
