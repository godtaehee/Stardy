window.addEventListener("load", function(){

    var bookmarks = document.querySelector(".bookmarks");

    bookmarks.addEventListener("click", function(e) {
        var targetName = e.target.tagName;

        if(targetName === 'SPAN')
            if(confirm('즐겨찾기를 해제하시겠습니까?')){

                /* ajax -> post */
            }
    })
})