//
//  ShopAppApp.swift
//  ShopApp
//
//  Created by Ebraheem Alnaqer on 25/09/2023.
//

import SwiftUI

@main
struct ShopAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
