//
//  EditTodoView.swift
//  todo
//
//  Created by main on 2023/08/24.
//

import SwiftUI

struct EditTodoView: View {
    
    // MARK: - Properties
    
    @Environment(\.managedObjectContext) var viewContext
    @Environment(\.dismiss) var dismiss
    
    var todo: FetchedResults<Todo>.Element
    
    @State private var newTodo = ""
    
    var body: some View {
        ZStack {
            Color("TodoColor").ignoresSafeArea()
            VStack {
                VStack {
                    TextField("\(todo.text!)", text: $newTodo)
                        .onAppear {
                            newTodo = todo.text!
                        }
                    
                    HStack {
                        Spacer()
                        Button("Submit") {
                            TodoController().editTodo(todo: todo, newText: newTodo, context: viewContext)
                            dismiss()
                        }
                        Spacer()
                    }
                }
                    .padding()
                Spacer()
            }
        }
    }
}
