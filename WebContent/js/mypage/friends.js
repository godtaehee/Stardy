window.addEventListener("load", function(){

	var list = document.querySelector('.content-list');
	
	list.addEventListener("click", function(e) {
		
		var targetName = e.target.tagName;
		
		if(targetName === 'BUTTON'){
			if(confirm('친구를 삭제하시겠습니까?')){
				
			}
		}	
	});
})