<%-- 
    Document   : index
    Created on : Jan 19, 2017, 11:31:42 AM
    Author     : SS-074
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validate Header Footer</title>
        <link rel="stylesheet" href="css/codemirror.css"/>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/beautify.js"></script>
        <script src="js/beautify-css.js"></script>
        <script src="js/beautify-html.js"></script>
        <script src="js/codemirror.js"></script>
        <script src="js/codemirror/mode/javascript/javascript.js"></script>
        <script src="js/codemirror/addon/comment/comment.js"></script>
        <script src="js/codemirror/addon/edit/matchbrackets.js"></script>
        <script src="js/codemirror/addon/scroll/annotatescrollbar.js"></script>
        <script src="js/codemirror/addon/search/matchesonscrollbar.js"></script>
        <script src="js/codemirror/addon/search/searchcursor.js"></script>
        <script src="js/codemirror/addon/search/match-highlighter.js"></script>
        <script src="js/codemirror/addon/search/match-highlighter.js"></script>

        <script src="js/index.js"></script>
    </head>
    <style>
        .CodeMirror {border: 1px solid black; font-size:13px}
        .CodeMirror {border-top: 1px solid black; border-bottom: 1px solid black;}
        .CodeMirror-focused .cm-matchhighlight {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAIAAAACCAYAAABytg0kAAAAFklEQVQI12NgYGBgkKzc8x9CMDAwAAAmhwSbidEoSQAAAABJRU5ErkJggg==);
            background-position: bottom;
            background-repeat: repeat-x;
        }
        .cm-matchhighlight {background-color: khaki}
        .CodeMirror-selection-highlight-scrollbar {background-color: green}
        .wrapper{
            height:600px;
            width: 60%;
        }
    </style>
    <body>
        <div class="wrapper">
            <textarea id="jsonDataDiv"  contenteditable="true" style=""></textarea>
            <p/>
            <button class="tidy" data-event="click" data-target="#jsonDataDiv">Tidy</button>
        </div>

    </body>
</html>
