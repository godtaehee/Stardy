window.addEventListener("load", function() {

    /* 특정 댓글 선택 시 댓글 수정 모달창 show */
    var replyList = document.querySelector('.reply-list');
    var moreBox = document.querySelector('.more-box');
    var bookmark = document.querySelector('.bookmark');
    var flag = false;

    /* 즐겨찾기 버튼 Click */
    bookmark.addEventListener('click', function(e) {

        
        this.classList.toggle('icon-bookmark-off');
        this.classList.toggle('icon-bookmark');

        /* 즐겨찾기 등록 및 해제 */
        
        if(!flag){
            flag = !flag;
            alert('즐겨찾기가 추가되었습니다.');
        }
        else{
            flag = !flag;
            alert('즐겨찾기가 취소되었습니다.');
        }
    });

    replyList.addEventListener('click', function(e) {        
        var target = e.target;

        openModal(target);
    });
    /* 특정 댓글 선택 시 댓글 수정 모달창 show */

    /* 댓글 더 보기 버튼 Click*/
    moreBox.addEventListener('click', function(e) {
        
        var btnMore = this.querySelector('.button-more');
        var spinner = this.querySelector('.spinner');

        btnMore.classList.toggle('hide');
        spinner.classList.toggle('hide');

        /* setTimeout(() => {
            spinner.style.transform = 'rotate(1080deg)';
        }, 0); */

        /* 더보기 버튼 클릭 시, */
        /* ajax로 댓글을 더 불러오며 */
        /* success시 (댓글이 더 붙여지면) */
        /* 회전을 멈추고 다시 + 버튼으로 */
        var request = new XMLHttpRequest();
        request.addEventListener('load', function(e) {
            /* 실제 데이터베이스 연결 시 */
        });
        request.addEventListener('loadend', function(e) {
            /* error가 떠도 실행되게 일단 loadend */

            var html = `
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            `;
            replyList.innerHTML += html;

            btnMore.classList.toggle('hide');
            spinner.classList.toggle('hide');
            spinner.style.transform = 'rotate(0deg)';
        });
        request.addEventListener('progress', function(e) {
            spinner.style.transform = 'rotate(1080deg)';
        });
        request.open('/replies/1', true);
        request.send(null);

        /* 추후 이동 요망 */
        /*spinner.ontransitionend = function() {
            btnMore.classList.toggle('hide');
            this.classList.toggle('hide');
            this.style.transform = 'rotate(0deg)';

            var html = `
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            <div class="replies">
                <div>
                    <p class="reply">댓글댓글댓글5</p>
                    <span class="span reply-writer">gorany</span>
                    <span class="span">/</span>
                    <span class="span regdate">2021-04-22</span>
                </div>
            </div>
            `;
            replyList.innerHTML += html;
        }*/
        
    });

});