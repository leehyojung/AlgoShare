<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<title>CodeMirror: C-like mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="resources/codemirror-5.25.0/doc/docs.css">

<link rel="stylesheet" href="resources/codemirror-5.25.0/lib/codemirror.css">
<script src="resources/codemirror-5.25.0/lib/codemirror.js"></script>
<script src="resources/codemirror-5.25.0/addon/edit/matchbrackets.js"></script>
<link rel="stylesheet" href="resources/codemirror-5.25.0/addon/hint/show-hint.css">
<script src="resources/codemirror-5.25.0/addon/hint/show-hint.js"></script>
<script src="resources/codemirror-5.25.0/mode/clike/clike.js"></script>
<style>.CodeMirror {border: 2px inset #dee;}</style>
<div id=nav>
  <a href="http://codemirror.net"><h1>CodeMirror</h1><img id=logo src="resources/codemirror-5.25.0/doc/logo.png"></a>

  <ul>
    <li><a href="resources/CodeMirror-master/index.html">Home</a>
    <li><a href="resources/CodeMirror-master/doc/manual.html">Manual</a>
    <li><a href="https://github.com/codemirror/codemirror">Code</a>
  </ul>
  <ul>
    <li><a href="resources/CodeMirror-master/mode/clike/index.html">Language modes</a>
    <li><a class=active href="#">C-like</a>
  </ul>
</div>


<article>
<select id="language" name="language" onchange="changeLanguage()" data-placeholder="언어를 선택해 주세요." class=" col-md-2 chosen-select" data-no_results_text = "없는 언어 입니다.">
	<option value="0" selected>C</option>
	<option value="1">JAVA</option>
</select>

<h2>C-like mode</h2>

<div><textarea id="c-code">

</textarea></div>

<h2>Java example</h2>

<div><textarea id="java-code" rows="30" cols="70">

</textarea></div>
				<div class="form-group">
				    <label class="col-md-2 control-label" for="source">소스 코드</label>
				    <div class="col-md-10">
					    <textarea id="source" name="source" autofocus="autofocus"></textarea>
				    </div>
				</div>
    <script>
      var cEditor = CodeMirror.fromTextArea(document.getElementById("c-code"), {
        lineNumbers: true,
        matchBrackets: true,
        mode: "text/x-csrc"
      });
      var javaEditor = CodeMirror.fromTextArea(document.getElementById("java-code"), {
        lineNumbers: true,
        matchBrackets: true,
        mode: "text/x-java"
      });
    </script>

    
</article>
<script type="text/javascript">var myTextArea = document.getElementById("source");CodeMirror.modeURL = "https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/mode/%N/%N.js";var myCodeMirror = CodeMirror.fromTextArea(myTextArea,{lineNumbers: true,matchBrackets: true,indentUnit: 4,autoCloseBrackets: true,});myCodeMirror.setOption("extraKeys", {Tab: function(cm) {var spaces = Array(cm.getOption("indentUnit") + 1).join(" ");cm.replaceSelection(spaces);},'Ctrl-Enter': function() {$('form.submit-form').submit();},'Cmd-Enter': function() {$('form.submit-form').submit();},});if (document.getElementById("language").value == 58) {myCodeMirror.setOption("indentUnit",0);}function language_id_to_mime(now) {if (now == 0 || now == 59 || now == 75 || now == 77) {return "text/x-csrc";} else if (now == 1 || now == 41 || now == 49 || now == 60 || now == 88 || now == 66 || now == 67) {return "text/x-c++src";} else if (now == 3) {return "text/x-java";} else if (now == 9 || now == 62) {return "text/x-csharp";} else if (now == 4 || now == 65 || now == 68) {return "text/x-ruby";} else if (now == 8 || now == 42) {return "text/x-perl";} else if (now == 6 || now == 28 || now == 32 || now == 73) {return "text/x-python";} else if (now == 5) {return "text/x-sh";} else if (now == 2) {return "text/x-pascal";} else if (now == 7) {return "text/x-php";} else if (now == 12) {return "text/x-go";} else if (now == 14) {return "text/x-scheme";} else if (now == 16) {return "text/x-lua";} else if (now == 17 || now == 34 || now == 38) {return "text/javascript";} else if (now == 18) {return "text/x-coffeescript";} else if (now == 20 || now == 63) {return "text/x-vb";} else if (now == 22) {return "text/x-ocaml";} else if (now == 37) {return "text/x-fsharp";} else if (now == 15) {return "text/x-scala";} else if (now == 33) {return "text/x-clojure";} else if (now == 29) {return "text/x-d";} else if (now == 25) {return "text/x-groovy";} else if (now == 26) {return "text/x-tcl";} else if (now == 44) {return "text/x-rustsrc";} else if (now == 13) {return "text/x-fortran";} else if (now == 10 || now == 64) {return "text/x-objectivec";} else if (now == 11) {return "text/x-haskell";} else if (now == 30) {return "text/x-common-lisp";} else if (now == 31) {return "text/x-erlang";} else if (now == 35) {return "text/x-cobol";} else if (now == 36) {return "text/x-stsrc";} else if (now == 45) {return "application/dart";} else if (now == 57) {return "text/x-julia";} else if (now == 23) {return "text/x-brainfuck";} else if (now == 72) {return "text/x-rsrc";} else if (now == 74) {return "text/x-swift";} else if (now == 69) {return "text/x-kotlin";} else if (now == 76) {return "text/x-ceylon";} else if (now == 81) {return "text/x-haxe";}return "text/plain";}function changeLanguage() {var now = document.getElementById("language").value;var val = language_id_to_mime(now);if (now == 58) {myCodeMirror.setOption("indentUnit",0);} else {myCodeMirror.setOption("indentUnit",4);}var mode, spec;var info = CodeMirror.findModeByMIME(val);if (info) {mode = info.mode;spec = val;}if (mode) {myCodeMirror.setOption("mode", spec);CodeMirror.autoLoadMode(myCodeMirror, mode);}}changeLanguage();</script>