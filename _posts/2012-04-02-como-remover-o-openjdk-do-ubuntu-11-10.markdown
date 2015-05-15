---
layout: post
status: publish
published: true
title: Como remover o OpenJDK do Ubuntu 11.10
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 339
wordpress_url: http://www.compilando.org/wp/?p=339
date: '2012-04-02 10:57:39 -0300'
date_gmt: '2012-04-02 13:57:39 -0300'
categories:
- Linux
- Programação
- Java
tags:
- java
- openjdk
- Ubuntu
comments: []
---
Vamos aprender a remover o OpenJDK que vem por padrão no Ubuntu.

O primeiro passo é desinstalar o Java atual, no meu caso possuo o OpenJDK.
Vamos ver a versão com o seguinte comando:

{% highlight bash %}
java -version
{% endhighlight %}

Obtive o seguinte retorno, que confirma q estou com o OpenJDK instalado.

{% highlight bash %}
java version "1.6.0_23"
OpenJDK Runtime Environment (IcedTea6 1.11pre) (6b23~pre11-0ubuntu1.11.10.2)
OpenJDK 64-Bit Server VM (build 20.0-b11, mixed mode)
{% endhighlight %}

Para remover o OpenJDK execute o seguinte comando:

{% highlight bash %}
sudo apt-get remove openjdk-6-jre && sudo apt-get remove openjdk-6-doc openjdk-6-jre-headless openjdk-6-jre-lib
{% endhighlight %}

Agora podem verificar se a desinstalação foi feita corretamente executando java -version novamente, e deve dar um erro parecido com

{% highlight bash %}
bash: /usr/bin/java: Arquivo ou diretório não encontrado
{% endhighlight %}

Pronto OpenJDK desinstalado, agora você pode instalar o Java Oficial da Oracle / Sun. =]

Fonte de Pesquisa: <a href="http://meupinguim.com/como-trocar-openjdk-pelo-sunjdk-ubuntu/" target="_blank">Meu Pinguim</a>
