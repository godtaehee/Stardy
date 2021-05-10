window.addEventListener("load", function(){

    var actionForm = document.querySelector(".modify-form");
    var btnModify = document.querySelector(".button-modify");
    var btnDropOut = document.querySelector(".button-drop-out");

    btnModify.addEventListener("click", function(e) {
        e.preventDefault();

        /* 비밀번호 비어있는지 & check와 동일한지 확인 */
        var password = document.querySelector("input[name='password']").value;
        var check = document.querySelector("input[name='check']").value;

        if(password === check && password != ''){
            alert("정보수정이 완료되었습니다.");
            actionForm.submit();
        }
        else{
            document.querySelector("input[name='check']").className = 'input-item input-password-check input--text';
        }
        
    });

    btnDropOut.addEventListener("click", function(e) {

        e.preventDefault();

        if(confirm('정말 탈퇴하시겠습니까?')){
            actionForm.submit();

            /* 제출 후 메인 페이지로 Redirect */
        }
    })
})