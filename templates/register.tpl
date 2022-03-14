{include file='header.tpl'}
<div class="container">
<h2>Registeer</h2>
<form action="addUser" method="POST">
    <input type="text" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password">
    <input type="submit" value="Register">
</form>
<p>{$msg}</p>
<div>
{include file='footer.tpl'}
