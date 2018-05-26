-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 18-05-25 11:21
-- 서버 버전: 5.7.21
-- PHP 버전: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `library`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `booklist`
--

CREATE TABLE `booklist` (
  `book_id` int(3) NOT NULL,
  `book_name` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `category_id` int(3) DEFAULT NULL,
  `quantity` int(2) DEFAULT '3',
  `acc_cnt` int(5) DEFAULT '0',
  `mon_cnt` int(3) DEFAULT '0',
  `summary` longtext,
  `review_cnt` int(4) DEFAULT '0',
  `thumbnail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `booklist`
--

INSERT INTO `booklist` (`book_id`, `book_name`, `publisher`, `author`, `category_id`, `quantity`, `acc_cnt`, `mon_cnt`, `summary`, `review_cnt`, `thumbnail`) VALUES
(1, '꿈의 해석', '시그마', '프로이트', 180, 3, 0, 0, '꿈의 해석을 하는 책!', 2, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788970551135%3Fmoddttm=20160928051427\r\n'),
(2, '아직도 가야 할 길', '율리시즈', '스캇 펙', 180, 3, 0, 0, '삶에서 마주치는 고통과 정면으로 맞서고 그것을 극복해나가는 데 필요한 \'자기훈육법\'', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FBOK00011376095IN%3Fmoddttm=20180221060523'),
(3, '미움받을 용기', '인플루엔셜', '기시미 이치로', 180, 3, 0, 0, '행복에 필요한 것은 용기', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788996991342%3Fmoddttm=20180103065759\r\n'),
(4, '파리의 아파트', '밝은세상', '기욤 뮈소', 103, 3, 0, 0, '사랑과 감동의 마에스트로 기욤 뮈소의 중독적인 스릴러 -시들해져가는 삶을 다시 환희로 채워줄 빛은 어디에서 오는가\n? -2016년 프랑스 베스트셀러 1위! 전 세계 40여 개국 출간 『파리의 아파트』는 한국에서 14번째로 출간하는 기욤 뮈소의 장\n편소설이다.', 1, 'http://image.aladin.co.kr/product/12356/17/cover150/8984373354_1.jpg'),
(5, '앨리스 죽이기', '검은숲', '코바야시 야스미', 104, 3, 0, 0, '《이상한 나라의 앨리스》가 가진 환상성에 그로테스크한 묘사와 치밀한 논리가 더해진 본격 미스터리 화제작『앨리스\n 죽이기』. 앨리스가 도마뱀 빌과 잡담을 나누고 있을 때 달걀 험프티 덤프티가 여왕의 정원 담 위에서 추락사한다.', 1, 'http://image.aladin.co.kr/product/7233/44/cover150/895277518x_1.jpg'),
(6, '베어타운', '다산책방', '프레드릭 배크만', 105, 3, 0, 0, '<오베라는 남자>로 전 세계를 사로잡은 감동소설의 대가 프레드릭 배크만이 모두의 가슴을 울리는 새로운 이야기 <베\n어타운>으로 돌아왔다. 출간 즉시 베스트셀러에 오르며 \"<오베라는 남자>를 뛰어넘었다\" \"이 시대의 디킨스다\"라는 언론의\n열광적인 찬사를 받은 이 작품은 이전 작품들에 웃음과 감동과는 또 다른 깊고도 뭉클한 감동과 위로를 전하는 작품이다', 1, 'http://image.aladin.co.kr/product/14111/44/cover150/k332532136_2.jpg'),
(7, '버스데이 걸', '비채', '무라카미 하루키', 106, 3, 0, 0, '스무 번째 생일을 맞은 한 소녀의 평범하면서도 은밀한 하루! 독일의 유명 일러스트레이터 카트 멘시크의 그림과 함께하\n는 무라카미 하루키 ‘소설×아트’ 프로젝트 최신 단편 『버스데이 걸』. 정갈한 문체와 울림이 있는 주제를 담은 이 작품은 일\n본 중학교 3학년 국어 교과서에도 수록되어 화제를 모았다. ', 1, 'http://image.aladin.co.kr/product/14123/60/cover150/8934981172_2.jpg'),
(8, '책을 지키려는 고양이', '아르테', '나쓰카와 소스케', 107, 2, 1, 0, '책을 좋아하는 모든 이에게 묻는다 “책이 정말 세상을 바꿀 수 있다고 생각해?” 돈 이야기는 그만두고 오늘 읽은 책 이야\n기를 합시다! 이 세상의 책을 구하러 떠난 한 사람과 한 마리의 기묘한 모험! 320만 부 판매 신화를 기록한 나쓰카와 소스케 화\n제의 신작 희귀본이 가득한 고서점을 배경으로 책을 지키려는 고양이와 외톨이 소년의 기이한 모험을 담은 책', 2, 'http://image.aladin.co.kr/product/12914/12/cover150/8950973022_1.jpg'),
(9, '아몬드', '창비', '손원평', 108, 3, 0, 0, '괴물인 내가 또 다른 괴물을 만났다!영화와도 같은 강렬한 사건과 매혹적인 문체로 시선을 사로잡는 한국형 영 어덜트\n소설 『아몬드』. 타인의 감정에 무감각해진 공감 불능인 이 시대에 큰 울림을 주는 이 작품은 감정을 느끼지 못하는 한 소년\n의 특별한 성장을 그리고 있다. ', 2, 'http://image.aladin.co.kr/product/10636/66/cover150/8936456784_1.jpg'),
(10, '바깥은 여름', '문학동네', '김애란', 109, 2, 1, 0, '우리를 실망시키지 않는 작가 김애란이 선보이는 일곱 편의 마스터피스!김애란이 돌아왔다. 작가생활 15년간 끊임없이\n 자신을 경신해오며, 지금 우리가 발 딛고 서 있는 곳의 이야기를 우리의 언어로 들었을 때 느끼게 되는 친밀감과 반가움, 그\n각별한 체험을 선사해온 저자가 《비행운》 이후 5년 만에 펴내는 신작 소설집 『바깥은 여름』. ', 1, 'http://image.aladin.co.kr/product/11145/47/cover150/8954646077_2.jpg'),
(11, '봉제인형 살인사건', '북플라자', '다니엘 콜', 110, 3, 0, 0, '하나로 꿰매진 몸통, 여섯 명의 희생자!2016년 4월 런던 도서전에서 가장 큰 주목을 받은 다니엘 콜의 데뷔작 『봉제인형\n 살인사건』. 《데렐 가족》을 히트시킨 ITV사가 TV판권을 획득하며 영국에서 드라마화 제작 확정된 이 작품은 신체의 여섯\n부위를 바늘과 실로 꿰매 이어 붙인 살인사건이라는 섬뜩한 소재를 다루면서도 진정한 정의가 무엇인지에 대해 생각하게 된다.', 1, 'http://image.aladin.co.kr/product/11997/87/cover150/8998274930_1.jpg'),
(12, '가면산장 살인사건', '재인', '히가시노게이고', 111, 3, 0, 0, '강도와 인질 간의 숨 막히는 줄다리기!히가시노 게이고의 소설 『가면산장 살인사건』. 저자와 독자가 아슬아슬한 두뇌\n 싸움을 벌이게 되는 이 작품은 외딴 산장에 모인 여덟 명의 남녀와 한밤중에 침입한 은행 강도범의 인질극을 그리고 있다. 잘\n짜인 무대에서 벌어지는 연극과도 같은 이 소설은 그 누구도 상상조차 할 수 없었던 엄청난 반전을 담고 있다.', 1, 'http://image.aladin.co.kr/product/4745/51/cover150/899098257x_2.jpg'),
(13, '순이 삼촌', '창비', '현기영', 112, 3, 0, 0, '역사적 진실을 복원해온 작가 현기영의 문학인생을 돌아보는 시간!현대사에 빛나는 거장 현기영의 문학인생 40년을 기\n념하는 동시에 그의 작품을 새롭게 조명하는 「현기영 중단편전집」.', 1, 'http://image.aladin.co.kr/product/5483/1/cover150/893646034x_1.jpg'),
(14, '돌이킬 수 없는 약속', '창비', '야쿠마루 가쿠', 113, 3, 0, 0, ' 응징과 용서의 진정한 의미는 무엇인가!주인공이 과거에 저지른 죄, 그리고 15년 전에 했던 어떤 약속을 둘러싸고 벌어\n지는 미스터리를 그린 야쿠마루 가쿠의 소설 『돌이킬 수 없는 약속』. ', 1, 'http://image.aladin.co.kr/product/10174/56/cover150/8998274795_1.jpg'),
(15, '결벽증 새언니', '하움출판사', '카라', 114, 3, 0, 0, '100만 독자가 본 결벽증 새언니 시리즈가 책으로 출간되었다. 그녀의 글이 인터넷에서 화제가 된 이유는 유쾌한 필체에\n서 나오는 재미뿐만이 아니라 그 속에 묻어 있는 따스함 때문이다. 결벽증 새언니 시리즈는 한 번 펼쳐서 한 번에 다 읽을 수\n있도록 쉽고 재미있게 쓰여 있다. ', 1, 'http://image.aladin.co.kr/product/14428/20/cover150/k772532143_1.jpg'),
(16, '플랫폼 제국의 미래', '비즈니스북스', '스콧 갤러웨이 ', 200, 3, 0, 0, '‘IT 4대 제국’이 50년 안에 사라진다! 새로운 자리는 누가 차지하게 될 것인가? 출간 즉시 실리콘 밸리를 발칵 뒤집은 2017 최고의 화제작', 1, ''),
(17, '주식투자 무작정 따라하기', '길벗', '윤재수', 201, 3, 0, 0, '최신 이슈와 제도, 데이터까지 반영한 주식투자입문서! 글로벌 악재와 급변하는 시장 환경에 따라 등락을 거듭하는 주식시장에서 HTS를 이용해 제대로 된 종목과 매매시점을 선정하는 법과 주식시장의 변화를 이해하기 위한 경제 흐름 읽는 법까지 알려주는 책이다.', 1, ''),
(20, '스마트스토어(스토어팜) 마케팅', '이코노믹북스', '임헌수,김태욱', 204, 3, 0, 0, '수많은 판매자들의 공통적인 고민에 대한 해답을 제시하고 있다. 스마트스토어 입점 전략, 아이템 분석 방법, 판매촉진방법, 1등 상품 만들기, 잘 팔리는 상세페이지 제작 노하우, 대박 아이템 찾기 등을 다루고 있다. 뿐만 아니라 스마트스토어를 기반으로 블로그, 페이스북, 인스타그램, 네이버 밴드, 카카오플랫폼 등으로의 확장 전략까지 다루고 있어서 초보 사업판매자들에게 큰 도움을 줄 것으로 보인다.', 0, ''),
(21, '투에이스의 부동산 절세의 기술', '지혜로', '김동우', 205, 2, 1, 0, '세무사들이 알려주는 부동산 세법과 실전 투자자가 알려줄 수 있는 ‘절세의 기술’은 다르다. 투자자는 세법 조항을 하나하나 외우고 기억하는 것이 아니라, 부동산 세법이 어떤 틀 위에서 운용되고, 그것을 실제 투자에서 어떻게 적용되는지를 보여준다.', 0, ''),
(22, '마케터의 일', '북스톤', '장인성', 206, 3, 0, 0, '배달의민족(우아한형제들) CBO 장인성이 말하는 마케터의 기본기, 기획력, 실행력, 리더십 『마케터의 일』. 마케터가 되고 싶어 하는 이들과 마케팅 실무자는 물론, 마케팅 DNA가 필요한 조직의 지침이 되어줄 마케팅에 대한 모든 이야기를 담은 책이다.', 1, ''),
(23, '부의 추월차선', '토트', '엠제이 드마코', 207, 3, 0, 0, '저자는 조금이라도 젊을 때, 인생을 즐길 수 있을 때 부자가 되어야 한다고 주장한다. 이 책은 ‘돈 나무’를 심고 단시간 내에 기하급수적으로 돈을 버는 방법에 대해 수학공식처럼 치밀하고 잘 다져진 방법을 제시한다.', 2, ''),
(24, '언스크립티드', '토트', '엠제이 드마코', 208, 3, 0, 0, '30대에 자수성가한 백만장자 사업가이며 발명가인 엠제이 드마코. 그가 젊어서 부자가 되는 길을 공개하며 ‘추월차선’이라는 말을 일반명사로 만들 만큼 큰 반향을 불러일으킨 《부의 추월차선》의 완결판.  저자는 풍요, 자유, 행복을 일깨울 청사진을 제공하고 극소수만이 꿈꾸는 인생을 자유롭게 만끽할 수 있는 기회를 제공한다.', 1, ''),
(25, '송사무장의 부동산 경매의 기술', '지혜로', '송희창', 209, 3, 0, 0, '저자가 법률사무소에서 경매팀장으로 근무하면서 경험했던 다양하고 복잡한 사건들의 처리과정과 일반투자자들이 쉽게 풀지 못한 사건들을 능숙하게 해결하면서 쌓인 경험이 고스란히 녹여져 있다. 다양한 과거의 사례들이 수록되어 있어 실전에 필요한 현장조사 방법과 명도의 기술, 그리고 낙찰 후 예측할 수 없는 여러 상황을 다양하게 접근하고 해결하는 대응방법에 포커스를 두면 유용할 것이다.', 1, ''),
(26, '태도의 품격', '다산북스', '로잔 토머스', 210, 3, 0, 0, '“당신이 어떤 성과를 낼지는 태도를 보면 단번에 알 수 있다!” 《포춘》 선정 500대 기업들이 주목한 ‘능력을 이기는 40가지 태도의 법칙.’', 1, ''),
(28, '한 권으로 정리하는 4차 산업혁명', '이지퍼블리싱', '최진기', 212, 3, 0, 0, '4차 산업혁명이 가져올 우리의 미래 삶에 대한 답은 어디에 있는가?자신만의 시각을 가진 인문학을 선보이고 있는 최진기 강사가 지난 과거의 역사와 앞서 일어난 산업혁명을 통해 다가올 변화의 시대의 해법을 제시하는 『한 권으로 정리하는 4차 산업혁명』.', 1, ''),
(30, '노포의 장사법', '인플루엔션', '박찬일', 214, 2, 1, 0, '글 쓰는 셰프, 박찬일이 만난 한국 요식업 1세대의 산증인들! 박찬일 셰프가 대한민국 곳곳에 숨은, 평균 업력 54년에 육박하는 26곳의 노포의 창업주와 대를 이은 이들을 직접 만나고 돌아왔다.', 1, ''),
(34, '그리고 저 너머에', '율리시즈', '스캇 펙', 184, 3, 0, 0, '아직도 가야할 길의 후속작', 3, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FBOK00011376096IN%3Fmoddttm=20180219145833'),
(35, '끝나지 않은 여행', '율리시즈', '스캇 펙', 185, 3, 0, 0, '아직도 가야할 길 3부작의 최종편!', 4, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FBOK00011376292IN%3Fmoddttm=20180219145833'),
(36, '스키너의 심리상자 열기', '에코의서재', '로렌 슬레이터', 186, 3, 0, 0, '이 책은 ‘인간이란 무엇인가?’, ‘인간을 인간답게 만드는 것은 무엇인가?’ 와 같이 인간 심리와 본성에 관한 가설과 이론으로 세상을 놀라게 한 20세기 천재적인 심리학자와 정신 의학자들의 위대한 심리실험 10가지를 소개하고 있다.', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788992717069%3Fmoddttm=20121006093952'),
(37, '사랑의 기술', '홍신문화사', '에리히 프롬', 187, 3, 0, 0, '정신분석학적 입장에서 사랑의 본질을 분석하고 사랑에 대한 기술을 논의한 책.', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788970551388%3Fmoddttm=20171022080619'),
(38, '죽음의 수용소에서', '청아출판사', '빅터 프랭클', 188, 3, 0, 0, '나치의 강제수용소에서 겪은 생사의 엇갈림 속에서도 삶의 의미를 잃지 않고 인간 존엄성의 승리를 보여준 프랭클 박사의 자서전적인 체험 수기. 그 체험을 바탕으로 프랭클 박사는 자신의 독특한 정신분석 방법인 로고테라피를 이룩한다.', 3, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788936805081%3Fmoddttm=20160928051427'),
(39, '감성지능', '비전 코리아', '대니얼 골먼', 189, 3, 0, 0, '이 책은 아이들이 학습을 통하여 삶에 필수적인 능력인 감성능력을 실제로 개선할 수 있다는 점을 실제 교육 사례를 통해 구체적으로 보여준다.', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788987224015%3Fmoddttm=20180228071647'),
(40, '설득의 심리학', '북21', '로버트 치알디니', 190, 3, 0, 0, '학적 근거와 명확한 논리를 바탕으로 사람들 간의 관계에서 벌어지는 복잡다단한 상황과 영향을 쉽고 재미있게 풀어 헤치면서 실제적이고 유용한 방법들을 제시한다.', 0, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788950905224%3Fmoddttm=20161218060259'),
(41, '우리 속에 있는 여신들', '또 하나의 문화', '진 시노다 볼린', 191, 3, 0, 0, '이 책은 여성들간의 다양성을 인정하고 나와 너의 다름을 받아들일 수 있는 길을 보여 준다. 볼린은 다양한 여성 심리에 그리스 신화에 나오는 일곱 여신들 - 아르테미스, 아테나, 헤스티아, 헤라, 데미테르, 페르세포네, 아프로디테 - 의 이름을 붙여 줌으로써 자신과 남을 구체적으로 파악할 수 있게 해준다.?', 2, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788985635561%3Fmoddttm=20180521064156'),
(42, '우리 속에 있는 남신들', '또 하나의 문화', '진 시노다 볼린', 192, 3, 0, 0, '현대 남성들의 특성과 심리를 고대 그리스 로마의 신들과 짝지어 분석했다. 제우스, 포세이돈, 하데스 ,아폴론, 헤르메스, 아레스, 헤파이스토스, 디오니소스. 이렇게 여덟 남신들을 의인화하고 유형화함으로써 복잡하고 다양한 남성들의 모습들을 살펴본다.', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788985635721%3Fmoddttm=20180303070729'),
(43, '수치심의 치유', '한국기독교상담연구원', '존 브래드쇼', 193, 3, 0, 0, '뉴욕타임즈 베스트셀러 선정!! 인류 최초의 감정이자 인간의 부족과 한계를 알게하는 수치심에 대해 논한 책.?', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788989171010%3Fmoddttm=20180225060329'),
(44, '나르시시즘의 심리학', '교양인', '샌디 호치키스', 194, 3, 0, 0, '이 책은 우리가 일상에서 만나게 되는 나르시시스트들로부터 \'나\'를 지키기 위해 무엇을, 어떻게 해야 할지 현실적인 조언을 제안한다. 저자는 배우자, 연인, 직장 상사, 부모, 자식 등 \'나\'의 삶을 좌우하는 나르시시스트들과의 관계를 점검하고 그에 대한 올바른 대책을 제시하고 있다.', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788991799202%3Fmoddttm=20180228071647'),
(45, '심리학의 오해', '혜안', '스타노비치', 195, 3, 0, 0, '대중매체를 통해 대중에게 전달되고 있는 \'심리학적\' 지식이라는 것은 대체로 착각이며 부정확하거나 검증되지 않은 지식들이 많다. 이 책의 목표는 단순히 심리학의 연구 내용을 소개하는 것이 아니라 심리학에 대한 오해와 편견을 불식시키고, 나아가 심리학 연구를 바라다보는 비판적 사고 능력을 배양시키려는 것이다.', 1, 'http://t1.daumcdn.net/thumb/R72x100/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fbook%2FKOR9788984941731%3Fmoddttm=20160323072542'),
(46, '신경 끄기의 기술', '갤리온', '마크 맨슨', 300, 3, 0, 0, '2017년 최고의 문제작으로 꼽히는 『신경 끄기의 기술』은 수많은 선택지와 기회비용 앞에서 인생의 목적을 잃어버린 채 가치관의 혼란을 겪는 현대인들에게 뜻밖의 깨달음을 전한다.', 1, 'http://bookthumb.phinf.naver.net/cover/126/698/12669802.jpg?type=m5'),
(47, '비울수록 사람을 더 채우는 말 그릇', '카시오페아', '김윤나', 301, 3, 0, 0, '사람들은 ‘말재주’가 뛰어난 사람을 부러워하지만, 곁에 두고 싶어 하는 사람은 결국 말에서 마음이 느껴지는 사람이다. 이 책은 우리의 말 그릇을 크고 단단하게 만들기 위한 다섯 개의 파트로 구성되어 있다.', 1, 'http://bookthumb.phinf.naver.net/cover/125/285/12528501.jpg?type=m5'),
(48, '자존감 수업', '심플라이프', '윤횽균', 302, 3, 0, 0, '자존감, 지금 시작해도 늦지 않다! 『자존감 수업』은 자존감 전문가이자 정신과 의사인 윤홍균 원장이 2년 넘게 심혈을 기울여 쓴 책으로, 자존감이 우리 삶에 미치는 영향을 친절하게 알려주고, 자존감을 끌어올리는 실질적인 방법을 알려준다.', 1, 'http://bookthumb.phinf.naver.net/cover/109/620/10962059.jpg?type=m5'),
(49, '만만하게 보이지 않는 대화법', '홍익출판사', '나이토 요시히토', 303, 3, 0, 0, '“상처 받았다면 무심코라도 웃지 마라!”필요한 말을 센스 있게 하는 대화법으로 일과 관계를 성공으로 이끄는 자존감! ', 1, 'http://bookthumb.phinf.naver.net/cover/133/963/13396385.jpg?type=m5'),
(50, '지금 하지 않으면 언제 하겠는가', '토네이도', '팀 페리스', 304, 3, 0, 0, '원하는 목표가 있다면 지금 그것을 이루어야 한다! 《타이탄의 도구들》의 저자 팀 페리스가 전하는 삶의 가장 소중한 가치와 꿈, 목표를 이루는 방법에 대한 모든 지혜 『지금 하지 않으면 언제 하겠는가』', 4, 'http://bookthumb.phinf.naver.net/cover/134/955/13495561.jpg?type=m5'),
(51, '말의 품격', '황소북스', '이기주', 305, 3, 0, 0, '말과 사람과 품격에 대한 이야기『말의 품격』은 《언어의 온도》로 많은 독자의 공감을 얻은 이기주 작가의 에세이집', 6, 'http://bookthumb.phinf.naver.net/cover/120/222/12022296.jpg?type=m5'),
(52, '유튜브의 신', '비즈니스북스', '대도서관', 306, 2, 1, 0, '부의 지도를 바꾼 유튜브 신인류들의 세상이 온다! 1인 미디어계의 인플루언서 대도서관이 들려주는 유튜버의 모든 것!', 4, 'http://bookthumb.phinf.naver.net/cover/135/499/13549940.jpg?type=m5'),
(54, '같은 말도 듣기 좋게', '위즈덤하우스', '히데시마 후미카', 308, 2, 4, 0, '학창 시절 하루 종일 한마디도 하지 않고 집에 오기를 반복하던 소심한 성격의 히데시마 후미카가 국민 DJ로 성장하는 과정에서 깨달은 42가지 대화의 기술을 안내하는 『같은 말도 듣기 좋게』.', 4, 'http://bookthumb.phinf.naver.net/cover/135/518/13551804.jpg?type=m5'),
(55, '언제 할 것인가', '알키', '다니엘 핑크', 309, 3, 0, 0, '타이밍은 어쩌면 우리 인생의 전부라고 주장하는 다니엘 핑크가 지난 2년 동안 용감무쌍한 그의 연구원들과 함께 보이지 않는 타이밍의 과학을 파헤친 결과를 토대로 보다 구체적으로 타이밍의 문제를 해결하는 방법에 대해 알려주는 책이다.', 0, 'http://bookthumb.phinf.naver.net/cover/135/134/13513429.jpg?type=m5'),
(56, '하고 싶다 다이어트', '다산북스', '안선영', 310, 3, 0, 0, '40대 몸짱의 아이콘으로 돌아온 안선영이 말하는 시간 없고 돈 나갈 곳 많은 엄마들을 위한 현실 다이어트.', 2, 'http://bookthumb.phinf.naver.net/cover/135/864/13586480.jpg?type=m5'),
(57, '그릿', '비즈니스북스', '앤절라 더크워스', 311, 2, 1, 0, '‘그릿’은 자신이 성취하고자 하는 목표를 끝까지 해내는 힘이자, 어려움, 역경, 슬럼프가 있더라도 그 목표를 향해 오랫동안 꾸준히 정진할 수 있는 능력이다. ‘그릿의 힘’을 저자는 10년에 걸친 연구 결과와 실증 사례들, 각계각층의 사람들과의 인터뷰를 통해 생생하게 보여준다.', 3, 'http://bookthumb.phinf.naver.net/cover/111/660/11166008.jpg?type=m5'),
(58, '엄마의 자존감 공부', '21세기북스', '김미경', 312, 3, 0, 0, '《언니의 독설》, 《꿈이 있는 아내는 늙지 않는다》의 저자 김미경의 흔들리는 엄마들을 위한 마음 처방전 『엄마의 자존감 공부』.', 1, 'http://bookthumb.phinf.naver.net/cover/126/973/12697343.jpg?type=m5'),
(59, '완벽한 공부법', '로크미디어', '고영성', 313, 2, 1, 0, '지금까지 이런 ‘공부법’ 책은 없었다! 모두를 위한 최고의 공부 지침서. ', 3, 'http://bookthumb.phinf.naver.net/cover/114/334/11433426.jpg?type=m5'),
(60, '착하게, 그러나 단호하게', '쌤앤파커스', '무옌거', 314, 2, 1, 0, '아마존 종합 베스트셀러 1위, 백만 독자의 삶을 영리하게 바꿔준 책! 이 책은 거절하기 힘든 사이일수록, 매일 마주하는 관계일수록, 가깝고 소중한 상대일수록 “태도는 부드럽게, 행동은 단호하게” 행동하라고 가르친다.', 1, 'http://bookthumb.phinf.naver.net/cover/134/961/13496175.jpg?type=m5'),
(63, '리셋', '솔출판사', '조광희', 100, 2, 1, 0, '재밌는 책 리셋!', 1, 'http://image.aladin.co.kr/product/14110/46/cover/k612532134_1.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `notreturned`
--

CREATE TABLE `notreturned` (
  `rental_id` int(3) NOT NULL,
  `rent_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_overdue` int(11) NOT NULL DEFAULT '0',
  `user_id` int(3) DEFAULT NULL,
  `book_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `notreturned`
--

INSERT INTO `notreturned` (`rental_id`, `rent_time`, `book_overdue`, `user_id`, `book_id`) VALUES
(27, '2018-05-25 15:46:29', 0, 1, 60),
(30, '2018-05-25 16:04:37', 0, 4, 21),
(31, '2018-05-25 16:05:57', 0, 4, 10),
(32, '2018-05-25 16:06:06', 0, 4, 30),
(33, '2018-05-25 17:09:51', 0, 2, 63),
(34, '2018-05-25 17:10:04', 0, 2, 54),
(35, '2018-05-25 17:10:14', 0, 2, 52);

--
-- 트리거 `notreturned`
--
DELIMITER $$
CREATE TRIGGER `borrow_cnt_insert2` AFTER INSERT ON `notreturned` FOR EACH ROW BEGIN
        UPDATE `userlist` SET `borrowed_book_number`=
		(SELECT COUNT(user_id) FROM notreturned AS `borrowed_book_number` WHERE user_id=NEW.user_id)
   		WHERE user_id=NEW.user_id;
      END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `user_overdue_sum` AFTER UPDATE ON `notreturned` FOR EACH ROW BEGIN
      UPDATE userlist SET overdue = (SELECT SUM(book_overdue) 
      	FROM notreturned
      	GROUP BY notreturned.user_id)
       ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 테이블 구조 `rental`
--

CREATE TABLE `rental` (
  `rental_id` int(3) NOT NULL,
  `rent_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(3) DEFAULT NULL,
  `book_id` int(3) DEFAULT NULL,
  `return_time` timestamp NULL DEFAULT NULL,
  `book_overdue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `rental`
--

INSERT INTO `rental` (`rental_id`, `rent_time`, `user_id`, `book_id`, `return_time`, `book_overdue`) VALUES
(18, '2018-05-22 17:46:07', 1, 1, '2018-05-24 15:00:00', 0),
(19, '2018-05-22 17:46:23', 2, 1, '2018-05-24 14:01:38', 0),
(20, '2018-05-22 17:46:23', 2, 2, '2018-05-22 17:46:54', 0),
(21, '2018-05-24 14:03:19', 4, 1, '2018-05-24 14:07:05', 0),
(22, '2018-05-24 14:09:12', 4, 1, '2018-05-24 15:06:33', 0),
(23, '2018-05-25 09:52:06', 4, 3, '2018-05-24 15:00:00', 0),
(24, '2018-05-25 11:21:26', 1, 54, '2018-05-25 16:52:04', 0),
(25, '2018-05-25 11:22:19', 1, 54, '2018-05-25 17:00:16', 0),
(26, '2018-05-25 11:22:27', 1, 54, '2018-05-25 15:00:00', 4),
(27, '2018-05-25 15:46:29', 1, 60, NULL, 0),
(28, '2018-05-25 16:03:23', 4, 57, '2018-05-25 16:44:33', 0),
(29, '2018-05-25 16:04:29', 4, 8, '2018-05-25 16:44:48', 0),
(30, '2018-05-25 16:04:37', 4, 21, NULL, 0),
(31, '2018-05-25 16:05:57', 4, 10, NULL, 0),
(32, '2018-05-25 16:06:06', 4, 30, NULL, 0),
(33, '2018-05-25 17:09:51', 2, 63, NULL, 0),
(34, '2018-05-25 17:10:04', 2, 54, NULL, 0),
(35, '2018-05-25 17:10:14', 2, 52, NULL, 0);

--
-- 트리거 `rental`
--
DELIMITER $$
CREATE TRIGGER `RentalAdd` AFTER INSERT ON `rental` FOR EACH ROW BEGIN
      INSERT INTO notreturned(`rental_id`, `rent_time`, `user_id`, `book_id`, `book_overdue`)
      VALUE(NEW.rental_id, NEW.rent_time, NEW.user_id, NEW.book_id, NEW.book_overdue);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `RentalUpdate` AFTER UPDATE ON `rental` FOR EACH ROW BEGIN
      UPDATE notreturned 
SET rent_time = NEW.rent_time, user_id = NEW.user_id, book_id=NEW.book_id, book_overdue=NEW.book_overdue
WHERE rental_id= NEW.rental_id;

      IF NEW.return_time IS NOT NULL THEN
      DELETE FROM notreturned WHERE rental_id = NEW.rental_id;
		END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 테이블 구조 `reviewlist`
--

CREATE TABLE `reviewlist` (
  `user_id` int(3) NOT NULL,
  `book_id` int(3) NOT NULL,
  `review_text` text NOT NULL,
  `write_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `reviewlist`
--

INSERT INTO `reviewlist` (`user_id`, `book_id`, `review_text`, `write_time`) VALUES
(1, 54, '진모 찔렸네 ㅋㅋㅋㅋㅋ', '2018-05-25 11:25:27'),
(1, 54, '진모야 말좀 이쁘게 하자...', '2018-05-25 11:29:22'),
(1, 50, '내일 하면 되지', '2018-05-25 12:00:32'),
(6, 54, '이게 그 유명한 책인가요?', '2018-05-25 16:50:44'),
(6, 54, '오졌네요', '2018-05-25 16:50:51'),
(6, 51, '책 표지가 너무 이쁘네요,.', '2018-05-25 16:51:22'),
(6, 38, '인생 책이다 ㄹㅇ', '2018-05-25 16:51:38'),
(6, 38, '오졌다', '2018-05-25 16:51:52'),
(4, 58, '엄마 힘내요!!\r\n엄마들을 위한 강력추천도서!', '2018-05-25 16:51:53'),
(6, 38, 'ㅇㅈ', '2018-05-25 16:52:03'),
(6, 52, '유투브나 해', '2018-05-25 16:52:15'),
(6, 52, '대도서관 책도 씀?ㅋㅋㅋ', '2018-05-25 16:52:23'),
(6, 52, '세상 좋아졌다', '2018-05-25 16:52:30'),
(6, 50, '모레 해도 됨 ㅇㅇ', '2018-05-25 16:53:13'),
(6, 50, '꼭 이루어야 함?', '2018-05-25 16:53:22'),
(4, 52, '보겸짱짱!!', '2018-05-25 16:53:34'),
(6, 57, '그릿 그릿', '2018-05-25 16:53:37'),
(6, 57, 'ㅇㅇㅇ', '2018-05-25 16:53:50'),
(6, 57, 'ㅁ;ㄴ이러ㅏ', '2018-05-25 16:53:57'),
(4, 50, '재이수는 내목표!!', '2018-05-25 16:54:08'),
(6, 35, '끝나지 않음?', '2018-05-25 16:54:19'),
(6, 35, '1부작 2부작은?', '2018-05-25 16:54:26'),
(6, 35, '트랜잭션이 문제임?', '2018-05-25 16:54:33'),
(2, 51, '장준용 학우님, 말하기 전에 생각했나요?', '2018-05-25 16:54:40'),
(6, 35, 'ㅇㅇㅇ?', '2018-05-25 16:54:40'),
(4, 28, '4차혁명의 중심 그곳에는 JC가 있었다.', '2018-05-25 16:54:48'),
(6, 34, '흰색', '2018-05-25 16:54:55'),
(6, 34, 'ㅁㄴㅇㄹ', '2018-05-25 16:54:58'),
(6, 34, 'ㅁㄴㅇㄹ', '2018-05-25 16:55:03'),
(2, 41, '많이 이쁜가요?', '2018-05-25 16:55:21'),
(6, 51, '생각했다 새키야', '2018-05-25 16:55:35'),
(4, 25, '잉잉!!\r\n희창이형 부동산 기술 가르쳐줘영', '2018-05-25 16:55:36'),
(2, 51, 'JC, 이새끼 욕해요', '2018-05-25 16:55:52'),
(6, 51, 'Sorry Jc...', '2018-05-25 16:56:07'),
(4, 23, '나는 왜 항상 3차선에잇는가\r\n1차선이 졓앟ㅎㅎㅎㅎ', '2018-05-25 16:56:37'),
(4, 23, '나는 왜 항상 3차선에잇는가\r\n1차선이 졓앟ㅎㅎㅎㅎ', '2018-05-25 16:56:38'),
(6, 51, '마 형이 만들었따 이거', '2018-05-25 16:56:44'),
(4, 15, '그 언니 나 소개시켜줘라', '2018-05-25 16:56:56'),
(4, 14, '손만 잡고 자자!', '2018-05-25 16:57:36'),
(4, 13, '순이 삼촌이라니 참 고우실거같아...', '2018-05-25 16:58:09'),
(4, 6, '작가님 너무 재밌게 읽었습니다.\r\n노쓰폴베어 는 나오지 않을까요?', '2018-05-25 16:58:44'),
(4, 7, '그 girl 예쁘냐', '2018-05-25 16:59:36'),
(4, 37, '에리히 프롬님 사랑을 주세요', '2018-05-25 17:00:14'),
(4, 39, '감성지능??\r\n@김인중 교수님', '2018-05-25 17:00:30'),
(4, 46, '신경끄숑', '2018-05-25 17:00:58'),
(4, 44, '나는 내가좋다 왜냐하면 내가좋기 때문이다 그이유는 내가좋이위해서 그렇게 내가좋아서 앙 내가좋아띠!', '2018-05-25 17:01:50'),
(4, 41, '그 여신 제여잡니다', '2018-05-25 17:02:11'),
(4, 47, '안에서 새는 바가지 밖에서도 샌다', '2018-05-25 17:02:33'),
(4, 45, '신성만 교수님\r\n오해입니다!!!!', '2018-05-25 17:02:48'),
(4, 42, 'BTS 짱짱맨!!', '2018-05-25 17:03:30'),
(4, 49, 'A-YO 유키스\r\n잘지내나!!?', '2018-05-25 17:03:54'),
(4, 43, '아담과 하와', '2018-05-25 17:04:08'),
(4, 48, '그 수업 \r\n몇 학점인가요? \r\n몇 학점까지 주실 수 있죠?', '2018-05-25 17:04:35'),
(4, 63, '니가 한 과제 전부 reset시킨다. 그리고 이번 과목도 리셋시켜줘라', '2018-05-25 17:06:27'),
(4, 60, '착하게, 그러나 단호하게 말한다. 사랑한다 나랑 사귀자♡', '2018-05-25 17:08:14'),
(4, 59, '완벽한 공부법 from google', '2018-05-25 17:08:44'),
(4, 59, '예습 복습 철저히 from 배하람', '2018-05-25 17:08:58'),
(4, 59, 'I am not a theorical guy but a practical guy!!', '2018-05-25 17:09:48'),
(4, 56, '헥헥헥 5키로만 5키로만 빼게 해주세요', '2018-05-25 17:10:15'),
(4, 56, '아니야 이거만 먹고 다이어트 내일부터 다이어트할거야', '2018-05-25 17:10:50'),
(4, 36, '스키너 센세 스캐너는 못하냐', '2018-05-25 17:11:53'),
(4, 30, '혹시 행님 부산 출신이십니까? 노포역 아십니까? 전부다 슦아먹자! 마!! 니 스울에서 왓나?\r\n등킨 드나쓰에서 드나쓰 슦아 무 밧나? 마 풋싼 아이가?\r\n이대호가 왓따다!', '2018-05-25 17:13:04'),
(4, 26, '당신이 어떤 성과를 낼지는 태도를 보면 단번에 알수있다.\r\n너는 F다 이새끼야', '2018-05-25 17:14:23'),
(4, 24, '우리 \'네 마음의 foreign key\' team은 발표따위 언스크립트로 한다!!', '2018-05-25 17:15:06'),
(4, 22, 'summary를 보니 마케팅 DNA라고 되있는데... 혹시 방탄 팬이십니까? 아미가 짱짱', '2018-05-25 17:15:41'),
(4, 16, '그 자리는 내가 차지하지', '2018-05-25 17:16:46'),
(4, 17, '무작정 따라하다 폭망하지! 로또나 사라', '2018-05-25 17:17:11'),
(4, 12, '잉 살인사건 무섭띠 아앙 무섭띠', '2018-05-25 17:17:39'),
(4, 10, '안도 여름이다 인마\r\n에어컨 중앙제어설정 온도 낮춰라ㅡㅡ', '2018-05-25 17:18:07'),
(4, 5, '앨리스 이쁘냐', '2018-05-25 17:18:21'),
(4, 11, '너무 무셔워서 책 표지만 보고 안 삿습니다. 작가님 항상 만수무강하십쇼', '2018-05-25 17:18:46'),
(4, 8, '내가 그 고양이 집사하지', '2018-05-25 17:19:01'),
(4, 8, '야옹이 앙 야옹띠!', '2018-05-25 17:19:10'),
(4, 9, '아몬드 초콜릿, 아몬드 비빔밥, 아몬드 떡볶이, 아몬드 라면, 아몬드 치킨 지금 시간이 몇신데 DB구현하고 잇나....\r\n자고싶다.  나에게 잠을 허락해줘 아몬드!! 손원평 작가님 아몬드 한통만 주세요', '2018-05-25 17:20:01'),
(4, 9, '아몬드 먹고파', '2018-05-25 17:20:08'),
(4, 4, '기욤뮈소님이 드디어 책을쓰다니', '2018-05-25 17:20:37'),
(4, 3, '나 미워하지마랑ㅠㅠ', '2018-05-25 17:20:54'),
(4, 2, '그것은 바로 재이수의 길이다!', '2018-05-25 17:21:10'),
(4, 1, '내 꿈을 마음대로 해석하다니 내마음을 훔쳐갔으니', '2018-05-25 17:21:26'),
(4, 1, '오늘부터 1일이다.', '2018-05-25 17:21:33');

-- --------------------------------------------------------

--
-- 테이블 구조 `userlist`
--

CREATE TABLE `userlist` (
  `user_id` int(3) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `overdue` int(3) NOT NULL DEFAULT '0',
  `borrowed_book_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `userlist`
--

INSERT INTO `userlist` (`user_id`, `user_name`, `phone_number`, `overdue`, `borrowed_book_number`) VALUES
(1, 'sungwoo', '01082919317', 4, 2),
(2, 'sangHm', '0107777', 0, 3),
(4, 'Jinmo', '121212', 0, 3),
(5, '성우', '010', 0, 0),
(6, '장준용', '010-5277-3392', 0, 0),
(7, '장신협', '010-3293-2759', 0, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `wishbook`
--

CREATE TABLE `wishbook` (
  `wish_id` int(3) NOT NULL,
  `book_name` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `wish_cnt` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `wishbook`
--

INSERT INTO `wishbook` (`wish_id`, `book_name`, `author`, `wish_cnt`) VALUES
(1, '희망도서1', '천성우', 2),
(3, '희망도서2', '우상흠', 1);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `booklist`
--
ALTER TABLE `booklist`
  ADD PRIMARY KEY (`book_id`);

--
-- 테이블의 인덱스 `notreturned`
--
ALTER TABLE `notreturned`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- 테이블의 인덱스 `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- 테이블의 인덱스 `reviewlist`
--
ALTER TABLE `reviewlist`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- 테이블의 인덱스 `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`user_id`);

--
-- 테이블의 인덱스 `wishbook`
--
ALTER TABLE `wishbook`
  ADD PRIMARY KEY (`wish_id`),
  ADD UNIQUE KEY `book_name` (`book_name`),
  ADD UNIQUE KEY `author` (`author`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `booklist`
--
ALTER TABLE `booklist`
  MODIFY `book_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 테이블의 AUTO_INCREMENT `rental`
--
ALTER TABLE `rental`
  MODIFY `rental_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 테이블의 AUTO_INCREMENT `userlist`
--
ALTER TABLE `userlist`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `wishbook`
--
ALTER TABLE `wishbook`
  MODIFY `wish_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `notreturned`
--
ALTER TABLE `notreturned`
  ADD CONSTRAINT `notreturned_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlist` (`user_id`),
  ADD CONSTRAINT `notreturned_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `booklist` (`book_id`);

--
-- 테이블의 제약사항 `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlist` (`user_id`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `booklist` (`book_id`);

--
-- 테이블의 제약사항 `reviewlist`
--
ALTER TABLE `reviewlist`
  ADD CONSTRAINT `reviewlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlist` (`user_id`),
  ADD CONSTRAINT `reviewlist_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `booklist` (`book_id`);

DELIMITER $$
--
-- 이벤트
--
CREATE DEFINER=`root`@`localhost` EVENT `increase_overdue` ON SCHEDULE EVERY 1 DAY STARTS '2018-05-25 23:11:33' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE rental SET book_overdue = book_overdue + 1 WHERE return_time is null AND (SELECT TIMESTAMPDIFF(DAY, rent_time, CURRENT_TIMESTAMP)) > 14$$

CREATE DEFINER=`root`@`localhost` EVENT `monthly_reset` ON SCHEDULE EVERY 1 MONTH STARTS '2018-06-01 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE BookList SET mon_cnt = 0$$

CREATE DEFINER=`root`@`localhost` EVENT `decrement_overdue` ON SCHEDULE EVERY 1 DAY STARTS '2018-05-26 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE rental SET book_overdue = book_overdue - 1 WHERE book_overdue > 0 AND return_time IS NOT NULL$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
