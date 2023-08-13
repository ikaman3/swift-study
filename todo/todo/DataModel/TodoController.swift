//
//  TodoController.swift
//  todo
//
//  Created by main on 2023/08/12.
//

import SwiftUI
import CoreData

class TodoController: ObservableObject {
    let container = NSPersistentContainer(name: "TodoModel")
    
    // MARK: Initializer
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    // MARK: Method
    
    func saveChanges(context: NSManagedObjectContext) {
        if context.hasChanges {
            do {
                try context.save()
                print("Data saved.")
            } catch {
                print("Could not save changes to Core Data.", error.localizedDescription)
            }
        }
    }
    
    func addTodo(text: String, context: NSManagedObjectContext) {
        let todo = Todo(context: context)
        todo.id = UUID()
        todo.date = Date()
        todo.text = text
        
        saveChanges(context: context)
    }
    
    func editTodo(todo: Todo, text: String, context: NSManagedObjectContext) {
        todo.text = text
        
        saveChanges(context: context)
    }
    
    func deleteTodo(todo: Todo, context: NSManagedObjectContext) {
        container.viewContext.delete(todo)
        
        saveChanges(context: context)
    }
}
