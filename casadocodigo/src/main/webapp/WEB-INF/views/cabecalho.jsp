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
						<li><a href="<c:url value="/carrinho"/>" rel="nofollow">Seu Carrinho (${carrinhoCompras.quantidade })</a></li>
						<li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">Sobre Nós</a></li>
						<li><a href="/pages/perguntas-frequentes" rel="nofollow">Perguntas Frequentes</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<nav class="categories-nav">
		<ul class="container">
			<li class="category"><a href="http://www.casadocodigo.com.br">Home</a></li>
			<li class="category"><a href="/collections/livros-de-agile">Agile</a></li>
			<li class="category"><a href="/collections/livros-de-front-end">Front End</a></li>
			<li class="category"><a href="/collections/livros-de-games">Games</a></li>
			<li class="category"><a href="/collections/livros-de-java">Java</a></li>
			<li class="category"><a href="/collections/livros-de-mobile">Mobile</a></li>
			<li class="category"><a href="/collections/livros-desenvolvimento-web">Web</a></li>
			<li class="category"><a href="/collections/outros">Outros</a></li>
		</ul>
	</nav>