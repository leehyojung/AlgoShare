login = {
		
		loginCheck : function() {
			var user_id = $('#id').val();
			var user_pwd = $('#password').val();
//			
			var query = { id : user_id, password : user_pwd };
			$
			.ajax({
				type : "GET",
				url : "userList",
				data : query,
				dataType : "json",
				success : function(json) {
					var user_list = json.userList;
					var user_listLen = user_list.length;
					for (var i = 0; i < user_listLen; i++) {
						alert("아이디 : " + user_list[i].id+ " 비밀번호 : " + user_list[i].password + " 이름 : " + user_list[i].name);
						$('#id').val(user_list[i].id);
						$('#password').val(user_list[i].password);
					}
				}
			});
		}
		
}