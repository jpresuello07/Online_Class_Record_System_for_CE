<div id="header" >
<div class="container">
	<a class="logo" style="float: left;" href="http://www.tutsmore.com">Tutsmore</a>
	<div id="login_form">
	<form action="<?=site_url('user/login')?>" method="post">
		<label for="login_username">Username</label>
		<input type="text" name="login_username" value="<?=set_value('Username') ?>" />
		<label for="login_password">Password</label>
		<input type="password" name="login_password"/>
		<input type="submit" value="Sign in" name="signin"/>
	</form>
	</div>
</div>
</div>

<div id="content" class="container">
<div id="register_form">
	<h1>Sign Up</h1>
	<form action="<?=site_url('user/do_register')?>" method="post">
		<div>
		<label for="Username">User Name</label>
		<input type="text" name="Username" value="<?=set_value('Username') ?>"/>
		<label for="Password">Password</label>
		<input type="password" name="Password"/>
		<br><br><div><label for="PersonalInfo">Personal Info</label>
		</div></div>
		<textarea type="text" name="PersonalInfo" value="<?=set_value('PersonalInfo') ?>" style="margin-bottom:20px"></textarea>
		<div><label for="Fname">First Name</label><input type="text" name="Fname" <?php echo set_radio('gender', 'male'); ?>/></div>
		<div><label for="Mname">Middle Name</label><input type="text" name="Mname" <?php echo set_radio('gender', 'female'); ?>/></div>
		<div><label for="Lname">Last Name</label><input type="text" name="Lname" <?php echo set_radio('gender', 'female'); ?>/></div>
		<input type="submit" value="Sign up" name="register"/>
	</form>
</div>
<br />

<div class="error">
	<?php echo validation_errors(); ?>
</div>
