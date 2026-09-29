function productCheck(){
	let pcategory = document.product.pcategory;
	let pname = document.product.pname;
	let pmade = document.product.pmade;
	let pprice = document.product.pprice;
	let pstock = document.product.pstock;
	let pUpload = document.product.pUpload;
	
	if(!pcategory.value){
		alert('상품 분류를 선택하세요');
		return false;
	}
	if(!pname.value){
		alert('상품명을 입력해주세요');
		pname.focus();
		return false;
	}
	if(!pmade.value){
		alert('제조사를 입력해주세요');
		pmade.focus();
		return false;
	}
	if(!pprice.value){
		alert('가격을 입력해주세요');
		pprice.focus();
		return false;
	}
	if(!pstock.value){
		alert('재고 수량을 입력해주세요');
		pstock.focus();
		return false;
	}
	if(!pUpload.value){
		alert('이미지 파일을 등록해주세요');
		return false;
	}
}