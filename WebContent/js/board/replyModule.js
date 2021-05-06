var replyModule = {
	showList: function(page) {
		
		var btnMore = document.querySelector('.button-more');
        var spinner = document.querySelector('.spinner');

        btnMore.classList.toggle('hide');
        spinner.classList.toggle('hide');

		var p = 0;
		
		if(page)
			p = page;
			
		var url = `/replies/${bid}/${p}`;
		var request = new XMLHttpRequest();
		
		request.onloadend = () => {
			console.dir(request.responseText);
			
			var parentNode = document.querySelector('.replies');
			var replies = JSON.parse(request.responseText);
			
			if(replies.length == 0){
				console.log('empty');
				document.querySelector('.more-box').classList.add('hide');
			}
			
			var html = '';
			replies.forEach((reply, idx) => {
				html += `<div class="replies" data-rid="${reply.rid}">
							<div>
			                    <p class="reply">${reply.content}</p>
			                    <span class="span reply-writer">${reply.writer}</span>
			                    <span class="span">/</span>
			                    <span class="span regdate">${reply.regDate}</span>
			                </div>
						</div>`;
			});
			
			parentNode.insertAdjacentHTML('beforeend', html);
		}
		
        request.addEventListener('loadend', function(e) {

            btnMore.classList.toggle('hide');
            spinner.classList.toggle('hide');
            spinner.style.transform = 'rotate(0deg)';
        });

        request.addEventListener('progress', function(e) {
            spinner.style.transform = 'rotate(1080deg)';
        });
		
		request.open('GET', url, true);
		request.send(null);
	},
	addReply: function() {
		var url = '/replies/add';
		var content = document.querySelector('textarea[name="reply-content"]');
		
		const request = new XMLHttpRequest();
		
		var reply = {
			content: content.value,
			bid: bid
		};
		
		request.onloadend = () => {
			console.log(reply);
			console.log('Registed an reply');
		}
		request.onerror = () => {
			console.log('Encountered an Error during sending data');
		}
		request.onload = () => {
			content.value = '';
			
			document.querySelector('.replies').innerHTML = '';
			document.querySelector('.more-box').classList.remove('hide');
			this.showList();
		}
		
		request.open('POST', url, true);
		request.setRequestHeader("Content-Type", 'application/json; charset=UTF-8');
		request.send(JSON.stringify(reply));
	}
};