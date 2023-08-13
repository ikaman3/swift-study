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
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Todo.date, ascending: true)]) var todos: FetchedResults<Todo>

    @State private var newTodo: String = ""
        
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
                ForEach(todos, id: \.id) { todo in
                    HStack {
                        Text(todo.text ?? "Undefined")
                            .swipeActions {
                                Button(role: .destructive) {
                                    deleteTodo(todo)
                                } label: {
                                    Label("Delete", systemImage: "trash.slash")
                                }
                            }
                    }
                }
            }
        }
        .padding()
    }
    
    // MARK: - Methods
    
    func addTodo() {
        if !newTodo.isEmpty {
            TodoController().addTodo(text: newTodo, context: managedObjContext)
            newTodo = ""
        }
    }
    
    // TODO: editTodo
    
    func deleteTodo(_ todo: Todo) {
        TodoController().deleteTodo(todo: todo, context: managedObjContext)
    }
    
}
    
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
