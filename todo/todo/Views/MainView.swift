//
//  MainView.swift
//  todo
//
//  Created by main on 2023/07/28.
//

/* To do List
 * Todo 아이템에 체크박스 추가: 각 Todo 아이템 옆에 체크박스를 추가하여 완료된 할일을 표시하고 관리할 수 있게 만들어보세요. 체크박스를 터치하면 해당 할일의 상태를 완료로 변경하고 파일에 저장하는 기능을 구현할 수 있습니다.
 * 할일 우선순위 추가: 각 Todo 아이템에 우선순위를 부여하는 기능을 추가해보세요. 예를 들어, 높음/중간/낮음과 같은 우선순위를 선택할 수 있도록 하고, 우선순위에 따라 리스트를 정렬하여 표시하는 기능을 구현해보세요.
 * 날짜/시간 기능 추가: 각 Todo 아이템에 마감 기한을 설정하고, 해당 시간이 다가오면 알림을 주는 기능을 추가해보세요. 이를 위해 SwiftUI의 DatePicker나 알림 기능을 활용할 수 있습니다.
 * 테마 변경 기능 추가: 사용자가 앱의 테마(색상, 폰트 등)를 변경할 수 있도록 옵션을 추가해보세요. SwiftUI에서는 .preferredColorScheme()를 사용하여 앱의 테마를 쉽게 변경할 수 있습니다.
 * 할일 카테고리 구분: 할일 목록을 카테고리별로 구분하여 표시하고 관리할 수 있는 기능을 추가해보세요. 각 카테고리를 선택하면 해당 카테고리에 해당하는 할일만 보이도록 필터링하는 기능을 구현할 수 있습니다.
 * 다중 파일 저장: 여러 개의 파일에 할일 목록을 저장하여 여러 리스트를 관리할 수 있는 기능을 추가해보세요. 예를 들어, 각 파일을 프로젝트별, 개인용, 업무용 등으로 구분하여 다중 파일로 관리할 수 있습니다.
 */

import SwiftUI
import CoreData

struct MainView: View {
    
    // MARK: - Properties
    
    @Environment(\.managedObjectContext) var managedObjContext
//    @Environment(\.dismiss) var dismiss // 뷰 닫기
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Todo.date, ascending: true)]) var todo: FetchedResults<Todo>

    
    @State private var newTodo: String = ""
    @State private var todos: [String] = []
    private let fileName = "todos.txt"
    private let fileManager = FileManager()
    private let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter a new todo", text: $newTodo)
                    .onSubmit {
                        addTodo()
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle()).frame(height: 50)
                Spacer()
                Button("Add") {
                    addTodo()
                }
            }
            
            List {
//                ForEach(todos, id: \.self) { todo in
//                    HStack {
//                        Text(todo)
//                            .swipeActions {
//                                Button(role: .destructive) {
//                                    deleteTodo(todo)
//                                } label: {
//                                    Label("Delete", systemImage: "trash.slash")
//                                }
//                            }
//                    }
//                }
                
                ForEach(todo) { t in
                    Text(t.text ?? "")
                }
            }
            // View가 화면에 표시되기 전에 파일에서 데이터를 읽어와서 todos 배열에 할당
            .onAppear(perform: loadTodosFromFile)
        }
        .padding()
    }
    
    // MARK: - Methods
    
    func addTodo() {
//        if !newTodo.isEmpty {
//            todos.append(newTodo)
//            writeTodosToFile(todo: newTodo)
//            newTodo = ""
//        }
        
        if !newTodo.isEmpty {
            todos.append(newTodo)
            newTodo = ""
            TodoController().addTodo(text: newTodo, context: managedObjContext)
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
