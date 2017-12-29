<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<c:url value="/" var="contextPath" />
<c:url value="/resources/css" var="cssPath" />
<c:url value="/resources/js" var="jsPath" />
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="icon"
	href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979"
	type="image/ico" />
<link href="https://plus.googlecom/108540024862647200608"
	rel="publisher" />



<link href="${cssPath}/cssbase-min.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' 	rel='stylesheet' />
<link href="${cssPath}/fonts.css" rel="stylesheet" 	type="text/css" media="all" />
<link href="${cssPath}/fontello-ie7.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/fontello-embedded.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/fontello.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/layout-colors.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/responsive-style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/guia-do-programador-style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/produtos.css" rel="stylesheet" type="text/css" media="all" />
<link href="${cssPath}/book-collection.css" rel="stylesheet" type="text/css" media="all" />
<link rel="canonical" href="http://www.casadocodigo.com.br/" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css.map">

<style type="text/css">
	#locale {
		font-size: 10px;
	}

</style>
</head>
<body class="produto">

	<header id="layout-header">
		<div class="clearfix container">
			<a href="${contextPath}" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">
					<ul class="clearfix">
					    <li><a href="${s:mvcUrl('PC#listar').build() }" rel="nofollow">Produtos</a></li>
						<security:authorize access="isAuthenticated()">
							<li><a href="${s:mvcUrl('PC#form').build() }" rel="nofollow">Cadastro de Produtos</a></li>
						</security:authorize>
						<li>
							<a href="<c:url value="/carrinho"/>" rel="nofollow">
								<s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade}" />
							</a>
						</li>
						<li><a href="#" rel="nofollow"><fmt:message key="menu.sobre"/></a></li>		
						<li>	
							<a class="localeLink" href="?locale=pt" rel="nofollow">
				                <span id="locale" class="pull-right"><fmt:message key="menu.pt"/></span>
				            </a>
						</li>
						<li>			
							<a class="localeLink" href="?locale=en_US" rel="nofollow">
				                <span id="locale" class="pull-right"><fmt:message key="menu.en"/></span>
				            </a>									
						</li>
				</nav>				
			</div>
		</div>
	</header>
	<nav class="categories-nav">
		<ul class="container">
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.home"/></a></li>
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.agile"/></a></li>
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.front_end"/></a></li>
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.games"/></a></li>
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.java"/></a></li>
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.mobile"/></a></li>
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.web"/></a></li>
			<li class="category"><a href="#"><fmt:message key="navegacao.categoria.outros"/></a></li>
		</ul>
	</nav>