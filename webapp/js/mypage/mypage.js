window.addEventListener("load", function(){

    let profileModify = document.querySelector(".profile-modify");
    let uploadBox = document.querySelector('.upload-box');
    let btnUpload = document.querySelector('.button-upload');
    let inputFile = document.querySelector('input[type="file"]');
    let isModify = false;

    profileModify.addEventListener("click", (e) => {
        let profileStatus = document.querySelector(".profile-status");

        if(!isModify){
            isModify = true;
            profileStatus.readOnly = false;
            profileStatus.parentElement.style.backgroundColor = '#000';
            btnUpload.classList.toggle('hide');
            /* 프로필 수정 이미지를 변경 */
            
        }
        else{
            isModify = false;
            profileStatus.readOnly = true;
            btnUpload.classList.toggle('hide');
            /* 프로필 수정 이미지를 변경 */

            /* ajax post 요청 -> 이미지 , 상태명 변경 */
        }
    });

    /* File Event Trigger */
    btnUpload.addEventListener('click', function(e) {

        var event = new MouseEvent('click', { 
            view: window, 
            bubbles: true, 
            cancelable: true }
        );

        inputFile.dispatchEvent(event);
    });

    /* Drag & Drop */
    uploadBox.addEventListener('dragenter', function(e) {
        
    });

    uploadBox.addEventListener('dragover', function(e) {
        e.preventDefault();

        /* 선택한 객체의 MIME 타입 */
        var data = e.dataTransfer.types;

        /* 드래그 해온 객체가 File이 아니면 false */
        var vaild = data.indexOf('Files') >= 0;

        this.style.backgroundColor = !vaild? 'red': 'green';
    });

    uploadBox.addEventListener('dragleave', function(e) {
        console.log('dragleave');

        this.style.backgroundColor = 'white';
    });

    uploadBox.addEventListener('drop', function(e) {
        e.preventDefault();

        this.style.backgroundColor = 'white';
        
        var data = e.dataTransfer.files[0];

        console.dir(data);
        
        var fileName = data.name;
        var fileSize = data.size;
        var type = data.type;

        addFile(fileName, fileSize, type);
    });
    /* Drag & Drop */
    
    inputFile.oninput = function(e) {

        var file = inputFile.files[0];

        addFile(file.name, file.size, file.type);
    }

    function addFile(name, size, type){

        var html = `
            <div>name : ${name}</div>
            <div>size : ${size}</div>
            <div>type : ${type}</div>
        `;

        //uploadBox.innerHTML += html;
        console.log(html);
    }
});