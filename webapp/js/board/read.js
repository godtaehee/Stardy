window.addEventListener("load", function() {

	var bid = window.bid;
	var isSub = window.isSub;
	var isLike = window.isLike;

    var replyList = document.querySelector('.reply-list');
    var moreBox = document.querySelector('.more-box');
	var btnRegister = document.querySelector(".button-register");
	var bookmark = document.querySelector('.bookmark');
	var btnLike = document.querySelector(".button-like");
	
/*--- 댓글 --- */

	/* 댓글 개수 조회 */
	replyModule.getReplyCount();
	/* 댓글 목록 조회 */
	replyModule.showList();
	
	/* 댓글 등록 버튼 Click */
	btnRegister.addEventListener("click", (e) => {
		
		var content = document.querySelector('textarea[name="reply-content"]');
		var reply = {
			content: content.value,
			bid: bid
		};
		
		replyModule.addReply(reply);
		content.value = '';
	});
	
	/* 특정 댓글 선택 시 댓글 모달창 show */
    replyList.addEventListener('click', function(e) {        
        var target = e.target;

		if(target.className == 'reply-list') return;

        openModal(target);
    });
    

    /* 댓글 더 보기 버튼 Click*/
    moreBox.addEventListener('click', function(e) {

		replyModule.showList();
    });
/*--- 댓글 --- */

    /* 즐겨찾기 버튼 Click */
	bookmark.addEventListener('click', function(e) {
	
	    this.classList.toggle('icon-bookmark-off');
	    this.classList.toggle('icon-bookmark');
	
		if(!isSub)
			ajax({
				url: `/sub/${bid}`,
				method: 'POST',
				loadend: () => {
					console.log(`POST /sub/${bid}`);
					/* 즐겨찾기 추가 */
					isSub = !isSub;
		        	alert(`${bid}번 게시글 즐겨찾기가 추가되었습니다.`);
				}
			});
		else
			ajax({
				url: `/sub/${bid}`,
				method: 'DELETE',
				loadend:() => {
					console.log(`DELETE /sub/${bid}`);
				    /* 즐겨찾기 해제 */
			    	isSub = !isSub;
					alert(`${bid}번 게시글 즐겨찾기가 취소되었습니다.`);
				}
			});
	});
/* 좋아요 */
	btnLike.addEventListener('click', function(e) {
		
		this.classList.toggle('like');
	    this.classList.toggle('unlike');
	
		if(!isLike)
			ajax({
				url: `/likes/reg/${bid}`,
				method: 'POST',
				loadend: () => {
					console.log(`POST /likes/reg/${bid}`);
					/* 좋아요 추가 */
					isLike = !isLike;
		        	console.log(`${bid}번 게시글을 좋아합니다.`);

					getLikes();
				}
			});
		else
			ajax({
				url: `/likes/rm/${bid}`,
				method: 'DELETE',
				loadend:() => {
					console.log(`DELETE /likes/rm/${bid}`);
				    /* 좋아요 해제 */
					isLike = !isLike;
					console.log(`${bid}번 게시글의 좋아요를 취소했습니다.`);
					getLikes();
				}
			});
	});
	/* 좋아요 개수 */
	function getLikes() {
		
		var likes = document.querySelector('.likes');
		
		ajax({
			url: `/likes/${bid}`,
			method: 'GET',
			loadend: (count) => {
				console.log('좋아요 개수 : ' + count);
				likes.innerHTML = count;
			}
		});
	}
	getLikes();
/* 좋아요 */
});