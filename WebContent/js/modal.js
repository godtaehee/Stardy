    
    var modal = document.querySelector('.modal');
    var modalReply = modal.querySelector('.reply');
    var modalWriter = modal.querySelector('.reply-writer');
    var modalRegDate = modal.querySelector('.regdate');

    var btnModify = modal.querySelector('.button-modify');
    var btnDelete = modal.querySelector('.button-delete');
    var btnCancel = modal.querySelector('.button-cancel');

    var screen;

    function show(){
        modal.classList.add('show');
        modal.classList.remove('hide');
    }
    function hide(){
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

        if(target.className === 'replies'){
            
            reply = target.querySelector('.reply').innerText;
            writer = target.querySelector('.reply-writer').innerText;
            regDate = target.querySelector('.regdate').innerText;
        }
        else{
            var replies = target.parentElement;

            reply = replies.querySelector('.reply').innerText;
            writer = replies.querySelector('.reply-writer').innerText;
            regDate = replies.querySelector('.regdate').innerText;
        }

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
            modalReply.value = '';
            modalWriter.value = '';
            modalRegDate.value = '';
            
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

    });

    /* 모달창의 수정 버튼 click */
    btnModify.addEventListener('click', (e) => {

    });
