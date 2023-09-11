# swift_study
SwiftUI 프레임워크를 사용한 iOS 개발을 하며 배운 것을 기록

## SwiftUI
### View를 닫는 코드
```@Environment(\.dismiss) var dismiss // 뷰 닫기```
### Swipe하여 다양한 메뉴가 나오는 코드
```
.swipeActions {
      // Delete
      Button(role: .destructive) {
          deleteTodo(todo)
      } label: {
          Label("Delete", systemImage: "trash.slash")
      }
      
      // Edit
      Button {
          editTodo(todo, newTodo: newTodo)
      } label: {
          Label("Edit", systemImage: "square.and.pencil")
      }
      .tint(.blue)
  }
```
### 라이브러리 패널 보는 법
캔버스가 열려있어야 볼 수 있다...


## Debugging
### Core Data 레코드 직접 보기 및 수정
AppSchema 설정에서 EditSchema를 선택하고 Arguments에 아래의 두 줄을 추가한다.  
-com.apple.CoreData.SQLDebug 1  
-com.apple.CoreData.Logging.stderr 1  

이후 앱을 실행하면 디버깅 콘솔에 아래의 로그가 출력된다.  
/Library/Developer/CoreSimulator/Devices/{시뮬레이터 아이디}/data/Containers/Data/Application/{앱 아이디}/Library/Application Support/CoreDataTest.sqlite  
해당 파일을 다양한 SQLite 에디터로(db-browser-for-sqlite 등) 열어 볼 수 있다.  
수정하고 저장하면 DB에 적용된다.  
[참고 블로그](https://eastroot1590.tistory.com/entry/Core-Data-1)  

## Mark down 작성법
### 줄바꿈
문장 뒤에 스페이스 2번  
### 하이퍼링크 달기 
[URL Lable](URL)
### 코드 블록
``` 백틱 3개 사이에 코드 ```
