{include file='header.tpl'}
<div class="container">
<h2>Register</h2>
<form action="addUser" method="POST">
    <div class="input-group mb-3">
        <input class="form-control" type="text" name="email" placeholder="Email" required>
        <input class="form-control" type="password" name="password" placeholder="Password">
    </div>
    <input class="btn btn-outline-primary form-control" type="submit" value="Register">
</form>
<p>{$msg}</p>
<div>
{include file='footer.tpl'}
