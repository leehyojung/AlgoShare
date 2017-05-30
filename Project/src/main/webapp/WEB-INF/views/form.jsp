<!-- 스터디 등록 페이지 -->

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="resources/bootstrap/css/bootstrap.css" rel='stylesheet' type='text/css' />
<title>Making Group</title>
</head>
<body>

<div class="page-header" >
  <h1>그룹 만들기 <small></small></h1>
</div>
	<form> 
  <div class="form-group">
    <label for="exampleInputEmail1">그룹 이름</label><br>
    <input type="group_name" class="form-control" id="exampleInputEmail1" placeholder="그룹 이름을 입력하세요">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">그룹 설명</label>
    <input type="group_sub" class="form-control" id="exampleInputPassword1" placeholder="그룹에 대한 설명을 입력하세요">
  </div>
   <div class="form-group">
   <label for="exampleInputPassword1">최대인원</label>
  <select class="form-control">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select>
</div>
  <div class="form-group">
    <label for="exampleInputFile">대표 이미지 업로드</label>
    <input type="file" id="exampleInputFile">
  </div>
  <button type="submit" class="btn btn-primary">만들기</button>
  <button type="reset" class="btn btn-default">취소</button>
</form>
</body>
</html>