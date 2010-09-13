<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Top</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Toplist</h2>
		<p>
		<a href="/toplist">Toplist home</a>
		|
		<a href="/toplist/computer">By computer</a>
		|
		<a href="/toplist/volume">By volume</a>
		|
		<a href="/toplist/user">By user</a>
		|
		<a href="/toplist/location">By location</a>
		
		</p>
	<%= ViewData[ "Test" ] %>
</asp:Content>
