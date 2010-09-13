<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexHead" ContentPlaceHolderID="head" runat="server">
	<title>Home Page</title>
</asp:Content>
<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		<%= Html.Encode(ViewData["Message"]) %></h2>
	<p>
		To learn more about ASP.NET MVC visit <a href="http://asp.net/mvc" title="ASP.NET MVC Website">
			http://asp.net/mvc</a>.
	</p>
	<br />
	<br />
	<h2>
		Authentication</h2>
	<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td valign="top">
				<form action="/api/auth/login" method="get">
				<fieldset>
					<legend>Login/Get token</legend>
					<p>
						Username:<br />
						<input type="text" name="username" value="po" />
					</p>
					<p>
						Password:<br />
						<input type="text" name="password" value="popopo" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/auth/logout" method="get">
				<fieldset>
					<legend>Logout </legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
		</tr>
	</table>
	<br />
	<br />
	<h2>
		Users</h2>
	<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td valign="top">
				<form action="/api/users/add" method="get">
				<fieldset>
					<legend>Add user</legend>
					<p>
						Username:<br />
						<input type="text" name="username" value="" />
					</p>
					<p>
						Password:<br />
						<input type="text" name="password" value="" />
					</p>
					<p>
						Email:<br />
						<input type="text" name="email" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/users/update" method="get">
				<fieldset>
					<legend>Update user</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Username:<br />
						<input type="text" name="username" value="" />
					</p>
					<p>
						New email:<br />
						<input type="text" name="username" value="" />
					</p>
					<p>
						New password:<br />
						<input type="text" name="password" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/users/delete" method="get">
				<fieldset>
					<legend>Delete user</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Username:<br />
						<input type="text" name="username" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<form action="/api/users/list" method="get">
				<fieldset>
					<legend>List users</legend>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/users/get" method="get">
				<fieldset>
					<legend>Get user</legend>
					<p>
						Username:<br />
						<input type="text" name="username" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td>
				&nbsp;
			</td>
		</tr>
	</table>
	<br />
	<br />
	<h2>
		Computers
	</h2>
	<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td valign="top">
				<form action="/api/computers/add" method="get">
				<fieldset>
					<legend>Add computer</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Name:<br />
						<input type="text" name="name" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/computers/update" method="get">
				<fieldset>
					<legend>Update computer</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						ID:<br />
						<input type="text" name="id" value="" />
					</p>
					<p>
						New name:<br />
						<input type="text" name="name" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/computers/delete" method="get">
				<fieldset>
					<legend>Delete computer</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						ID:<br />
						<input type="text" name="id" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<form action="/api/computers/list" method="get">
				<fieldset>
					<legend>List computers</legend>
					<p>
						Username: (optional)<br />
						<input type="text" name="username" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/computers/get" method="get">
				<fieldset>
					<legend>Get computer</legend>
					<p>
						ID:<br />
						<input type="text" name="id" value="1" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				&nbsp;
			</td>
		</tr>
	</table>
	<br />
	<br />
	<h2>
		Volumes</h2>
	<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td valign="top">
				<form action="/api/volumes/add" method="get">
				<fieldset>
					<legend>Add volume</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Computer ID:<br />
						<input type="text" name="computer" value="" />
					</p>
					<p>
						Name:<br />
						<input type="text" name="name" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/volumes/update" method="get">
				<fieldset>
					<legend>Update volume</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Volume ID:<br />
						<input type="text" name="id" value="" />
					</p>
					<p>
						New name:<br />
						<input type="text" name="name" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/volumes/delete" method="get">
				<fieldset>
					<legend>Delete volume</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Volume ID:<br />
						<input type="text" name="id" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<form action="/api/volumes/list" method="get">
				<fieldset>
					<legend>List volumes</legend>
					<p>
						Username: (optional)<br />
						<input type="text" name="username" value="" />
					</p>
					<p>
						Computer ID: (optional)<br />
						<input type="text" name="computer" value="1" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/volumes/get" method="get">
				<fieldset>
					<legend>Get volume</legend>
					<p>
						Volume ID:
						<input type="text" name="id" value="1" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				list
			</td>
		</tr>
	</table>
	<br />
	<br />
	<h2>
		Measures</h2>
	<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td valign="top">
				<form action="/api/measures/add" method="get">
				<fieldset>
					<legend>Add measure</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Volume ID:<br />
						<input type="text" name="volume" value="" />
					</p>
					<p>
						Disk used: (kb)<br />
						<input type="text" name="diskused" value="" />
					</p>
					<p>
						Disksize: (kb)<br />
						<input type="text" name="disksize" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/measures/update" method="get">
				<fieldset>
					<legend>Update measure</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Measure ID:<br />
						<input type="text" name="measure" value="" />
					</p>
					<p>
						Disk used: (kb)<br />
						<input type="text" name="diskused" value="" />
					</p>
					<p>
						Disksize: (kb)<br />
						<input type="text" name="disksize" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/measures/delete" method="get">
				<fieldset>
					<legend>Delete measure</legend>
					<p>
						Token:<br />
						<input type="text" name="token" value="DEBUG" />
					</p>
					<p>
						Measure ID:<br />
						<input type="text" name="measure" value="1" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<form action="/api/measures/list" method="get">
				<fieldset>
					<legend>List measurements</legend> 
					<p>
						Volume ID: (optional)<br />
						<input type="text" name="computer" value="" />
					</p>
					<p>
						<input type="submit" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				<form action="/api/measures/get" method="get">
				<fieldset>
					<legend>Get measure</legend> 
					<p>
						Measure ID:<br />
						<input type="text" name="measure" value="1" />
					</p>
				</fieldset>
				</form>
			</td>
			<td>
				&nbsp;
			</td>
			<td valign="top">
				list
			</td>
		</tr>
	</table>
	<br />
	<br />
</asp:Content>
