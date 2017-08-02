<%-- 
    Document   : historyJs
    Created on : Aug 2, 2017, 1:05:26 PM
    Author     : SS-074
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="//code.jquery.com/jquery-1.8.3.js"></script>
        <script src="https://rawgit.com/browserstate/history.js/master/scripts/uncompressed/history.js" ></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="/home">Home</a>
        <a href="/about">About</a>
        <a href="/contact">Contact</a>
        <a href="/other">Other</a>
        <p>The whole page will not re-load when the content below is updated, yet the URL is clean and the back button works!<p><br />
        <div id="content">
            <div id="home">Home Page content</div>
        </div>
        <br /><p>The content div will be updated with a selected div fragment from an HTML file hosted on github, however the broswer will see each content update request as a part of the page history so that the back button can be used.</p><br  />

        <p>Adding more menu items is as simple as adding the new links and their corresponding html fragments.<p>
        <div id="hidden_content" class="hidden"></div>
        <script>
            var History = window.History;
            if (History.enabled) {
                State = History.getState();
                // set initial state to first page that was loaded
                // use window.location.pathname instead of '/home' when not on jsfiddle
                History.pushState({urlPath: '/home'}, $("title").text(), State.urlPath);
            } else {
                return false;
            }

            var loadAjaxContent = function (target, urlBase, selector) {
                var urlBase = '/gh/get/response.html/dansalmo/jsfiddle-ajax-host/tree/master/Demo/'; // remove when not on jsfiddle
                $(target).load(urlBase + ' ' + selector);
            };

            var updateContent = function (State) {
                var selector = '#' + State.data.urlPath.substring(1);
                console.log('in updateContent, url =', State.url);

                if ($(selector).length) { //content is already in #hidden_content
                    $('#content').children().appendTo('#hidden_content');
                    $(selector).appendTo('#content');
                } else {
                    $('#content').children().clone().appendTo('#hidden_content');
                    loadAjaxContent('#content', State.url, selector);
                }
            };

// Content update and back/forward button handler
            History.Adapter.bind(window, 'statechange', function () {
                updateContent(History.getState());
            });

// navigation link handler
            $('body').on('click', 'a', function (e) {
                var urlPath = $(this).attr('href');
                var title = $(this).text();
                History.pushState({urlPath: urlPath}, title, urlPath);
                return false; // prevents default click action of <a ...>
            });
        </script>




    </body>
</html>
