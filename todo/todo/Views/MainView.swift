//
//  MainView.swift
//  todo
//
//  Created by main on 2023/07/28.
//

/*  To do List
    앱 실행 시 파일에서 읽어서 todos에 저장
*/

import SwiftUI

struct MainView: View {
    
    // MARK: - Properties
    
    @State private var newTodo: String = ""
    @State private var todos: [String] = []
    private let fileName = "todos.txt"
    private let fileManager = FileManager()
    private let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    
    // MARK: - Initializers
    
    
    // MARK: - Methods
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter a new todo", text: $newTodo)
                    .onSubmit {
                        addTodo()
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 50)
                Spacer()
                Button("Add") {
                    addTodo()
                }
            }
            
            Button("Clear") {
                clearTodos()
            }
            
            List {
                ForEach(todos, id: \.self) { todo in
                    HStack {
                        Text(todo)
                        Spacer()
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                            .onTapGesture {
                                deleteTodo(todo)
                            }
                    }
                }
            }
            // View가 화면에 표시되기 전에 파일에서 데이터를 읽어와서 todos 배열에 할당
            .onAppear(perform: loadTodosFromFile)
        }
        .padding()
    }
    
    func addTodo() {
        if !newTodo.isEmpty {
            todos.append(newTodo)
            writeTodosToFile(todo: newTodo)
            newTodo = ""
        }
    }
    
    func deleteTodo(_ todo: String) {
        let fileURL = documentDirectory!.appendingPathComponent(fileName)
        
        if let index = todos.firstIndex(of: todo) {
            todos.remove(at: index)
            do {
                try "".write(to: fileURL, atomically: true, encoding: .utf8)
                if let handle = try? FileHandle(forWritingTo: fileURL) {
                    try handle.seekToEnd()
                    for todo in todos {
                        handle.write(todo.data(using: .utf8)!)
                        handle.write("\n".data(using: .utf8)!)
                    }
                    try handle.close()
                }
            } catch {
                print("Failed deleteTodo()")
            }
        }
    }

    func clearTodos() {
        todos = []
        newTodo = ""
        // todos.txt 파일을 빈 문자열로 덮어쓰기
        let fileURL = documentDirectory!.appendingPathComponent(fileName)
        
        do {
            try "".write(to: fileURL, atomically: true, encoding: .utf8)
        } catch {
            print("Failed clearTodos()")
        }
        
    }
    
    func writeTodosToFile(todo: String) {
        let fileURL = documentDirectory!.appendingPathComponent(fileName) // fileURL = URL
        
        if !fileManager.fileExists(atPath: fileURL.path) { // URL -> String
            do {
                try "".write(to: fileURL, atomically: true, encoding: .utf8)
            } catch {
                print("Failed writeTodosToFile() - File Creation")
            }
        }
        
        if let handle = try? FileHandle(forWritingTo: fileURL) {
            do {
                try handle.seekToEnd() // moving pointer to the end
                handle.write(todo.data(using: .utf8)!) // adding content
                handle.write("\n".data(using: .utf8)!)
                try handle.close() // closing the file
            } catch {
                print("Failed write to file")
            }
        }
    }
    
    func readTodosFromFile() -> String {
        let fileURL = documentDirectory!.appendingPathComponent(fileName)
        if fileManager.fileExists(atPath: fileURL.path) {
            do {
                let text = try String(contentsOf: fileURL, encoding: .utf8)
                print("From readTodosFromFile():")
                print(text)
                return text
            } catch {
                print("Failed readTodosFromFile()")
                return ""
            }
        } else {
            print("Not file exist.")
            return ""
        }
    }
    
    func loadTodosFromFile() {
        let fileTodos = readTodosFromFile()
        if !fileTodos.isEmpty {
            var tempList: [String] = []
            for i in 0 ..< fileTodos.split(separator: "\n").count {
                tempList.append(String(fileTodos.split(separator: "\n")[i]))
                print("todos.append(\(String(fileTodos.split(separator: "\n")[i])))")
            }
            todos = tempList
        } else {
            print("File is empty.")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
