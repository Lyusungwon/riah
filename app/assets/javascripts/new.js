/**
* 전역변수선언
**/
//jQuery Element
var $lec_name, $lec_list, $lec_no, $eval_content, $textCnt, $evalInfo;

//강의명 자동완성을 위한 변수
var lecAC_isRun = false, lecAC_nextKeyword = '';

/**
* 초기구동
**/
$(function () {
	//jQuery Element Caching
	$lec_name = $('#lec_name');
	$lec_list = $('#lec_list');
	$lec_no = $('#lec_no');
	$eval_content = $('#eval_content');
	$textCnt = $('#textCnt');
	$evalInfo = $('#evalInfo');

	//평가내용 갯수 표시하는 부분 init
	$textCnt.maxCnt = 2000;
	$textCnt.html('0/'+$textCnt.maxCnt);

	//만약 $evalInfo가 있다면 강의명 고정 및 별점평가 / 평가내용 미리 입력해둠 (수정모드)
	if ($evalInfo.length) {
		var evalInfo = JSON.parse($evalInfo.val());

		//강의명 미리 채우기
		$lec_name.val("["+evalInfo['lec_code']+"-"+evalInfo['lec_class']+"] "+evalInfo['lec_name']+" ("+evalInfo['lec_year'].substr(2,2)+"년 "+evalInfo['lec_term'].substr(0,1)+"학기, "+evalInfo['lec_profName']+" 교수님)").addClass('selected').attr('onkeydown','').attr('onkeyup','').attr('onblur','').prop('readonly',true);
		$lec_no.val(evalInfo['lec_no']);

		//별점평가 미리 채우기
		lecGraph_select('gp_total',Number(evalInfo['eval_total']));
		lecGraph_select('gp_difficulty',Number(evalInfo['eval_difficulty']));
		lecGraph_select('gp_studyTime',Number(evalInfo['eval_studyTime']));
		lecGraph_select('gp_attendance',Number(evalInfo['eval_attendance']));
		lecGraph_select('gp_grade',Number(evalInfo['eval_grade']));
		lecGraph_select('gp_achievement',Number(evalInfo['eval_achievement']));
		lecGraph_mouseout('gp_total');
		lecGraph_mouseout('gp_difficulty');
		lecGraph_mouseout('gp_studyTime');
		lecGraph_mouseout('gp_attendance');
		lecGraph_mouseout('gp_grade');
		lecGraph_mouseout('gp_achievement');

		//평가내용 미리 채우기
		$eval_content.val(evalInfo['eval_content']);
		show_textCnt();

		console.log(evalInfo);
	}
/*
<div class="content"><input type="text" id='lec_name' onkeydown='lecAC_keydown()' onkeyup='lecAC(0,event.keyCode);' onblur='lecAC_blur();' class='selected' value='<?=escapeHtml("[".$lecture['lec_code']."-".$lecture['lec_class']."] ".$lecture['lec_name']." (".substr($lecture['lec_year'],2,2)." ".substr($lecture['lec_term'],0,1)."학기, ".$lecture['lec_profName']." 교수님)")?>' /><input type='hidden' name='lec_no' id='lec_no' value='<?=$lecture['no']?>' /></div>
*/

});

/**
* 함수선언
**/
/**
* 강의명 자동완성하는 함수
* 이 함수는 onkeyup 또는 AJAX callback으로 실행될 수 있음
* onkeyup으로 실행되는 경우 lecAC_nextKeyword를 갱신
* AJAX callback으로 실행되는 경우 lecAC_nextKeyword를 갱신하지 않음
* beforeSend시 lecAC_nextKeyword를 비움
**/
function lecAC(isCallBack, keyCode) {
	//onkeyup으로 실행되는 경우
	if (!isCallBack) {
		//방향키 및 엔터인 경우
		if ((keyCode >= 37 && keyCode <= 40) || keyCode == 13) {
			lecAC_arrow(keyCode);
			return;
		//나머지인 경우
		} else {
			lecAC_nextKeyword = $lec_name.val();
		}
	}

	//AJAX요청이 진행중인 경우 종료
	if (lecAC_isRun) return;
	lecAC_isRun = true;

	//nextKeyword가 없는 경우 종료
	if (lecAC_nextKeyword == '') {
		if ($lec_name.val() == '') $lec_list.html('').removeClass('show');
		lecAC_isRun = false;
		return;
	}
	ga('send', 'pageview', '/ajax/common_searchLecture.php');

	//AJAX 실행
	$.ajax({
		type:'POST',
		url:yh_path+'/ajax/common_searchLecture.php',
		data:'keyword='+encodeURIComponent(lecAC_nextKeyword),
		dataType:'json',
		beforeSend:function () {
			lecAC_nextKeyword='';
		},
		success:function(data) {
			if (data['status'] == 'fail') {
				alert(data['msg']);
			}

			var output='';
			for(var i=0;i<data['lecList'].length;i++) {
				output += "<div class='e' onclick='lecAC_select("+i+");' no='"+data['lecList'][i]['no']+"'>["+data['lecList'][i]['lec_code']+"-"+data['lecList'][i]['lec_class']+"] "+data['lecList'][i]['lec_name']+" ("+data['lecList'][i]['lec_year'].substr(2,2)+"년 "+data['lecList'][i]['lec_term'].substr(0,1)+"학기, "+data['lecList'][i]['lec_profName']+" 교수님)</div>";	
			}
			$lec_list.html(output).addClass('show');
			$lec_list.selected = undefined;
			$lec_list.listCnt = data['lecList'].length;

			setTimeout(function () {
				lecAC_isRun = false;
				lecAC(1);
			},700);

			
			
		},
		error:function(xhr, status, error) {
			lecAC_isRun = false;
			console.log(status);
			console.log(xhr.responseText);
		}
	});
}

