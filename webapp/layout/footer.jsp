<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <footer class="footer">
        <h1 class="hide">footer</h1>
        
    </footer>
    <script>
      window.addEventListener("load", function(){
      
          let loginId = '${id}';
          let btnLogout = document.querySelector(".btn-logout");
      
         console.log(loginId);
      
          if(loginId != null && loginId != undefined && loginId != ''){
              var onBox = document.querySelector(".on-box");
              var outBox = document.querySelector(".out-box");
                 
              onBox.className = 'on-box';
              outBox.className = 'out-box hide';
          }
          
          btnLogout.addEventListener("click", function(e) {
             e.preventDefault();
             
             var outForm = document.createElement("form");
             outForm.action = "/logout";
             outForm.method = "POST";
             
             document.querySelector("body").append(outForm);
             outForm.submit();
          });
      });
   </script>