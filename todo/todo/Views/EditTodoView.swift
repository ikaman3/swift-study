//
//  EditTodoView.swift
//  todo
//
//  Created by main on 2023/08/24.
//

import SwiftUI

struct EditTodoView: View {
    
    // MARK: - Properties
    
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Todo.date, ascending: true)]) var todos: FetchedResults<Todo>
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EditTodoView_Previews: PreviewProvider {
    static var previews: some View {
        EditTodoView()
    }
}