//강의가 선택된 상태에서 keydown 이벤트가 발생할 경우 초기화
function lecAC_keydown() {
	if ($lec_name.hasClass('selected')) {
		$lec_name.val('').removeClass('selected');
		$lec_no.val('');
		$lec_list.html('').removeClass('show');
		$lec_list.selected = undefined;
		$lec_list.listCnt = 0;
	}
}

//강의에서 포커스를 잃었을때 처리
function lecAC_blur() {
	if (!$lec_name.hasClass('selected')) {
		$lec_name.val('');
		$lec_no.val('');
	}
}

//방향키와 엔터키의 입력에 대응하는 함수
function lecAC_arrow(keyCode) {
	//리스트에 과목이 없으면 종료
	if ($lec_list.listCnt == 0) return;

	//아래 화살표인 경우
	if (keyCode == 40) {
		//아직 화살표로 선택된 과목이없으면 첫번째 과목을 선택
		if ($lec_list.selected == undefined) {
			$($lec_list.find('.e').removeClass('selected')[0]).addClass('selected');
			$lec_list.selected = 0;
		
		//마지막 과목이 선택된 경우 종료
		} else if ($lec_list.selected == $lec_list.listCnt-1) {
			return;
		//그 외의 경우 selected의 다음 과목을 선택
		} else {
			$($lec_list.find('.e').removeClass('selected')[$lec_list.selected+1]).addClass('selected');
			$lec_list.selected++;
		}
	//위 화살표인 경우
	} else if (keyCode == 38) {
		//아직 화살표로 선택된 과목이없으면 마지막 과목을 선택
		if ($lec_list.selected == undefined) {
			$($lec_list.find('.e').removeClass('selected')[$lec_list.listCnt-1]).addClass('selected');
			$lec_list.selected = $lec_list.listCnt-1;
		
		//첫 과목이 선택된 경우 종료
		} else if ($lec_list.selected == 0) {
			return;
		//그 외의 경우 selected의 다음 과목을 선택
		} else {
			$($lec_list.find('.e').removeClass('selected')[$lec_list.selected-1]).addClass('selected');
			$lec_list.selected--;
		}
	//엔터인 경우
	} else if (keyCode == 13) {
		if ($lec_list.selected == undefined) return;
		lecAC_select($lec_list.selected);
	}
}

//자동완성 리스트에서 과목을 선택
function lecAC_select(i) {
	var lec_no = $($lec_list.find('.e')[i]).attr('no');
	var lec_name = $($lec_list.find('.e')[i]).html();

	$lec_no.val(lec_no);
	$lec_name.val(lec_name).addClass('selected');

	$lec_list.html('').removeClass('show');
	$lec_list.selected = undefined;
	$lec_list.listCnt = 0;
}


//별점 평가 mouseover시 함수
function lecGraph_mouseover (type, rate) {
	var $obj = $('#'+type);
	//rate에 맞게 graph를 채움
	$obj.find('.center > .graphWrap > span').each(function (i,e) {
		if (i<rate) {
			$(e).addClass('active');
		} else {
			$(e).removeClass('active');
		}
	});

	//right에다 해당 graph에 맞는 문구를 삽입
	var msg = $($obj.find('.center > .graphWrap > span')[rate-1]).attr('msg');
	$obj.find('.right').html(msg);
}

//별점 평가 mouseout시 함수
function lecGraph_mouseout (type) {
	var $obj = $('#'+type);
	var rate = $obj.find('input[type=hidden]').val();
	$obj.find('.center > .graphWrap > span').each(function (i,e) {
		if (i<rate) {
			$(e).addClass('active');
		} else {
			$(e).removeClass('active');
		}
	});

	//right에다 해당 graph에 맞는 문구를 삽입
	var msg;
	
	if (rate > 0) msg = $($obj.find('.center > .graphWrap > span')[rate-1]).attr('msg');
	else msg = '';

	$obj.find('.right').html(msg);
}

//별점 평가 선택시 함수
function lecGraph_select(type, rate) {
	var $obj = $('#'+type);
	$obj.find('input[type=hidden]').val(rate);
}

//평가내용 적을 때 글자수 표시하는 함수
function show_textCnt() {
	var cnt = $eval_content.val().length;
	$textCnt.html(cnt+'/'+$textCnt.maxCnt);

	if (cnt > $textCnt.maxCnt) {
		$textCnt.addClass('warning');
	} else {
		$textCnt.removeClass('warning');
	}
}

//평가항목 submit하는 함수
function doSubmit() {
	if ($eval_content.val().length > $textCnt.maxCnt) {
		alert('강의평 글자수 제한을 초과하였습니다.');
		return;
	}

	if (!confirm("KLUE는 회원들의 성의있는 강의평으로 운영됩니다.\n불성실한 강의평은 KLUE의 운영을 위협하는 행위로 강력한 제재를 가하고 있으니 이 점 참고바랍니다\n\n강의평을 입력하시겠습니까?")) {
		return;
	}

	ga('send', 'pageview', '/ajax/lectureEval_ok.php');

	$.ajax({
		type:'POST',
		url:yh_path+'/ajax/lectureEval_ok.php',
		data:$('input, textarea').serialize(),
		dataType:'json',
		success:function(data) {
			if (data['status'] == 'fail') {
				alert(data['msg']);
				return;
			}

			location.href=yh_path+'/main.php';
		},
		error:function(xhr, status, error) {
			console.log(status);
			console.log(xhr.responseText);
		}
	});
}