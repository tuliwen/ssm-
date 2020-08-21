<%--
  Created by IntelliJ IDEA.
  User: 14211
  Date: 2020/6/11
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>校园新闻</title>
    <script src="/js/index.js"></script>
    <style>* {
        margin: 0;
        padding: 0
    }

    a {
        color: black;
        text-decoration: none
    }

    p {
        padding: 20px 0 20px 0
    }
    input{margin-left: 10px}</style>
</head>
<body style="background: #f6f6f6">
<div style="background: #ffffff;height: 50px">
    <h2 align="center" class="border" style="line-height: 50px"><a href="/">校园新闻</a></h2>
</div>
<div style="width: 800px;height: 900px; margin: 0 auto;margin-top: 15px;background: white">
    <form action="updateAction" method="post" onsubmit="return validate_form(this)">
        <input type="hidden" name="id" value="${news.id}">
        <p align="center">标题:<input autocomplete="off" type="text" value="${news.name}" name="name"></p>
        <p align="center">作者:<input type="text" value="${news.creator}" name="creator"></p>
        <input type="hidden" value="${news.createTime}" name="createTime">
        <span style="margin-left: 2em">内容:</span>
        <p align="center"><textarea name="detail" cols="100" rows="40" name="detail">${news.detail}</textarea>
        </p>
        <p align="center"><input type="submit" value="修改" style="width: 200px;height: 50px"></p>
    </form>
</div>
</body>
</html>
