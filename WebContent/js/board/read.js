window.addEventListener("load", function() {

	var bid = window.bid;
	var isSub = window.isSub;

    /* 특정 댓글 선택 시 댓글 수정 모달창 show */
    var replyList = document.querySelector('.reply-list');
    var moreBox = document.querySelector('.more-box');
	var btnRegister = document.querySelector(".button-register");
    
	var bookmark = document.querySelector('.bookmark');
	
	let page = 1;
	/* 댓글 목록 조회 */
	replyModule.showList();
	
	/* 댓글 등록 버튼 Click */
	btnRegister.addEventListener("click", (e) => {
		
		replyModule.addReply();
	});

    /* 즐겨찾기 버튼 Click */
	bookmark.addEventListener('click', function(e) {
	
	    this.classList.toggle('icon-bookmark-off');
	    this.classList.toggle('icon-bookmark');
	
		var request = new XMLHttpRequest();
		
		if(!isSub) {
			
			request.addEventListener('load', () => {
				console.log(`POST /sub/${bid}`);
			});
			
			request.open('POST', `/sub/${bid}`, true);
			request.send(bid);
		
		    /* 즐겨찾기 등록 */
	    	isSub = !isSub;
	        alert(`${bid}번 게시글 즐겨찾기가 추가되었습니다.`);
		}
		else{
			request.addEventListener('load', () => {
				console.log(`DELETE /sub/${bid}`);
			});
			
			request.open('DELETE', `/sub/${bid}`, true);
			request.send(bid);
		
		    /* 즐겨찾기 해제 */
	    	isSub = !isSub;
			alert(`${bid}번 게시글 즐겨찾기가 취소되었습니다.`);
		}
	});

    replyList.addEventListener('click', function(e) {        
        var target = e.target;

        openModal(target);
    });
    /* 특정 댓글 선택 시 댓글 수정 모달창 show */

    /* 댓글 더 보기 버튼 Click*/
    moreBox.addEventListener('click', function(e) {

		replyModule.showList(page++);
    });

});