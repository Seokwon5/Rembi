## Rembi
사용자가 지인들의 mbti를 기억하기 위해 간편하게 저장할 수 있는 메모앱입니다.

## 개발 도구
* Xcode
* Swift
* SwiftUI
* Coredata

## 개발 환경
- **Develoment Target** : ios 16.2 
- **Xcode** : v14.0

## 기능 구현
### 📚 친구 목록 화면

#### Picker
<img src = "https://github.com/Seokwon5/Rembi/assets/77192860/033de37b-1ef4-40f9-91af-c070c14e8603" width = "200" height = "400">

- Picker를 이용하여 상태변수와 바인딩하여 리스트 순서를 변경하도록 구현하였습니다.

#### 친구 추가 화면

### 수정 및 삭제
<img src = "https://github.com/Seokwon5/Rembi/assets/77192860/622d9f07-cf4a-4d2f-a436-3a08fc74666f" width = "200" height = "400">
-ㅇㄹㅇㄹㄴㄹㅇㅁ
-ㄴㅁㄹㅁㄴㄹㄴㅇㄹ

<img src = "https://github.com/Seokwon5/Rembi/assets/77192860/78e8ef5b-c237-4624-987a-275741ee5c10" width = "200" height = "400">
-ㅇㅁㄹㄴㅇㄹ
-ㄴㅇㄹㄴㄹㄴㅇ


#### AlertView
- alertViewController를 생성하여 책 데이터의 상태를 구분하도록 구현하였습니다.
- 삭제 버튼을 생성하고 프로토콜을 이용하여 저장된 데이터를 삭제하는 작업을 구현하였습니다.

### 🏠 홈 화면
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/6606873c-83ff-4843-9091-d3cfd7fb7926" width = "200" height = "400">

#### TabBarController
- 최근에 분류한 책들을 보기 위한 홈 화면과 책 전체를 다루는 서재 화면으로 나누었습니다
#### CollectionView, TableView
- '읽는 중'인 책은 CollectionView로 구현하였습니다
- '다 읽은 책'은 TableView로 구현하였습니다
- range메소드의 정규표현식을 이용하여 책 제목의 소괄호안의 글자를 삭제하였습니다
