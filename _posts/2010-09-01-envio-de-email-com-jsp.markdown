---
layout: post
status: publish
published: true
title: Envio de email com JSP
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 29
wordpress_url: http://www.compilando.org/wp/?p=29
date: '2010-09-01 12:33:15 -0300'
date_gmt: '2010-09-01 15:33:15 -0300'
categories:
- Programação
- HTML
- Java
- Java EE
tags:
- Email JSP
- Enviar email Java
- enviar email JSP
- JSP
comments:
- id: 2
  author: Linuxserver
  author_email: linuxserver@hotmail.com
  author_url: ''
  date: '2011-06-23 20:26:00 -0300'
  date_gmt: '2011-06-23 20:26:00 -0300'
  content: |
    o meu esta dando erro -  utilizo email yahoo

    INICIO ENVIO
    Exceção
    Local address contains control or whitespace
    FIM
---
<p>Saudações leitores, vejo que muitos usuários sofrem ao <strong>enviar emails com JSP</strong>, eu mesmo já sofri com isso. Então trago a vocês um código divino de simples para <strong>envio de email em JSP</strong>.</p>
<p>[caption id="" align="aligncenter" width="436"]<img src="http://i206.photobucket.com/albums/bb289/Mandrake__/email-is-dead.jpg" alt="Email Vs JSP, Email Vs Java" width="436" height="293" />[/caption]</p>
<p style="text-align: center;">
<p>Para este código rodar redondo devemos ter instalado a <a rel="nofollow" href="http://commons.apache.org/email/">API Email</a> do site <a rel="nofollow" href="http://commons.apache.org/">Apache Commons</a>. para instalar basta baixar a API e colocar na pasta LIB do TomCat e restartar o serviço do mesmo.</p>
<p>O código a seguir já está definido para enviar email no formato HTML, ou seja, instanciaremos o objeto HTMLEmail, para enviar email simples utilizem <strong>SimpleMail</strong> e para <strong>enviar email com anexo com JSP</strong> utilize <strong>EmailAttachment.</strong></p>
<p><strong><span style="font-weight: normal;">O próprio site da Apache Commons possui alguns <a rel="nofollow" href="http://commons.apache.org/email/userguide.html">códigos de exemplo</a>, mas são básicos ao extremo.</span></strong></p>
<p><strong><span style="font-weight: normal;">Antes de postar o código gostaria de esclarecer uma dúvida que tive ao desenvolve-lo, alguns servidores de SMTP não aceitam login diretamente, para que consigamos logar precisamos primeiro acessar o POP e só depois disso acessaremos o SMTP.</span></strong></p>
<p><strong><span style="font-weight: normal;">Ai é só alegria. Bom tá ae o código galerinha. SPAM é feio não o pratiquem. :-)</span></strong></p>
<p>[code lang="java"]<br />
&lt;%@page import=&quot;javax.mail.*&quot;%&gt;<br />
&lt;%@page import=&quot;org.apache.commons.mail.DefaultAuthenticator&quot;%&gt;<br />
&lt;%@page import=&quot;org.apache.commons.mail.Email&quot;%&gt;<br />
&lt;%@page import=&quot;org.apache.commons.mail.SimpleEmail&quot;%&gt;<br />
&lt;%@page import=&quot;java.util.*&quot;%&gt;<br />
&lt;%@page import=&quot;org.apache.commons.mail.HtmlEmail&quot;%&gt;</p>
<p>&lt;%<br />
out.println(&quot;INICIO ENVIO&quot;);<br />
try{<br />
    	HtmlEmail email = new HtmlEmail();<br />
		email.setPopBeforeSmtp(false, &quot;pop.servidor&quot;, &quot;login&quot;, &quot;senha&quot;); //Troque pelos seus dados<br />
    	email.setSmtpPort(25); //Porta do servidor smtp<br />
    	email.setAuthenticator(new DefaultAuthenticator(&quot;login&quot;, &quot;senha&quot;)); //troque por seus dados<br />
    	email.setDebug(false);<br />
    	email.setHostName(&quot;smtp.host&quot;); //troque pelo endereco de seu servidor smtp<br />
    	email.setFrom(&quot;De&quot;); //Coloque aqui o endereco do remetende do email<br />
    	email.setSubject(&quot;Assunto&quot;); //Substitua aqui o Assunto da mensagem<br />
    	email.addTo(&quot;Para&quot;); //Troque o para pelo email que recebera a mensagem<br />
		email.addCc(&quot;Com Copia&quot;); //Aqui eh adicionado um email que sera copiado<br />
		email.addCc(&quot;Com Copia&quot;); //Para adicionar mais copias basta copiar varias vezes esta linha sempre trocando o &quot;Com Copia&quot; pelo endereco e recebimento<br />
    	email.setTLS(false);</p>
<p>	   email.setHtmlMsg(&quot;&lt;html&gt;&lt;head&gt;&lt;/head&gt;&lt;body&gt;&lt;h1&gt;Título&lt;/h1&gt;&lt;h2&gt;Subtítulo&lt;/h2&gt;&lt;p&gt;Texto Aqui&lt;/p&gt;&lt;img src='http://www.google.com.br/intl/en_com/images/srpr/logo1w.png' alt='alternativo'/&gt;&lt;p&gt;Mais Texto&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;&quot;); //Aqui eh definido o email no formato HTML<br />
       email.setTextMsg(&quot;Your email client does not support HTML messages&quot;); //Esta mensagem aparece caso o email de recebimento nao suporte HTML </p>
<p>    	email.send();  //Envia a mensagem<br />
		out.println(&quot;FIM&quot;);<br />
		email = null;</p>
<p>}catch(Exception e){<br />
	out.println(&quot;Exceção&quot;);<br />
	out.println(e.getMessage());<br />
	e.printStackTrace();<br />
}</p>
<p>out.println(&quot;FIM&quot;);</p>
<p>%&gt;<br />
[/code]</p>
<p><strong><span style="font-weight: normal;">Ah já ia me esquecendo, nem todos os emails aceitam totalmente HTML e CSS, para isso confira a documentação do mesmo ou algumas tabelas de comparação que existem no <a rel="nofollow" href="http://www.google.com">Oraculo</a>.</span></strong></p>
<p><strong><span style="font-weight: normal;"><br />
</span></strong></p>
