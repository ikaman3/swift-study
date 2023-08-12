//
//  todoApp.swift
//  todo
//
//  Created by main on 2023/07/28.
//

import SwiftUI

@main
struct todoApp: App {
    @StateObject private var todoController = TodoController()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, todoController.container.viewContext)
        }
    }
}
