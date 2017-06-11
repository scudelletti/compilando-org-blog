---
layout: post
status: publish
published: true
title: Atualização do Nginx no Ubuntu - GPG error public key is not available
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 408
wordpress_url: http://www.compilando.org/?p=408
date: '2013-02-17 01:40:53 -0300'
date_gmt: '2013-02-17 04:40:53 -0300'
categories:
- Linux
- Outros
- Programacao
tags:
- apt-get
- GPG error
- nginx
- public key
- Ubuntu
comments: []
---
Está tendo problemas ao atualizar o **Nginx** no ubuntu devido ao erro a seguir?

Primeiro vamos ver o erro pelo terminal.

{% highlight bash %}
sudo apt-get update
{% endhighlight %}

Eis que aparece o erro de **NO_PUBKEY**:

{% highlight bash %}
Reading package lists... Done
W: GPG error: http://nginx.org precise Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY ABF5BD827BD9BF62
{% endhighlight %}

O ubuntu está dizendo que não tem a **assinatura** para a **PUBLIC_KEY** então vamos adicioná-la:

{% highlight bash %}
gpg --keyserver keyserver.ubuntu.com --recv-key ABF5BD827BD9BF62
gpg -a --export ABF5BD827BD9BF62 | sudo apt-key add -
{% endhighlight %}

Lembrando que basta substituir a chave que eu coloquei pela sua. =]

Seus problemas acabaram! ;)
