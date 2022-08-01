<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	crossorigin="anonymous" pageEncoding="UTF-8"></script>
<title>SearchFilter</title>
<style>
</style>
</head>
<body>
	<table>
		<tbody>
			<tr>
				<th>제품분류</th>
				<td><input type="checkbox" id="pencil" name="pencil" value="연필"
					onchange="makeFilter(this);" /> <label for="age10">연필</label></td>
				<td><input type="checkbox" id="sharp" name="sharp" value="샤프"
					onchange="makeFilter(this);" /> <label for="age10">샤프</label></td>
				<td><input type="checkbox" id="pen" name="pen" value="볼펜"
					onchange="makeFilter(this);" /> <label for="age10">볼펜</label></td>
				<td><input type="checkbox" id="highlighter" name="highlighter"
					value="형광펜" onchange="makeFilter(this);" /> <label for="age10">형광펜</label>
				</td>
				<td><input type="checkbox" id="fountainPen" name="fountainPen"
					value="만년필" onchange="makeFilter(this);" /> <label for="age10">만년필</label>
				</td>
			</tr>
			<tr>
				<th>용도</th>
				<td><input type="checkbox" id="write" name="write" value="필기"
					onchange="makeFilter(this);" /> <label for="age10">필기용</label></td>
				<td><input type="checkbox" id="drawing" name="drawing"
					value="제도" onchange="makeFilter(this);" /> <label for="age10">제도용</label></td>
				<td><input type="checkbox" id="art" name="art" value="미술"
					onchange="makeFilter(this);" /> <label for="age10">미술용</label></td>
			</tr>
			<tr>
				<th>진하기</th>
				<td><input type="checkbox" id="2B" name="2B" value="2B"
					onchange="makeFilter(this);" /> <label for="age10">2B</label></td>
				<td><input type="checkbox" id="4B" name="4B" value="4B"
					onchange="makeFilter(this);" /> <label for="age10">4B</label></td>
				<td><input type="checkbox" id="6B" name="6B" value="6B"
					onchange="makeFilter(this);" /> <label for="age10">6B</label></td>
				<td><input type="checkbox" id="H" name="H" value="H"
					onchange="makeFilter(this);" /> <label for="age10">H</label></td>
				<td><input type="checkbox" id="HB" name="HB" value="HB"
					onchange="makeFilter(this);" /> <label for="age10">HB</label></td>
			</tr>
			<tr>
				<th>형태</th>
				<td><input type="checkbox" id="cover" name="cover" value="뚜껑형"
					onchange="makeFilter(this);" /> <label for="age10">뚜껑형</label></td>
				<td><input type="checkbox" id="knock " name="knock" value="노크형"
					onchange="makeFilter(this);" /> <label for="age10">노크형</label></td>
				<td><input type="checkbox" id="twist " name="twist"
					value="트위스트형" onchange="makeFilter(this);" /> <label for="age10">트위스트형</label></td>
			</tr>
			<tr>
				<th>잉크종류</th>
				<td><input type="checkbox" id="oil" name="oil" value="유성펜"
					onchange="makeFilter(this);" /> <label for="age10">유성펜</label></td>
				<td><input type="checkbox" id="water" name="water" value="수성펜"
					onchange="makeFilter(this);" /> <label for="age10">수성펜</label></td>
				<td><input type="checkbox" id="gel" name="gel" value="중성펜"
					onchange="makeFilter(this);" /> <label for="age10">중성펜</label></td>
			</tr>
			<tr>
				<th>두께별</th>
				<td><input type="checkbox" id="0.5" name="0.5" value="~0.5mm"
					onchange="makeFilter(this);" /> <label for="age10">~0.5mm</label></td>
				<td><input type="checkbox" id="0.7" name="0.7" value="~0.7mm"
					onchange="makeFilter(this);" /> <label for="age10">~0.7mm</label></td>
				<td><input type="checkbox" id="1.0" name="1.0" value="~1.0mm"
					onchange="makeFilter(this);" /> <label for="age10">~1.0mm</label></td>
				<td><input type="checkbox" id="1.05" name="1.05"
					value="~1.05mm" onchange="makeFilter(this);" /> <label for="age10">~1.05mm</label></td>
			</tr>
			<tr>
				<th>펜촉굵기</th>
				<td><input type="checkbox" id="EF" name="EF" value="EF"
					onchange="makeFilter(this);" /> <label for="age10">EF</label></td>
				<td><input type="checkbox" id="F" name="F" value="F"
					onchange="makeFilter(this);" /> <label for="age10">F</label></td>
				<td><input type="checkbox" id="M" name="M" value="M"
					onchange="makeFilter(this);" /> <label for="age10">M</label></td>
				<td><input type="checkbox" id="B" name="B" value="B"
					onchange="makeFilter(this);" /> <label for="age10">B</label></td>
			</tr>
			<tr>
				<th>잉크충전방식</th>
				<td><input type="checkbox" id="cartridge" name="cartridge"
					value="카트리지" onchange="makeFilter(this);" /> <label for="age10">카트리지</label></td>
				<td><input type="checkbox" id="c&c" name="c&c" value="컨버터&카트리지"
					onchange="makeFilter(this);" /> <label for="age10">컨버터&카트리지</label></td>
				<td><input type="checkbox" id="plunger" name="plunger"
					value="플런저" onchange="makeFilter(this);" /> <label for="age10">플런저</label></td>
			</tr>
			<tr>
				<th>그립감</th>
				<td><input type="checkbox" id="rubber" name="rubber" value="고무"
					onchange="makeFilter(this);" /> <label for="age10">고무</label></td>
				<td><input type="checkbox" id="metal" name="metal" value="메탈"
					onchange="makeFilter(this);" /> <label for="age10">메탈</label></td>
				<td><input type="checkbox" id="plastic" name="plastic"
					value="플라스틱" onchange="makeFilter(this);" /> <label for="age10">플라스틱</label></td>
				<td><input type="checkbox" id="timber" name="timber" value="목재"
					onchange="makeFilter(this);" /> <label for="age10">목재</label></td>
				<td><input type="checkbox" id="aluminum" name="aluminum"
					value="알루미늄" onchange="makeFilter(this);" /> <label for="age10">알루미늄</label></td>
			</tr>
		</tbody>
	</table>
	<br> 필터입력값 : <input type="text" id="showFilter" />
	<input type="submit" value="검색" onclick="data()" />



	<h3>필터된 상품 목록 보여주기</h3>

	<div id="allshowFilter"> <div>

		<script>
		
		// 실시간 필터링 보여주기------------------------------------------------------------------------------------
		var ageArr = {
				pencil : null,
				sharp : null,
				pen : null,
				highlighter : null,
				write : null,
				drawing : null,
				art : null,
				B2 : null,
				B4 : null,
				B6 : null,
				H : null,
				HB : null,
				cover : null,
				knock : null,
				twist : null,
				oil : null,
				water : null,
				gel : null,
				mm05 : null,
				mm07 : null,
				mm10 : null,
				mm105 : null,
				EF : null,
				F : null,
				M : null,
				B : null,
				cartridge : null,
				cc : null,
				plunger : null,
				rubber : null,
				metal : null,
				plastic : null,
				timber : null,
				aluminum : null
		}; //필터 내용을 저장하는 배열
		
		var showFilterValue = document.getElementById("showFilter");//필터입력값 보여주기 위한 text

		var Json = null;
		
		//필터 내용을 저장하는 function
		function makeFilter(target) {

			var ageVal = target.value; //check value
			var confirmCheck = target.checked; //check여부 확인
			var name = target.name;
			console.log("필터 선택값 : ", ageVal);
			console.log("필터 이름 : ", name);
			// console.log("선택여부 : " + confirmCheck);

			// check true
			if (confirmCheck == true) {
				// console.log("check");
				ageArr[name] = ageVal;
				console.log(ageArr);
				Json = JSON.stringify(ageArr);
				showFilterValue.value += (ageVal + ",  ");
				//$("#showFilter").last().append(ageVal); // check value filter 배열에 입력

				// check false
			} else {
				ageArr.splice(ageArr.indexOf(ageVal), 1); // check value filter 배열내용 삭제            
			}

			//showFilterValue.value = ageVal; // textBox에 필터 배열 추가
			console.log("필터입력값 출력 : ", ageArr);

		}
		
		// 체크박스 데이터 -----------------------------------------------------------------------------------------
		
