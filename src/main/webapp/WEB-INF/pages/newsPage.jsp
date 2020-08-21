<%--
  Created by IntelliJ IDEA.
  User: 14211
  Date: 2020/6/11
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>校园新闻</title>
    <style>* {
        margin: 0;
        padding: 0
    }
    a {
        color: black;
        text-decoration: none
    }
        .content{
            width: 800px; margin: 0 auto;margin-top: 15px;background: white;
            min-height: 800px;
        }
    </style>
</head>
<body style="background: #f6f6f6">
<div style="background: #ffffff;height: 50px">
    <h2 align="center" class="border" style="line-height: 50px"><a href="/">校园新闻</a></h2>
</div>

<div class="content">
    <h1 align="center" style="padding: 0 100px 0 100px;">${news.name}
    </h1>
    <p align="center" style="color: grey;opacity: 0.8">作者:${news.creator}  创建时间:${news.createTime}
    </p>
    <br>
    <p align="center" style="padding: 0 100px 15px 100px;text-indent: 2em">${news.detail}
    </p>
</div>

</body>
</html>
