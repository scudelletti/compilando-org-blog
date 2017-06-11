---
layout: post
status: publish
published: true
title: Envio de email com JSP
author:
  display_name: Scudelletti
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
- Programacao
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
Saudações leitores, vejo que muitos usuários sofrem ao **enviar emails com JSP**, eu mesmo já sofri com isso. Então trago a vocês um código divino de simples para **envio de email em JSP**.

Para este código rodar redondo devemos ter instalado a [Lib Email](http://commons.apache.org/email/) do site [Apache Commons](http://commons.apache.org). para instalar basta baixar a Lib e colocar na pasta LIB do TomCat e restartar o serviço do mesmo.

O código a seguir já está definido para enviar email no formato HTML, ou seja, instanciaremos o objeto HTMLEmail, para enviar email simples utilizem **SimpleMail** e para **enviar email com anexo com JSP** utilize **EmailAttachment.**

O próprio site da Apache Commons possui alguns [códigos de exemplo](http://commons.apache.org/email/userguide.html), mas são básicos ao extremo.

Antes de postar o código gostaria de esclarecer uma dúvida que tive ao desenvolve-lo, alguns servidores de SMTP não aceitam login diretamente, para que consigamos logar precisamos primeiro acessar o POP e só depois disso acessaremos o SMTP.

Ai é só alegria. Bom tá ae o código galerinha. SPAM é feio não o pratiquem. :-)

{% highlight java %}
<%@page import="javax.mail.*"%>
<%@page import="org.apache.commons.mail.DefaultAuthenticator"%>
<%@page import="org.apache.commons.mail.Email"%>
<%@page import="org.apache.commons.mail.SimpleEmail"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.mail.HtmlEmail"%>
<%
out.println("INICIO ENVIO");
try{
  HtmlEmail email = new HtmlEmail();
  email.setPopBeforeSmtp(false, "pop.servidor", "login", "senha"); //Troque pelos seus dados
  email.setSmtpPort(25); //Porta do servidor smtp
  email.setAuthenticator(new DefaultAuthenticator("login", "senha")); //troque por seus dados
  email.setDebug(false);
  email.setHostName("smtp.host"); //troque pelo endereco de seu servidor smtp
  email.setFrom("De"); //Coloque aqui o endereco do remetende do email
  email.setSubject("Assunto"); //Substitua aqui o Assunto da mensagem
  email.addTo("Para"); //Troque o para pelo email que recebera a mensagem
  email.addCc("Com Copia"); //Aqui eh adicionado um email que sera copiado
  email.addCc("Com Copia"); //Para adicionar mais copias basta copiar varias vezes esta linha sempre trocando o "Com Copia" pelo endereco e recebimento
  email.setTLS(false);
  email.setHtmlMsg("<html><head></head><body><h1>Título</h1><h2>Subtítulo</h2><p>Texto Aqui</p><img src='http://www.google.com.br/intl/en_com/images/srpr/logo1w.png' alt='alternativo'/><p>Mais Texto</p></body></html>"); //Aqui eh definido o email no formato HTML
  email.setTextMsg("Your email client does not support HTML messages"); //Esta mensagem aparece caso o email de recebimento nao suporte HTML
  email.send();  //Envia a mensagem
  out.println("FIM");
  email = null;
}catch(Exception e){
  out.println("Exceção");
  out.println(e.getMessage());
  e.printStackTrace();
}
out.println("FIM");
%>
{% endhighlight %}

Já ia me esquecendo, nem todos os emails aceitam totalmente HTML e CSS, para isso confira a documentação do mesmo ou algumas tabelas de comparação que existem no Oraculo(vulgo Google).
