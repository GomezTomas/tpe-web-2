{include file='header.tpl'}
<div class="container">
<h2>Login</h2>
<form action="verify" method="POST">
    <input type="text" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password">
    <input type="submit" value="Login">
</form>
<p>{$msg}</p>
<div>
{include file='footer.tpl'}
