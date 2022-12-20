<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" /> 

<body>
    
<!-- Header import (navbar) -->
<c:import url="./common/Nav.jsp" />

<!-- section import -->
<c:import url="./U-main-contents.jsp" />


<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />
</body>


