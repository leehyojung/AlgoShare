$('#tiles').html('<ul id="tiles">');

var query = {};
$
		.ajax({
			type : "GET",
			url : "roomList",
			dataType : "json",
			success : function(json) {
				var list = json.room_list;
				var listLen = list.length;
				var feed_id = new Array();
				var count = 0;
				for (var i = 0; i < listLen; i++) {
					$('#tiles')
							.append(
									'<li onclick="location.href=;"><img src="resources/common/hyo/images/' + list[i].img + '" width="282" height="118"><div class="post-info"><div class="post-basic-info"><h3><a href="#">'
											+ list[i].name
											+ '</a></h3><span><a href="#"><label> </label>Algorithm</a></span><p>'
											+ list[i].content
											+ '</p></div></div></li>');

				}

				$('#tiles').append('</ul>');
			}
		});

