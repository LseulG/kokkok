<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="bcode" value="${param.bcode}"/>
<c:set var="pg" value="${param.pg}"/>
<c:set var="key" value="${param.key}"/>
<c:set var="word" value="${param.word}"/>
<c:set var="seq" value="${param.seq}"/>
<form id="commonform" name="commonform">
	<input type="hidden" name="bcode" id="bcode">
	<input type="hidden" name="pg" id="pg">
	<input type="hidden" name="key" id="key">
	<input type="hidden" name="word" id="word">
	<input type="hidden" name="seq" id="seq">
</form>
    
