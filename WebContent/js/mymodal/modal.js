    
    var modal = document.querySelector('.modal');
    var modalReply = modal.querySelector('.reply');
	var modalRid = modal.querySelector('.reply-rid');
    var modalWriter = modal.querySelector('.reply-writer');
	var modalEmail = modal.querySelector('.reply-email');
    var modalRegDate = modal.querySelector('.regdate');

    var btnModify = modal.querySelector('.button-modify');
    var btnDelete = modal.querySelector('.button-delete');
    var btnCancel = modal.querySelector('.button-cancel');

	var currentUser = window.email;

    var screen;

    function show(){
        modal.classList.add('show');
        modal.classList.remove('hide');
    }
    function hide(){
		modalReply.value = '';
        modalWriter.value = '';
        modalRegDate.value = '';
		modalRid.value = '';
		modalEmail.value = '';
		
        modal.classList.remove('show');
        modal.classList.add('hide');
    }

    /* Modal 열기 */
    function openModal(target) {

        /* screen 생성 */
        screen = document.createElement('div');
        screen.classList.add('screen');

        setTimeout(() => {
            screen.style.opacity = 0.5;
        }, 0);

        document.querySelector('body').append(screen);
        /* screen 생성 */

        var reply;
        var writer;
        var regDate;
		var rid;
		var email;

        if(target.className === 'replies'){
            rid = target.dataset['rid'];
			email = target.dataset['email'];
			
			console.log(rid + ', ' + email);
			
            reply = target.querySelector('.reply').innerText;
            writer = target.querySelector('.reply-writer').innerText;
            regDate = target.querySelector('.regdate').innerText;
        }
        else{
            var replies = target.parentElement.parentElement;

			rid = replies.dataset['rid'];
			email = replies.dataset['email'];
			
			console.log(rid + ', ' + email);
			
            reply = replies.querySelector('.reply').innerText;
            writer = replies.querySelector('.reply-writer').innerText;
            regDate = replies.querySelector('.regdate').innerText;
        }

		/* 로그인한 사용자 == 댓글 작성자? */
		if(currentUser !== email){
			console.log('댓글 작성자와 현재 유저 불일치');
			btnModify.classList.add('hide');
			btnDelete.classList.add('hide');
			reply.readonly = true;
		}
		else{
			console.log('댓글 작성자와 현재 유저 일치');
			btnModify.classList.remove('hide');
			btnDelete.classList.remove('hide');
			reply.readonly = false;
		}

		modalRid.value = rid;
		modalEmail.value = email;
        modalReply.value = reply;
        modalWriter.value = writer;
        modalRegDate.value = regDate;

        show();

        /* Screen Click */
        screen.addEventListener('click', (e) => {
            closeModal();
        });
    }
    /* Modal 닫기 */
    function closeModal() {

        setTimeout(() => {
            screen.style.opacity = 0;
        }, 0);

        screen.ontransitionend = function() {
            screen.remove();
        }

        hide();
    }

    /* 모달창의 취소 버튼 click */
    btnCancel.addEventListener('click', function(e) {
        closeModal();
    });

    /* 모달창의 삭제 버튼 click */
    btnDelete.addEventListener('click', (e) => {

		var rid = modalRid.value;
		
		replyModule.removeReply(rid);
		
		closeModal();
    });

    /* 모달창의 수정 버튼 click */
    btnModify.addEventListener('click', (e) => {

		var rid = modalRid.value;
		var content = modalReply.value;
		
		var reply = {
			rid: rid,
			content: content
		}
		
		replyModule.modifyReply(reply);
		
		closeModal();
    });
