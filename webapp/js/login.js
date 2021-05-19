window.onload = (function(){
		
    var msg = '<%=request.getParameter("msg")%>';
    //var msg = "${msg}";
    console.log(msg);
    
    if(msg === 'error'){
        document.querySelector(".login-error").className = 'login-error show';
        document.querySelector("input[name='password']").className = 'input-item input-password input--text';
    }
    
    const btnLogin = document.querySelector(".button-login");
    const email = document.querySelector("input[name='email']");
    const actionForm = document.querySelector("form");
    
    email.addEventListener("change", (e) => {
        
        if(isEmail(email.value))
            email.className = 'input-item input--text input-email';
        else
            email.className = 'input-item input--text';
    });
    
    function isEmail(asValue) {

        var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

        return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	

    }
});