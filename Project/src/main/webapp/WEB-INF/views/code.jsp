<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>

<title>CodeMirror: C-like mode</title>
<meta charset="utf-8" />
<link rel=stylesheet href="resources/codemirror-5.25.0/doc/docs.css">

<link rel="stylesheet"
	href="resources/codemirror-5.25.0/lib/codemirror.css">
<script src="resources/codemirror-5.25.0/lib/codemirror.js"></script>
<script src="resources/codemirror-5.25.0/addon/edit/matchbrackets.js"></script>
<link rel="stylesheet"
	href="resources/codemirror-5.25.0/addon/hint/show-hint.css">
<script src="resources/codemirror-5.25.0/addon/hint/show-hint.js"></script>
<script src="resources/codemirror-5.25.	0/mode/clike/clike.js"></script>
<style>
.CodeMirror {
	border: 2px inset #dee;
}
</style>
<div id=nav>
	<a href="http://codemirror.net"><h1>CodeMirror</h1>
		<img id=logo src="resources/codemirror-5.25.0/doc/logo.png"></a>

	<ul>
		<li><a href="resources/CodeMirror-master/index.html">Home</a>
		<li><a href="resources/CodeMirror-master/doc/manual.html">Manual</a>
		<li><a href="https://github.com/codemirror/codemirror">Code</a>
	</ul>
	<ul>
		<li><a href="resources/CodeMirror-master/mode/clike/index.html">Language
				modes</a>
		<li><a class=active href="#">C-like</a>
	</ul>
</div>

<article>

	<h2>Java example</h2>
	<input type="text" id="id">
	<div>
		<textarea id="java-code" onkeypress="myFunction();"></textarea>
		<button onclick="test();">ok</button>
	</div>

	<script>
		function myFunction() {
			var text = document.getElementById("java-code").value;
			alert(text);
		}
		function test() {

			var value = document.getElementById("java-code").value;
			alert(value);
		}
	</script>
	<script>
		var javaEditor = CodeMirror.fromTextArea(document
				.getElementById("java-code"), {
			lineNumbers : true,
			matchBrackets : true,
			mode : "text/x-java"
		});
	</script>

</article>
