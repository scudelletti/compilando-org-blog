---
layout: post
status: publish
published: true
title: Como saber se o Usuário do Wordpress está logado
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 300
wordpress_url: http://www.compilando.org/wp/?p=300
date: '2011-08-30 10:48:49 -0300'
date_gmt: '2011-08-30 13:48:49 -0300'
categories:
- Programação
- PHP
tags:
- usuário logado wordpress
- ver se usuário está autenticado wordpress
- wordpress
- wordpress login
comments:
- id: 39
  author: Matheus ilario
  author_email: matheusilario@gmail.com
  author_url: ''
  date: '2012-03-20 15:02:00 -0300'
  date_gmt: '2012-03-20 18:02:00 -0300'
  content: post muito fera! usei e funciono blz!
---
Bom dia galera tudo jóia?

Eis um post rápido de como saber se um usuário está autenticado no wordpress, para isto basta usar esta função.

{% highlight php %}
<?php
     if ( !$user_ID ){
          //Seu Código
     }
?>
{% endhighlight %}

Muito útil para fazer aparecer o formulário de login.

Segue o código que utilizo para fazer login:

{% highlight php %}
<?php if ( !$user_ID ){ ?>
				<form method="post" action="http://localhost/site
/wp-login.php" id="loginform" name="loginform">
					<p>
						<label>Nome de usu&amp;aacute;rio<br>
						<input type="text" tabindex="10" size="20" value=" class="input" id="user_login" name="log"></label>
					</p>
					<p>
						<label>Senha<br>
						<input type="password" tabindex="20" size="20" value=" class="input" id="user_pass" name="pwd"></label>
					</p>
					<p class="forgetmenot"><label><input type="checkbox" tabindex="90" value="forever" id="rememberme" name="rememberme"> Lembrar</label></p>
					<p class="submit">
						<input type="submit" tabindex="100" value="Login" class="button-primary" id="wp-submit" name="wp-submit">
						<input type="hidden" value="http://localhost/site/" name="redirect_to">
						<input type="hidden" value="1" name="testcookie">
					</p>
				</form>
			<?php }else{ ?>
		<a href='<?php echo wp_logout_url( home_url() ); ?>' title="Logout">Logout</a>
	<?php }	?>
{% endhighlight %}

Enjoy!!!

Go Go Make Code!!!
