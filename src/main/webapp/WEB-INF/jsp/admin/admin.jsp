<%--
    Document   : newjsp
    Created on : 2012-9-3, 15:49:15
    Author     : sceliay & fanTasy
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="jj" uri="/WEB-INF/tlds/getPostTitle.tld" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">
    <head profile="http://gmpg.org/xfn/11">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><c:out value="${blogInfo.blogTitle}"/></title>

        <link rel="stylesheet" href="/static/style.css" type="text/css" media="screen" />

        <meta name="robots" content="noindex,nofollow" />
        <meta name="generator" content="WordPress 3.4.2" />
    </head>

    <body class="archive category category-general category-1">
        <div id="page">

            <div id="header">
                <a href="/" id="sitename" title="${blogInfo.blogSubTitle}"><c:out value="${blogInfo.blogTitle}"/></a>

                <ul id="nav">
                    <c:forEach items="${pageList}" var="page" >
                        <li class="page_item"><a href="/page/${page.blogPageId}"><c:out value="${page.pageTitle}"/></a></li>
                    </c:forEach>
                </ul>

                <form method="get" id="searchform" action="#">
                    <input type="text" value="" name="keyword" id="s" />
                    <input type="image" id="searchsubmit" src="/static/images/search.gif" />
                </form>
            </div>
            <div id="content">
                ...
            </div>

            <div id="sidebar">
                <ul>
                    <li>
                        <h4>控制面板</h4>
                        <ul>
                            <li><a href="#">面板主页</a></li>
                            <li><a href="#">基本设置</a></li>
                        </ul>
                    </li>
                    <li>
                        <h4>文章</h4>
                        <ul>
                            <li><a href="#">全部文章</a></li>
                            <li><a href="#">写文章</a></li>
                        </ul>
                    </li>
                    <li>
                        <h4>页面</h4>
                        <ul>
                            <li><a href="#">全部页面</a></li>
                            <li><a href="#">新建页面</a></li>
                        </ul>
                    </li>

                    <li>
                        <h4>评论</h4>
                        <ul>
                            <li><a href="#">全部评论</a></li>
                        </ul>
                    </li>

                    <li>
                        <h4>用户</h4>
                        <ul>
                            <li><a href="#">所有用户</a></li>
                            <li><a href="#">新建用户</a></li>
                        </ul>
                    </li>

                    <li>
                        <h4>链接</h4>
                        <ul>
                            <li><a href="#">全部链接</a></li>
                            <li><a href="#">新建链接</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="clear"></div>
            <div id="footer">
                <div class="alignright">
                    <a href="#page" class="top">Top</a>
                    <a href="/rss" class="rss">RSS</a>
                    <a href="/" class="home">Home</a>
                </div>
                <a href="http://www.tammyhartdesigns.com/fifty-fifth-street">Fifty Fifth Street</a> theme by <a href="http://www.tammyhartdesigns.com/">Tammy Hart Designs</a><br>
                    Powered by <a href="https://github.com/JellyJollyTeam">JellyJolly</a>
            </div>
        </div>
    </body>
</html>