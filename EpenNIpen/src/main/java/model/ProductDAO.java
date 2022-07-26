package model;

import java.lang.reflect.Array;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class ProductDAO {
	private SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();

//	wordcloud 파일명 배열에 담기
	public String[] wordcloudNamelist() {
		String[] wordcloudNamelist = {"BIC 빅 라운드스틱 볼펜 1.0mm 1타(12자루)", "PENTEL 펜텔 (메카니카) 고급 제도샤프 0.5mm (PG5)", "SAKURA 사쿠라 겔리롤 시리즈 (gelly roll) 데코펜 (XPGB)", "SAKURA 사쿠라 피그마 망가 6본 세트 - 만화 그리기용 오리지널 키트", "Zebra millipen 제브라 밀리펜 0.1mm (MWS-101)", "ZEBRA 제브라 사라사 클립 화이트바디 M 0.5mm (한정판)", "고쿠요 비틀팁 2색형광펜", "고쿠요 비틀팁 Beetle Tip 3way 형광펜 (PM-L301)", "기타보쉬 목재샤프 우드노트(Wood Note) 0.5mm - 파스텔바디", "기타보쉬 목재샤프 우드노트(Wood Note) 0.5mm - 형광바디", "까렌다쉬 849 메탈 볼펜 클래식", "까렌다쉬 884 인피니트 샤프 - 0.5mm", "동아 D3·20 3색 멀티펜 0.38 0.5 0.7mm", "동아 U-knock 유노크 겔펜(중성펜) 0.5 (1타12자루)", "동아 네오라인 형광펜 (소프트 11컬러  브라이트 3컬러)", "동아 파인테크(1타12개)", "로트링 300 샤프 0.5  0.7mm", "로트링 500 0.50.7 샤프", "로트링 600 0.50.7 샤프", "로트링 800 0.50.7 샤프", "로트링 Tikky 티키샤프 시리즈", "로트링 샤프 라피드프로 블랙 0.50.7", "로트링300 홀더 샤프 2.0mm (RO502320)", "모리스 저스트클릭 M2 노크식 형광펜", "모리스 퀵마크S 노크식형광펜 (MRH-105)", "모리스 퀵마크S 형광펜 마일드 (MRH-205)", "문화 더존 연필 1타(12자루)", "미쯔비시 hi-uni 하이유니 전문가용 고급연필 1타 (12자루)", "미쯔비시 uni STYLE FIT 유니 스타일핏 139 슬림 싱글컬러 젤잉크펜 0.28 (UMN-139-28)", "미쯔비시 uni STYLE FIT 유니 스타일핏 139 슬림 싱글컬러 젤잉크펜 0.38 (UMN-139-38)", "미쯔비시 uni STYLE FIT 유니 스타일핏 3구홀더 208 메탈시리즈 (UE3H-208)", "미쯔비시 uni STYLE FIT 유니 스타일핏 5구홀더 258시리즈 (UE5H-258)", "미쯔비시 uni STYLE FIT 유니 스타일핏 마이스터 멀티펜5구홀더 (UE5H-508)", "미쯔비시 샤카샤카 알파겔샤프 (M5-617 GG)", "미쯔비시 알파겔 슬림샤프 0.5mm (M5-807GG)", "미쯔비시 알파겔 슬림샤프 0.5mm (M5-809)(한정상품)", "미쯔비시 유니 스타일핏 4구(4색) 홀더(UE4H-227)", "미쯔비시 유니 시그노 노크식 RT1 겔잉크 볼펜 0.280.38mm (UMN-155-2838)", "미쯔비시 유니 시그노칼라볼펜 (유니볼 시그노 스탠다드) (UM-100)", "미쯔비시 유니 연필 1타 (12자루)", "미쯔비시 유니 쿠루토가 어드밴스 (M5-559)", "미쯔비시 유니 프로퍼스 형광펜 (PUS-102T) 화이트바디", "미쯔비시 유니볼 비젼엘리트 (UB-205)", "미쯔비시 유니볼 시그노 RT1 노크식 볼펜 1타(10개입) 0.280.38 (UMN-155-2838)", "미쯔비시 유니볼 시그노 볼펜 0.5mm (UMN-152)", "미쯔비시 유니볼 시그노 칼라볼펜 0.280.380.50.7 (UM-151)", "미쯔비시 제트스트림 2&1 멀티펜 (흑,적+샤프) 0.5mm (MSXE3-500-05)", "미쯔비시 제트스트림 3&1 멀티펜(0.7흑,청,적 + 0.5샤프) (MSXE4-600-07)", "미쯔비시 제트스트림 3색 볼펜 (흑;청;적) 0.5mm (SXE3-400-05)", "미쯔비시 제트스트림 3색볼펜(흑;청;적) 0.7mm (SXE3-400-07)", "미쯔비시 제트스트림 4색 멀티펜(0.7흑,청,적,녹) (SXE4-500-07)", "미쯔비시 제트스트림 엣지 단색 3색 볼펜 한정판 0.28", "미쯔비시 제트스트림 엣지 단색 볼펜 0.280.38mm", "미쯔비시 쿠루토가 KURUTOGA 샤프 0.5mm (M5-450)", "미쯔비시유니볼 아이 볼펜 마이크로펜 (내수성이 뛰어난 안료잉크)(UB-150)", "미쯔비시유니볼 아이 볼펜 마이크로펜 0.5mm 1타(12개입) (UB-150)", "사쿠라 겔리롤 화이트 - 3가지 굵기 (XPGB)", "샤피 탱크 형광펜", "샤피 포켓 형광펜 1타(12개입)", "샤피 포켓 형광펜", "스타빌로 보스 오리지날 파스텔 형광펜 - 14가지 컬러 (4색6색8색 세트)", "스타빌로 블랙 파인 볼펜", "스타빌로 스윙쿨 파스텔 형광펜(14가지 컬러  4본세트  6본세트)", "스타빌로 스윙쿨 형광펜(10가지 컬러)", "스타빌로 이지그래프 연필 2본 세트 3.15mm  HB (오른손잡이 왼손잡이)", "스타빌로 이지에고(이지스타트) 1.4mm 어린이용 샤프식 연필 (오른손잡이용  왼손잡이용)", "스타빌로 이지에고(이지스타트) 3.15mm 어린이용 샤프식 연필 (오른손잡이용  왼손잡이용)", "스타빌로 플래시 형광펜", "스테들러 120 노리스 연필 1타(12자루)", "스테들러 1285 점보 삼각 어린이연필 1타 (12자루) 2B (1285-1)", "스테들러 308 피그먼트 라이너 0.05~0.8 (12가지 선굵기) (308)", "스테들러 308 피그먼트 라이너 컬러 0.30.5mm", "스테들러 925-15 샤프 0.30.50.70.9 (925-15)", "스테들러 Graphite 그라파이트777 샤프 0.5mm (777-05)", "스테들러 Mars Lumogrph 최고급연필(20가지심등급) 1 DZ (12개) (100)", "스테들러 노리스 122 지우개연필 HB 1타(12개) (122)", "스테들러 노리스 에고소프트 점보 삼각 어린이연필 2B3mm 심직경 (1타12개) (153)", "스테들러 노리스 점보 샤프 1.3mm (771)", "스테들러 마르스 테크니코 최고급 2mm연필심 홀더 (780C)", "스테들러 마스 루모그라프 슈퍼점보 연필 (100J)", "스테들러 마스 에고소프트 점보 삼각 어린이연필 2B 1DZ(12개)(151)", "스테들러 실버네이비 샤프 시리즈 0.3 0.5 0.7 0.9 1.3 2.0 (925-2535)", "스테들러 아방가르드 927-AG 멀티펜(블랙+블루+레드+샤프 0.5)", "스테들러 옐로우 펜슬 1DZ(12개) (134)", "스테들러 텍스트서퍼 고체형광펜 1타(10개입) (264)", "스테들러 텍스트서퍼 고체형광펜 (264) 5색세트", "스테들러 텍스트서퍼 고체형광펜 (264)", "스테들러 텍스트서퍼 클래식 파스텔 형광펜 10색 세트 (364 CWP10)", "스테들러 텍스트서퍼 클래식 파스텔 형광펜 6색 세트 (364 CWP6)", "스테들러 텍스트서퍼 클래식 파스텔 형광펜 (364)", "스테들러 텍스트서퍼 클래식 형광펜 (364)", "스테들러 트레디션 연필 HB2B4B 1DZ(12개)(110)", "스테들러 트리플러스 마이크로 샤프 0.5mm (774-25)", "스테들러 트리플러스 텍스트서퍼 파스텔 형광펜 (362)", "스테들러 트리플러스 텍스트서퍼 형광펜 4본세트 (362 SB4)", "스테들러 트리플러스 텍스트서퍼 형광펜 (362)", "스테들러 한정판 925 35 시안블루 브론즈핑크 0.5mm", "오토 Bloom블룸 3 in1 멀티펜(볼펜+샤프)", "오토 no-noc(노-노크)샤프 0.5mm-다크컬러", "오토 no-noc(노-노크)샤프 0.5mm-투톤컬러( AP-505N)(한정상품)", "오토 멀티-B 2+1 멀티펜 (흑+적+샤프 0.5) (MF-20K3B)", "오토 컨셉션 샤프 0.5mm (2가지 기능 탑재!) (SP-1505C)", "오토 호라이즌 샤프 0.5mm (AP-705H)", "유니 미쯔비시 프로퍼스 형광펜 뉴컬러 5색세트 (PUS-102T 5CS)", "유니 유니볼 원 0.380.5mm (UMN-S-3805)", "유니 유니볼 원 한정판 3색 세트 0.38 0.5 어텀 윈터", "유니 유니볼 원 한정판 클래시컬 컬러 3색 세트", "유니 유니볼 원 후르츠티 한정판 세트 0.38mm", "유니 전용 케이스 시그노 기획세트(뉴컬러포함 48색) (한정판)", "유니 제트스트림 3색 507 볼펜 (SXE3-507-05)", "유니 제트스트림 3색 멀티펜 0.38mm (SXE3-400-38)", "유니 제트스트림 3색 해피니스 컬러 (한정판)", "유니 제트스트림 고급 3색(흑청적) 멀티펜(SXE3-800-0507)", "유니 제트스트림 볼펜 0.380.50.71.0 (SXN-150-38050710)", "유니 제트스트림 볼펜 파스텔마카롱&다크 0.5mm (SXN-150-05) 한정판", "유니 제트스트림 볼펜 해피니스 컬러 0.5mm (한정판)", "유니 제트스트림 프라임 3색볼펜 (SXE3-3000-0705)", "유니 퓨어몰트 제트스트림 인사이드 4&1 블랙 멀티펜 (흑,청,적,녹+샤프) (MSXE5-2005-07)", "제노 RB 3색볼펜 1타(12개입) - 0.380.50.7mm", "제노 샤프 0.50.70.91.3 mm(1타12개)", "제노 제도샤프XD (0.30.50.70.91.3) 1타(12개입)", "제노 파스텔큐 샤프 0.5mm - 6가지 색상", "제브라 Delguard Type-ER (델가드 ER) 0.5mm 샤프 (P-MA88)", "제브라 OPTEXCARE 옵텍스케어 형광펜 10본", "제브라 OPTEXCARE 옵텍스케어 형광펜 5본", "제브라 OPTEXCARE 옵텍스케어 형광펜 (WKCR1)", "제브라 SURARI multi(스라리멀티) 0.7 4+1(흑,청,적,녹+샤프0.5m)(B4SAZ11)", "제브라 Tect 2way Light 텍트 투웨이 라이트 샤프 0.5mm", "제브라 델가드 Type-LX 0.5 샤프(P-MA86)", "제브라 델가드 그라데이션 0.5mm (한정판) (P-MA85-A2)", "제브라 델가드 스포티 컬러 샤프 0.5mm(한정상품)", "제브라 델가드(심이 부러지지 않는 샤프) 0.5", "제브라 드라픽스 0.5 칼라바디샤프 (DM5-300)", "제브라 드라픽스 샤프(DM-300)", "제브라 마일드라이너 디즈니 5색 세트 (한정판)", "제브라 마일드라이너 모레루미뇽 (WKT7-A1)(한정상품)", "제브라 마일드라이너 브러쉬 트윈형광펜 (WFT8)", "제브라 마일드라이너 우리말묶음 5색세트 (한정판)", "제브라 마일드라이너 트윈형광펜 (시원한색) 5색세트 (WKT7-5C-NC)", "제브라 마일드라이너 트윈형광펜 3색세트 (WKT7-3C)", "제브라 마일드라이너 트윈형광펜 5색세트 HC (WKT7-5C-HC)", "제브라 마일드라이너 트윈형광펜 5색세트 N (WKT7-N-5C)", "제브라 마일드라이너 트윈형광펜 기본5색세트 (WKT7-5C)", "제브라 블렌 볼펜 0.5mm0.7mm(BAS88BA88)", "제브라 블렌 볼펜 한정판 5본 세트", "제브라 사라사 0.40.50.71.0mm", "제브라 사라사 3+S 멀티펜 (흑,청,적+샤프) 0.5 (SJ3)", "제브라 사라사 3색볼펜(흑,청,적) 0.5 (J3J2)", "제브라 사라사 그랜드 빈티지 0.5mm", "제브라 사라사 드라이 0.4 0.5 mm (JJS31 JJ31)", "제브라 사라사 마크온 0.40.5mm (JJS77JJ77)", "제브라 사라사 클립 0.30.40.50.71.0mm (JJH15JJS15JJ15JJB15JJE15)", "제브라 사라사 클립 빈티지 0.5mm 세트", "제브라 수첩용 T-3 미니볼펜 (0.7mm 스텐스틸)", "제브라 수첩용 TS-3 미니샤프펜슬 (0.5mm 스텐스틸)", "제브라 스라리 3C 3색볼펜 (0.7 흑,청,적) (B3A11)", "제브라 에스피나300 샤프 시리즈 0.5 (MA3)", "제브라 에어피트 LT 샤프 시리즈 0.5mm", "제브라 에어피트 샤프 시리즈 0.5mm", "제브라 클립온 멀티 1000 시리즈 + 케이스 증정", "제브라 클립온 슬림 3색 멀티펜(흑+청+적) (B3A5)", "제브라 클립온멀티 시리즈 4+1 (0.7mm 흑,청,적,녹+0.5mm 샤프) (B4SA1)", "제브라 타프리 클립 볼펜1타 (10개입) 0.50.71.01.6mm", "제브라 타프리클립 샤프 시리즈 0.5mm", "제트스트림 4&1 멀티펜 0.38 ( 0.38흑,청,적,녹 + 0.5샤프 ) (MSXE5-1000-38)", "제트스트림 4&1멀티펜 디즈니 한정판 (MSXE5-1500D-05)", "제트스트림 4&1멀티펜0.5 ( 0.5흑,청,적,녹 + 0.5샤프 ) (MSXE5-1000-05)", "제트스트림 4&1멀티펜0.7 ( 0.7흑,청,적,녹 + 0.5샤프 ) (MSXE5-1000-07)", "제트스트림 메탈 4&1멀티펜 0.5mm (MSXE5-2000A-05)", "톰보 MONO-J 모노제이 (전문가용,미술용)연필 1타스 (12자루)", "톰보 모노그래프 네온 샤프 0.5mm (DPA-134)", "톰보 모노그래프 샤프 0.5mm (DPA-132)", "톰보 모노그래프 제로 샤프 0.5mm (DPA-162)", "톰보 모노그래프 클리어 샤프 0.5mm (DPA-138)", "톰보 모노그래프 파스텔 샤프 0.5mm (DPA-136)", "톰보 코트 단면 형광펜 5본10본세트 (WA-SC 5C10C)", "톰보 코트형광펜 단면 1갑(10개)(WA-SC)", "파버카스텔 CASTELL(지우개없는) 카스텔9000 연필(1타스) (11 90)", "파버카스텔 Gold Faber 골드파버 1222 (지우개달린) 연필 (1타스)", "파버카스텔 POLY MATIC 폴리매틱 샤프 0.5 (2328)", "파버카스텔 TK 4600 클러치 펜슬 홀더 2mm", "파버카스텔 TK-FINE 바리오L (A급) 제도샤프 0.350.50.71.0", "파버카스텔 TK-FINE 샤프 (9713971597179719)", "파버카스텔 블랙파버(블랙리드) 지우개 달린 연필 1타(12자루) B  HB  2B (11 12)", "파버카스텔 카스텔9000 퍼펙트펜슬 기프트 박스 (11 90 37)", "파이롯트 4+1 우드 멀티펜 0.7mm (BKHFW-2SR)", "파이롯트 G-2 단색 볼펜 0.50.7mm", "파이롯트 S10 샤프 0.30.40.50.70.9mm (HPS-1SR)", "파이롯트 S20 우드 샤프 0.30.5mm", "파이롯트 S30 우드 샤프 0.5mm (HPS-3SK)", "파이롯트 닥터그립 4+1 멀티펜 0.7mm (BKHDF1SFN)", "파이롯트 닥터그립 풀블랙 볼펜 0.7mm (BDGFB-80F)", "파이롯트 닥터그립 풀블랙 샤프 0.5mm (HDGFB-80R)", "파이롯트 닥터그립 플레이보더 샤프 0.5", "파이롯트 모굴에어 샤프 0.5mm", "파이롯트 슈퍼그립G 노크식 단색 볼펜 0.50.71.0mm", "파이롯트 슈퍼그립G 캡식 단색 볼펜 0.50.71.01.21.6mm", "파이롯트 아크로볼 3색 볼펜 0.7mm (BKAB40F-BG)", "파이롯트 아크로볼 노크식 유성볼펜 0.50.71.0mm (BAB-15)", "파이롯트 옵트 샤프 0.5mm (HOP-20R)", "파이롯트 쥬스업 젤잉크 볼펜 0.3  0.4  0.5mm - 10컬러", "파이롯트 쥬스업 젤잉크 볼펜 0.3  0.4mm - 10컬러 세트", "파이롯트 쥬스업 젤잉크 볼펜 파스텔컬러 0.4mm", "파이롯트 패티1(쁘띠1) 미니 만년필(SPN-20F)", "파이롯트 프릭션 4색 볼펜 (LKFB-80EF)", "파이롯트 프릭션 라이트 지워지는 형광펜 (SFL-10SL)", "파이롯트 프릭션 볼 슬림 0.38 지워지는 볼펜 (LFBS-18UF)", "파이롯트 프릭션라이트 형광펜(소프트) 지워지는형광펜 1타(10개입) (SFL-10SL)", "파이롯트 프릭션볼 노크 지워지는볼펜 (0.50.7mm)", "파이롯트 프릭션볼 노크 지워지는볼펜1타(10개입) (0.50.7mm)", "파이롯트 하이테크 마이카 볼펜 0.3 0.4(LHM-15C315C4)", "파이롯트 하이테크C 0.250.30.40.5mm 1타(10개입)", "파이롯트 하이테크C 0.250.30.40.5mm", "파이롯트 하이테크C 콜레토 멀티펜 홀더 2구3구4구5구", "파이롯트 하이테크c 콜레토미 coleto me 멀티펜 4구홀더 (PLHKCM-50C)", "파카 조터(트랜스포메이션) CT 샤프 0.5mm", "페낙 NP-X 샤프 0.5", "펜텔 caplet 캐플릿샤프(A105)", "펜텔 KERRY 케리 샤프 0.5mm (P1035)", "펜텔 그래프1000 CS(크리에이터 스타일) 제도샤프0.5mm (PG1005CS)", "펜텔 그래프기어 GraphGear1000 샤프 0.30.40.50.70.9mm", "펜텔 스매쉬 샤프 0.30.5mm", "펜텔 스털링샤프 시리즈 0.5 (A810EA811)", "펜텔 아인 샤프 (A125)", "펜텔 에너겔 니들포인트(니들팁) 노크 0.5 (BLN75)", "펜텔 에너겔 메탈포인트(메탈팁) 겔잉크롤러볼펜 0.7mm (BL77)", "펜텔 에너겔 슬림 노크식 겔 볼펜 0.50.7mm", "펜텔 에너겔X 중성펜 (BLN105BL107)", "펜텔 오렌즈 네로 샤프 0.30.5 mm(PP3003-APP3005-A)", "펜텔 오렌즈 메탈 그립 샤프 - 0.2 mm (XPP1002G)", "펜텔 오렌즈 메탈 그립 샤프 - 0.30.5 mm (XPP1003G1005G)", "펜텔 오렌즈 샤프 0.20.30.5 mm (P50235)", "펜텔 제도샤프 0.3 0.5 0.7 0.9 ( P203P205P207P209 )", "펜텔 제도샤프 120 A3 dx - 0.30.50.70.9mm (A313A315A317A319)", "펜텔 캐플릿(Caplet 2)샤프(A105C)", "펜텔 테크닉클릭(테크니클릭) 뉴트로 샤프 0.5mm (PD105C-L)", "펜텔 테크닉클릭(테크니클릭) 샤프 0.5mm (PD105T)  (PD105C)", "펜텔 트라디오수성펜(TRJ50)", "펜텔 트윈체커 듀얼 팁 형광펜(SLW8-G)", "펜텔 피트라인 파스텔 형광펜(SLW11P)", "펜텔그래프1000 샤프 for PRO 0.30.40.50.70.9mm graph1000 (PG1003,1004,1005,1007,1009)", "플래티넘 뉴 프레피 preppy 만년필 F촉(03)", "플래티넘 오레누(오레뉴) 200 샤프 (MOLS-200)", "플래티넘 프레피만년필 EF(02)"};
		return wordcloudNamelist;
	}
	
//	Top5 출력
	public ArrayList<ProductDTO> showReviewTop5() {
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<ProductDTO> top_list = (ArrayList)session.selectList("showReviewTop5");
		session.close();

		return top_list;
	}	
	
//	연필 제품 조회
	public ArrayList<ProductDTO> showPs(){
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<ProductDTO> ps_list = (ArrayList)session.selectList("showPs");
		session.close();
		
		return ps_list;
	}
//	샤프 제품 조회
	public ArrayList<ProductDTO> showSp(){
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<ProductDTO> sp_list = (ArrayList)session.selectList("showSp");
		session.close();
		
		return sp_list;
	}
//	볼펜 제품 조회
	public ArrayList<ProductDTO> showBp(){
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<ProductDTO> bp_list = (ArrayList)session.selectList("showBp");
		session.close();
		
		return bp_list;
	}
//	형광펜 제품 조회
	public ArrayList<ProductDTO> showHi(){
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<ProductDTO> hi_list = (ArrayList)session.selectList("showHi");
		session.close();
		
		return hi_list;
	}
//	만년필 제품 조회
	public ArrayList<ProductDTO> showFp(){
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<ProductDTO> fp_list = (ArrayList)session.selectList("showFp");
		session.close();
		
		return fp_list;
	}
	
	
	//	세부 제품 조회
	public ProductDTO detailPage(String product) {
		SqlSession session = sqlsessionFactory.openSession(true);
		ProductDTO product_detail = session.selectOne("detailPage", product);
		session.close();

		return product_detail;
	}
}