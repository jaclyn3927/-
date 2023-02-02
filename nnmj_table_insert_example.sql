USE NNMJ;

# 학번, 비밀번호, 과, 이름, 성별 순으로 넣기
INSERT INTO Member(mem_id, mem_pw, department, mem_name, gender)
VALUES(22160007, 'password', '스마트소프트웨어학과', '김경선', '여자');

select * from member;

# 작성자(FK, Member의 mem_id 중 하나 넣어야 함), 파티 이름, 카테고리, 매장 이름, 먹을 날짜, 먹을 시간, 먹을 방법, 장소, 결제 방법, 배달 플랫폼, 모을 인원, 채팅 링크 순으로 넣기
# pt_number(글 번호)는 AUTO_INCREMENT로 넣을 필요 없음
# cnum_applicants(현재 모집 인원)은 DEFAULT 값(0)이 있으니 넣을 필요 없음
# completion(완료 여부)는 DEFAULT 값('미완료')이 있으니 넣을 필요 없음
INSERT INTO Party(writer, pt_name, category, store, date_eat, time_eat, way_eat, location, payment, platform, num_applicants, link)
VALUES(22160007, '파티 이름', '카테고리', '매장 이름', '2022-12-03', '23:26:00', '같이먹자', '산학협동관', '만나서후결제', '배달의민족', 5, 'https://kakao.???');

select * from party;

# 글 번호(FK, Party의 pt_number 중 하나 넣어야 함), 신청자(FK, Member의 mem_id 중 하나 넣어야 함), 신청 시간 순으로 넣기
# accept(수락 여부)는 dEFAULT 값('미확인')이 있으니 넣을 필요 없음
# now()로 현재 시간 넣음
INSERT INTO Application(app_number, applicant, app_time)
VALUES(1, 22160007, now());

select * from application;

# 아이디, 비밀번호, 이름, 전화번호 순으로 넣기
INSERT INTO Manager(man_id, man_pw, man_name, phone)
VALUES(12345, 'password', '관리자', '01012345678');

select * from manager;