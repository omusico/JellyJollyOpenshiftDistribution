<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">
    <head profile="http://gmpg.org/xfn/11">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><c:out value="${blogInfo.blogTitle}"/></title>

        <link rel="stylesheet" href="<c:url value="/static/style.css" />" type="text/css" media="screen" />

        <meta name="robots" content="noindex,nofollow" />
        <meta name="generator" content="WordPress 3.4.2" />
        <script type="text/javascript">
            //<![CDATA[
            function search() {
                var keyword = document.getElementById('s').value;
                if (keyword != '') {
                    var encodedKw = encodeURIComponent(keyword);
                    window.location.href = "<c:url value="/search/" />" + encodedKw;
                }
            }

            function searchIfPressEnter() {
                if (event.keyCode == 13) {
                    search();
                }
            }
            //]]>
        </script>
    </head>

    <body class="archive category category-general category-1">
        <div id="page">

            <div id="header">
                <a href="<c:url value="/" />" id="sitename" title="${blogInfo.blogSubTitle}"><c:out value="${blogInfo.blogTitle}"/></a>

                <ul id="nav">
                    <c:forEach items="${pageList}" var="page" >
                        <li class="page_item"><a href="<c:url value="/page/${page.blogPageId}" />"><c:out value="${page.pageTitle}"/></a></li>
                    </c:forEach>
                </ul>

                <input type="text" value="" name="keyword" id="s" onkeydown="javascript: searchIfPressEnter();" />
                <input type="image" id="searchsubmit" src="<c:url value="/static/images/search.gif" />" onclick="javascript: search();" />
            </div>
            <div id="content">
