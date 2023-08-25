//
//  TodoController.swift
//  todo
//
//  Created by main on 2023/08/12.
//

import SwiftUI
import CoreData

class TodoController: ObservableObject {
    static let shared = TodoController()
    
    // Canvas Preview
    static var preview: TodoController = {
        let result = TodoController()
        let viewContext = result.container.viewContext
        for i in 0..<1 {
            let newTodo = Todo(context: viewContext)
            newTodo.date = Date()
            newTodo.id = UUID()
            newTodo.text = "test\(Int.random(in: 1..<99))"
        }
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
    
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
    
    // id, date는 제외하고 text만 업데이트
    func editTodo(todo: Todo, newText: String, context: NSManagedObjectContext) {
        todo.text = newText
        
        saveChanges(context: context)
    }
    
    func deleteTodo(todo: Todo, context: NSManagedObjectContext) {
        context.delete(todo)
        
        saveChanges(context: context)
    }
    
    func clearTodos(todos: FetchedResults<Todo>, context: NSManagedObjectContext) {
        for todo in todos {
            context.delete(todo)
        }
        
        saveChanges(context: context)
    }
}

