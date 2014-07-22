$.ajax({
	url:"/api/v1/posts",
	type: 'get',
	dataType: 'JSON',
	success: function(posts){
		posts.forEach(function(post){
			$("#posts").append("<li>"+post["title"]+"</li>");
		})
	}
});