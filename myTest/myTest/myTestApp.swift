//
//  myTestApp.swift
//  myTest
//
//  Created by main on 2023/08/25.
//

import SwiftUI

@main
struct myTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
