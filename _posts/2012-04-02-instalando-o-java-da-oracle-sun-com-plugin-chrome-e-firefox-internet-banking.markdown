---
layout: post
status: publish
published: true
title: Instalando o Java da Oracle / Sun - Com Plugin Chrome e Firefox - Internet
  Banking
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 343
wordpress_url: http://www.compilando.org/wp/?p=343
date: '2012-04-02 11:06:41 -0300'
date_gmt: '2012-04-02 14:06:41 -0300'
categories:
- Linux
- Outros
- Programacao
- Java
tags:
- java
- JDK
- Ubuntu
comments: []
---
Vamos aprender como instalar o o Java da Oracle (antigo vulgo Java da Sun :-)).

Antes de mais nada recomendo desistalar o OpenJDK, para isto basta acessar este [post](/linux/programacao/java/2012/04/02/como-remover-o-openjdk-do-ubuntu-11-10.html).

Instalaremos o Java da Oracle, através de seus binários.

Saiba também como fazer funcionar Internet Banking baseados em Java nos navegadores Chrome e Firefox. Por exemplo fazer funcionar o Módulo de Proteção do Santader.

Primeiro acessamos o site da Oracle fazemos o download do JDK, neste caso instalarei o Java 7.

Página de Download do JDK:
<a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html" title="Download JDK Oracle" target="_blank">http://www.oracle.com/technetwork/java/javase/downloads/index.html</a>

No meu caso efetuei o download da versão 64 Bits e pacote tar.gz
Após o download vamos descompactar o pacote tar.gz

{% highlight bash %}
tar xvf jdk-7u3-linux-x64.tar.gz
{% endhighlight %}

Após concluída a descompactação, vamos mover nossa instalação para a pasta /opt renomeando o diretório para java.

{% highlight bash %}
sudo mv jdk1.7.0_03/ /opt/java
{% endhighlight %}

Agora podemos acessar o java aravés de seus executaveis que ficam na pasta bin, neste caso em /opt/java/bin e dos JRE em /opt/java/jre/bin/.

Só falta adicionar o java ao path, eu acostumo adicionar o path de executaveis no meu .bashrc.

Vamos Editá-lo.

{% highlight bash %}
gedit ~/.bashrc
{% endhighlight %}

Adicione ao final do arquivo as seguintes linhas

{% highlight bash %}
#Java
export PATH=$PATH:/opt/java/bin
{% endhighlight %}

Após alterar o .bashrc devemos recarregá-lo no temrinal ativo

{% highlight bash %}
source ~/.bashrc
{% endhighlight %}

Java instalado!
Podemos ver a versão com o seguinte comando:

{% highlight bash %}
java -version
{% endhighlight %}

Agora irei adicionar um link simbólico da lib do java para o Chrome e o Firefox.
Para o chrome execute a serie de comandos abaixo:

{% highlight bash %}
sudo mkdir /opt/google/chrome/plugins
cd /opt/google/chrome/plugins
sudo ln -s /opt/java/jre/lib/amd64/libnpjp2.so
{% endhighlight %}

Para o firefox execute os comandos abaixo:

{% highlight bash %}
cd /usr/lib/mozilla/plugins
sudo ln -s /opt/java/jre/lib/amd64/libnpjp2.so
{% endhighlight %}

Reinicie os navegadores e aproveite!
Java Instalado.

Agora funciona até os plugins de Segurança de Internet Banking como o Santander por exemplo.

Fonte de Pesquisa: <a href="http://www.vivaolinux.com.br/dica/Instalando-Java-Plugin-nos-navegadores-Firefox-e-Chrome" title="Viva O Linux" target="_blank">Viva O Linux</a>
