window.addEventListener("load", function(){

    var bookmarks = document.querySelector(".bookmarks");

	/* 즐겨찾기 해제 */
    bookmarks.addEventListener("click", function(e) {
		let target = e.target;
        let targetName = target.tagName;

        if(targetName !== 'SPAN') return;

        if(confirm('즐겨찾기를 해제하시겠습니까?')){

			let bid = target.dataset.bid;
			
            /* ajax -> post */
			ajax({
				url: `/sub/${bid}`,
				method: 'DELETE',
				loadend:() => {
					console.log(`DELETE /sub/${bid}`);
				    /* 즐겨찾기 해제 */
					alert(`${bid}번 게시글 즐겨찾기가 취소되었습니다.`);
					
				},
				load: () => {
					showBookmarks(); //목록 새로고침
				}
			});
        }
    });
	
	/* 즐겨찾기 목록 보여주는 함수 */
	function showBookmarks() {
		
		bookmarks.innerHTML = '';
		
		ajax({
			url: `/sub`,
			method: 'GET',
			loadend: (json) => {
				let boards = JSON.parse(json);
				
				let html = '';
				boards.forEach((board, idx) => {
					
					//console.log(board);
					html += `
							<div class="bookmark-box">
                                <div class="bookmark-main">
                                    <div class="content-box text-no-over">
                                        <a href="/board/read.jsp?id=${board.id}">${board.title}</a>
                                    </div>
                                    <span class="icon-bookmark delete-bm" data-bid="${board.id}"></span>
                                </div>
                                <div class="bookmark-sub">
                                    <div class="writer-box">
                                        ${board.memberId}
                                    </div>
                                    <div class="date-box">
                                        ${board.regDate}
                                    </div>
                                </div>
                            </div>`;
					
				});
				bookmarks.insertAdjacentHTML('beforeend', html);
			}
		});
	}
	showBookmarks();
});