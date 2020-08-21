<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 14211
  Date: 2020/8/14
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="/css/index.css">
    <script src="/js/index.js"></script>
</head>
<body>
<div style="background: #ffffff;height: 50px">
    <h2 align="center" class="border" style="line-height: 50px"><a href="/">校园新闻</a></h2>
</div>

<div style="width: 800px;margin: 0 auto;margin-top: 15px">

    <c:forEach items="${list}" var="item">
    <div class="border padding">
        <div class="animation"><a href="update?id=${item.id}">
            <h2 align="center" style="line-height: 83.8px;overflow:hidden;
            text-overflow:ellipsis;white-space:nowrap;">修改</h2>
        </a></div>
        <a href="newspage?id=${item.id}">
            <h2 style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;">
                ${item.name}
            </h2>
        </a>
        <a href="delAction?id=${item.id}" class="del">X</a>
        <span>作者:${item.creator}</span><span class="right">创建时间:${item.createTime}</span>
    </div>
        </c:forEach>

    <div style="height: 70px"></div>

    <div class="fixbottom border up">
        <div class="triangle-up" onclick="move(this)"></div>
        <c:choose>
            <c:when test="${nowPage<1 && Pages>1}">
                <span class="relation">上一页</span>
                <a href="/?nowPage=${nowPage+1}" class="relation2">下一页</a>
            </c:when>
            <c:when test="${nowPage>=Pages-1 && Pages>1}">
                <a href="/<c:if test="${nowPage>1}">?nowPage=${nowPage-1}</c:if>" class="relation1">上一页</a>
                <span class="relation" style="float: right">下一页</span>
            </c:when>

            <c:when test="${nowPage>0 && nowPage<Pages-1}">
                <a href="/<c:if test="${nowPage>1}">?nowPage=${nowPage-1}</c:if>" class="relation1">上一页</a>
                <a href="/?nowPage=${nowPage+1}" class="relation2">下一页</a>
            </c:when>
            <c:otherwise>
                <span class="relation">上一页</span>
                <span class="relation" style="float: right">下一页</span>
            </c:otherwise>
        </c:choose>

        <form action="insertAction" method="post" onsubmit="return validate_form(this)">
            <p>标题: <input autocomplete="off" type="text" name="name"></p>
            <p>作者: <input type="text" name="creator"></p>
            <input type="hidden" name="createTime" value="">
            <p>内容: <textarea name="detail" cols="30" rows="5"></textarea></p>
            <p><input type="submit" value="添加" style="width: 230px;margin-top: 15px"></p>
        </form>

    </div>

</body>
</html>
