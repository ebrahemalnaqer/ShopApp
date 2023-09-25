//
//  ContentView.swift
//  ShopApp
//
//  Created by Ebraheem Alnaqer on 25/09/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject var cartManger = CartManger()
    var colums = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums,spacing: 20) {
                    ForEach(productList,id: \.id){ product in
                        ProductCard(product: product)
                            .environmentObject(cartManger)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Shop"))
            .toolbar{
                NavigationLink {
                    CardView()
                        .environmentObject(cartManger)
                }label: {
                    CartButton(numberOfProducts: cartManger.products.count)
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
