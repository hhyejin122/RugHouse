function goPopup(){
	var pop = window.open("/guest/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(maddr1,maddr2,mzipno){
		document.member.maddr1.value = maddr1;
		document.member.maddr2.value = maddr2;
		document.member.mzipno.value = mzipno;
}
function memberCheck(){
	let mid = document.member.mid;
	let mpasswd = document.member.mpasswd;
	let mpasswd2 = document.member.mpasswd2;
	let mname = document.member.mname;
	let maddr = document.member.maddr1;
	
	if(!mid.value){
		alert('아이디를 입력해주세요');
		mid.focus();
		return false;
	}
	if(!mpasswd.value){
		alert('비밀번호를 입력해주세요');
		mpasswd.focus();
		return false;
	}
	if(mpasswd.value != mpasswd2.value){
		alert('비밀번호가 일치하지 않습니다');
		mpasswd.value="";
		mpasswd2.value="";
		mpasswd.focus();
		return false;
	}
	if(!mname.value){
		alert('이름을 입력해주세요');
		mname.focus();
		return false;
	}
	if(!maddr.value){
		alert('주소를 등록해주세요');
		return false;
	}
}