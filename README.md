# swift_study
SwiftUI 프레임워크를 사용한 iOS 개발을 하며 배운 것을 기록 남김

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
