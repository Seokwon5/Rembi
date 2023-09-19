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

- 수정 작업을 완료하면 NSPersistentContainer에 기존 데이터를 변경하여 저장하도록 구현하였습니다.

<img src = "https://github.com/Seokwon5/Rembi/assets/77192860/78e8ef5b-c237-4624-987a-275741ee5c10" width = "200" height = "400">

- 사용자가 해당 셀을 스와이프하면 인덱스를 찾아 삭제 메소드를 호출시키고 삭제하도록 구현하였습니다.

#### AlertView
- alertViewController를 생성하여 책 데이터의 상태를 구분하도록 구현하였습니다.
- 삭제 버튼을 생성하고 프로토콜을 이용하여 저장된 데이터를 삭제하는 작업을 구현하였습니다.

### 🏠 홈 화면
<img src = "https://github.com/Seokwon5/Rembi/assets/77192860/9b514f63-4ab7-41ad-bbcc-2e217a54d414" width = "200" height = "400">

- ㅋㅋ

#### TabBarController
- 최근에 분류한 책들을 보기 위한 홈 화면과 책 전체를 다루는 서재 화면으로 나누었습니다
#### CollectionView, TableView
- '읽는 중'인 책은 CollectionView로 구현하였습니다
- '다 읽은 책'은 TableView로 구현하였습니다
- range메소드의 정규표현식을 이용하여 책 제목의 소괄호안의 글자를 삭제하였습니다
