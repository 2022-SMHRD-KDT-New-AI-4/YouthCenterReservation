	function categoryChange(e) {
		var lolist_seoul = ["강북청년창업마루", "서울청년센터 성동오랑", "서울청년센터 광진오랑", "마포오랑","동대문오랑","서울청년센터 관악 오랑 청년문화공간","서울청년센터 서초 오랑","서울청년센터 노원오랑","서울청년센터강동오랑","서울청년센터은평오랑","서울청년센터금천오랑"];
		var lolist_incheon = ["인천청년센터 서구1939", "인천 청년공간 유유기지"];
		var lolist_gyeonggi = ["의정부시 청년센터청년공감터", "연천군청년센터","청년스테이션","양주시청년센터"];
		var lolist_daegu = ["대구광역시 동구청년센터 the꿈", "수성구청년센터", "대구광역시청년센터공감그래", "대구광역시청년센터다온나그래", "대구광역시청년센터활동그래"];
		var lolist_ulsan = ["울산광역시청년센터"];
		var lolist_gyeongsan = ["상주시 청년센터 들락날락", "김천시 청년센터", "거제청년센터 이룸", "양산시 청년센터 청담","통영시청년센터통영청년세움","청년온나"];
		var lolist_gwangwon = ["삼척청년센터", "강릉시청년센터 두루"];
		var lolist_chungcheong = ["당진청년센터나래","천안청년센터 불당이음"];
		var lolist_sejong =["세종시청년센터"];
		var lolist_gwangju = ["광주청년센터"];
		var lolist_jeonla = ["청년이음전주", "군산시청년뜰청년센터창업센터","보성군 청년센터", "영광군 청년센터 청춘공방", "진도군 청년센터", "청춘이랑"];
		var lolist_jeju = ["제주청년센터", "청년다락 1호점", "청년다락 2호점", "청년다락3호점", "청년다락4호점"];
		
		var target = document.getElementById("ctlist");
	
		if(e.value == "서울") var d = lolist_seoul;
		else if(e.value == "경기") var d = lolist_gyeonggi;
		else if(e.value == "인천") var d = lolist_incheon;
		else if(e.value == "대구") var d = lolist_daegu;
		else if(e.value == "울산") var d = lolist_ulsan;
		else if(e.value == "경상") var d = lolist_gyeongsan;
		else if(e.value == "강원") var d = lolist_gwangwon;
		else if(e.value == "충청") var d = lolist_chungcheong;
		else if(e.value == "세종") var d = lolist_sejong;
		else if(e.value == "광주") var d = lolist_gwangju;
		else if(e.value == "전라") var d = lolist_jeonla;
		else if(e.value == "제주") var d = lolist_jeju;
	
		target.options.length = 0;
	
		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}
	
	//셀렉트 박스 선택 안할 시 경고차 띄우기
	function formCheck(){
	
	if($("#lolist").val()==""){
		alert("지역을 선택하여 주십시오."); 
		$("#lolist").focus();
		return false; 
	} 
	}