//
//  CardView.swift
//  ShopApp
//
//  Created by Ebraheem Alnaqer on 25/09/2023.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cartManager: CartManger
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products,id:\.id){ product in
                    ProductRow(product: product)
                }
                HStack{
                    Text("Your cart total is ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }else{
                Text("Your cart is empty")
            }
           
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
         .environmentObject(CartManger())
    }
}