/*  		$(document).read(function(){
			$('#btn').click(function(){   //submit 버튼을 클릭하였을 때
				var sendData = {"pencil" : pencil, "sharp":sharp, "pen":pen, "highlighter":highlighter, "fountainPen":fountainPen, "write":write}
				$.ajax({
					url:'Filter',   //데이터를 주고받을 파일 주소
					data: sendData,   //위의 변수에 담긴 데이터를 전송해준다.
					success : function(data){   //파일 주고받기가 성공했을 경우. data 변수 안에 값을 담아온다.
						console.log("성공")
					}
				});
			});
		}); */
 
		
		
		// 필터된 추천 결과 보여주기--------------------------------------------------------------------------------
		
		function data(){	
			console.log("aggAr", ageArr)
			$.ajax({
				url: 'Filter',
				data : {
					ageArr : Json
				},
				dataType: 'json',
				success: function(res){
					if(res==null){
						alert("결과는 null!")
					}else{
						alert("결과는 OK!")
						console.log(res[0])
						makeFormat(res)
					}
				},
				error: function(e){
					alert('실패')
					console.log(e)
				}
				
			})
			
		} 
		
		function makeFormat(res){
			for(var i=0; i<res.length; i++){
				
				$("#allshowFilter").last().append(res[i].product + "<br>");
				$("#allshowFilter").last().append(res[i].type + "<br>");
				$("#allshowFilter").last().append("<img src="+ res[i].img +">");
				$("#allshowFilter").last().append("<h3>-------------------------------------------------------------------</h3>");
			}
		}
		

	</script>
</body>
</html>