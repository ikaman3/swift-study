//
//  MainView.swift
//  todo
//
//  Created by main on 2023/07/28.
//

import SwiftUI

struct MainView: View {
    @State private var newTodo: String = ""
    @State private var todos: [String] = []

    var body: some View {
        VStack {
            HStack {
                TextField("Enter a new todo", text: $newTodo, onCommit: addTodo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 50)
                Button("Add") {
                    addTodo()
                }
                .padding()
            }
            
            Button("Clear") {
                clearTodos()
            }
            
            List {
                ForEach(todos, id: \.self) { todo in
                    HStack {
                        Text(todo)
                        Spacer()
                        Button(action: {
                            deleteTodo(todo)
                        }) {
                            Image(systemName: "trash")
                        }
                    }
                }
            }
        }
        .padding()
    }
    
    func addTodo() {
        if !newTodo.isEmpty {
            todos.append(newTodo)
            newTodo = ""
        }
    }
    
    func deleteTodo(_ todo: String) {
        if let index = todos.firstIndex(of: todo) {
            todos.remove(at: index)
        }
    }
    
    func clearTodos() {
        todos = [];
        newTodo = ""
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
