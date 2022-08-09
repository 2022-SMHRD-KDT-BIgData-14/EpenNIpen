# 이펜니펜팀이 찾아주는 너의 필기구
![image](https://user-images.githubusercontent.com/106059465/183614251-25fa9ab8-e8be-4b81-aff7-38325712d156.png)

# 1. 프로젝트 목적
+ 소비자의 필기구 구매에 도움이 되도록 제품의 특성을 분류하여 제공하는 서비스
+ 워드클라우드를 활용하여 제품의 후기 파악이 더욱 직관화되도록 제공
+ 웹 사이트의 접근환경이 다양화되고 있는 점을 고려, Bootstrap을 활용한 유동성 페이지 구성하여 다양한 기기에서 안정적인 접속
<br/>
---
<br/>
# 2. 주요 기능
+ 제품 상세페이지에서 최저가 및 사이트 연결
+ 워드클라우드를 통한 직관적인 리뷰
+ 제품명, 제품 특성의 검색 기능
+ 제품의 특성의 필터화 제공
+ 재미요소인 드림펜찾기 서비스
<br/>
---
<br/>
# 3. 서비스 흐름도
![image](https://user-images.githubusercontent.com/106059465/183618466-2347ae56-6d95-4188-aad5-956b5131861d.png)
<br/>
---
<br/>
# 4. 데이터 수집
## 수집 사이트 : 펜디포
![image](https://user-images.githubusercontent.com/106059465/183618809-d8a68a00-d1b0-40d6-9722-0714e63fcddb.png)

### 수집 방법 : Python의 requests, beautifulSoup, Selenium라이브러리
### 수집 종류 : 제품명, 타입, 특성, 가격, 리뷰, 이미지, 상세이미지, 연결URL
### 수집양 : 제품 511개, 리뷰 400개 대상
#### 리뷰 10개 이하의 제품은 대상에서 제외하여 신뢰성 확보
<br/>
---
<br/>
# 5. 유사 사이트와의 차별점
![image](https://user-images.githubusercontent.com/106059465/183616868-1e42cd30-7532-43e0-bd26-b1b0f88fcd59.png)<br/>
**자사제품만을 소개하는 제조회사 페이지 / 사용자가 원하는 요소로 필터화 되어 있지 않음**
<br/><br/>

## 이펜니펜의 사이트에서는?
![image](https://user-images.githubusercontent.com/106059465/183617557-1528dbfa-cf83-4e6d-aae2-f71cc63ca9b9.png)<br/>
**제품명, 제품 특성으로 검색 가능!**
<br/>

![image](https://user-images.githubusercontent.com/106059465/183617574-705324a9-c685-4c13-8cb4-8cf0d104a17c.png)<br/>
**제품의 특성을 골라 적용할 수 있는 필터 기능 제공!**
<br/>
--- 
<br/>
# 6. 사용자 편의 지향
![image](https://user-images.githubusercontent.com/106059465/183617977-1a82682f-41e4-482e-86ad-158303fbd26d.png)<br/>
**서비스 사용 중 개선사항이 있다면 만족도조사로 내 의견 전달하기!**

![image](https://user-images.githubusercontent.com/106059465/183618144-dfe211ab-29ac-4a78-b0d1-7398c4315387.png)<br/>
**다양한 기기에서 안정적인 접속이 가능하도록 유동성 페이지 구축!**
<br/>
--- 
<br/>
# 7. 향후 발전 방향
## 1) 수집 제품의 확대
**현재, 구축 사이트는 필기구 중 '연필', '샤프', '볼펜', '만년필', '형광펜'으로 한정된 5가지 종류의 제품군 제공**<br/>
**&nbsp;⇨ 추후 다양한 제품군으로 확대 적용, 사용자의 필기구 선택폭을 넓혀 줄 예정**

## 2) 다른 제품군 소개 사이트 연결 기능 제공
**현재, 필기구에 한정된 서비스를 제공 중**
**&nbsp;⇨ 추후 다른 분야로의 개별 서비스 페이지 구축 시, 아래와 같은 전문성을 가진 자사 페이지들의 연결 기능 제공**<br/>
![image](https://user-images.githubusercontent.com/106059465/183621073-b3ffe954-3409-4f13-bfce-ec73543816c6.png)<br/>

## 3) 사용자 중심의 편의 구축
**현재, 서비스중인 '만족도조사'로 지속적인 사용자 의견 접수를 진행하여 개선된 서비스 제공**

## 4) 사이트 수익 구조
**현재, 소개중인 제품들의 제조사들과의 협의를 통해 사용자의 제품 클릭 건 수, 최저가 페이지 접속 건 수 등으로 수익구조 계획**
<br/>
---
<br/>
# 8. 개발 후기
<br/>
![image](https://user-images.githubusercontent.com/106059465/183621786-980cc797-bf0e-4882-a6ce-b9d855d0b7e8.png)

<br/>
![image](https://user-images.githubusercontent.com/106059465/183621868-bf6ca2f9-99d6-46db-adc3-bb413fdb44bd.png)

<br/>
![image](https://user-images.githubusercontent.com/106059465/183621957-b77f89d8-344e-48ca-9a8f-df2bad1d29ef.png)

<br/>
![image](https://user-images.githubusercontent.com/106059465/183622018-d2b18816-02f2-44e4-9d74-bd4552777756.png)
