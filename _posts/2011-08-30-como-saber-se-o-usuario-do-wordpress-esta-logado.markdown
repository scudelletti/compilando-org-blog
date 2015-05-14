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
<p>Bom dia galera tudo jóia?</p>
<p>Eis um post rápido de como saber se um usuário está autenticado no wordpress, para isto basta usar esta função.<br />
[code lang="php"]<br />
&lt;?php<br />
     if ( !$user_ID ){<br />
          //Seu Código<br />
     }<br />
?&gt;<br />
[/code]</p>
<p>Muito útil para fazer aparecer o formulário de login.<br />
Segue o código que utilizo para fazer login:<br />
[code lang="php"]<br />
&lt;?php if ( !$user_ID ){ ?&gt;<br />
				&lt;form method=&quot;post&quot; action=&quot;http://localhost/site</p>
<p>/wp-login.php&quot; id=&quot;loginform&quot; name=&quot;loginform&quot;&gt;<br />
					&lt;p&gt;<br />
						&lt;label&gt;Nome de usu&amp;aacute;rio&lt;br&gt;<br />
						&lt;input type=&quot;text&quot; tabindex=&quot;10&quot; size=&quot;20&quot; value=&quot;&quot; class=&quot;input&quot; id=&quot;user_login&quot; name=&quot;log&quot;&gt;&lt;/label&gt;<br />
					&lt;/p&gt;<br />
					&lt;p&gt;<br />
						&lt;label&gt;Senha&lt;br&gt;<br />
						&lt;input type=&quot;password&quot; tabindex=&quot;20&quot; size=&quot;20&quot; value=&quot;&quot; class=&quot;input&quot; id=&quot;user_pass&quot; name=&quot;pwd&quot;&gt;&lt;/label&gt;<br />
					&lt;/p&gt;<br />
					&lt;p class=&quot;forgetmenot&quot;&gt;&lt;label&gt;&lt;input type=&quot;checkbox&quot; tabindex=&quot;90&quot; value=&quot;forever&quot; id=&quot;rememberme&quot; name=&quot;rememberme&quot;&gt; Lembrar&lt;/label&gt;&lt;/p&gt;<br />
					&lt;p class=&quot;submit&quot;&gt;<br />
						&lt;input type=&quot;submit&quot; tabindex=&quot;100&quot; value=&quot;Login&quot; class=&quot;button-primary&quot; id=&quot;wp-submit&quot; name=&quot;wp-submit&quot;&gt;<br />
						&lt;input type=&quot;hidden&quot; value=&quot;http://localhost/site/&quot; name=&quot;redirect_to&quot;&gt;<br />
						&lt;input type=&quot;hidden&quot; value=&quot;1&quot; name=&quot;testcookie&quot;&gt;<br />
					&lt;/p&gt;<br />
				&lt;/form&gt;<br />
			&lt;?php }else{ ?&gt;<br />
		&lt;a href='&lt;?php echo wp_logout_url( home_url() ); ?&gt;' title=&quot;Logout&quot;&gt;Logout&lt;/a&gt;<br />
	&lt;?php }	?&gt;<br />
[/code]</p>
<p>Enjoy!!!<br />
Go Go Make Code!!!</p>
