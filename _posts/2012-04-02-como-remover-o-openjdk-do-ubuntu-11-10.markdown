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
<p>Vamos aprender a remover o OpenJDK que vem por padrão no Ubuntu.</p>
<p><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2012/04/openjdk.jpg"><img src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2012/04/openjdk.jpg" alt="" title="OpenJDK" width="426" height="226" class="aligncenter size-full wp-image-340" /></a></p>
<p>O primeiro passo é desinstalar o Java atual, no meu caso possuo o OpenJDK.<br />
Vamos ver a versão com o seguinte comando:<br />
[code lang="shell"]<br />
java -version<br />
[/code]</p>
<p>Obtive o seguinte retorno, que confirma q estou com o OpenJDK instalado.<br />
[code lang="shell"]<br />
java version &quot;1.6.0_23&quot;<br />
OpenJDK Runtime Environment (IcedTea6 1.11pre) (6b23~pre11-0ubuntu1.11.10.2)<br />
OpenJDK 64-Bit Server VM (build 20.0-b11, mixed mode)<br />
[/code]</p>
<p>Para remover o OpenJDK execute o seguinte comando:<br />
[code lang="shell"]<br />
sudo apt-get remove openjdk-6-jre &amp;&amp; sudo apt-get remove openjdk-6-doc openjdk-6-jre-headless openjdk-6-jre-lib<br />
[/code]</p>
<p>Agora podem verificar se a desinstalação foi feita corretamente executando java -version novamente, e deve dar um erro parecido com<br />
[code lang="shell"]<br />
bash: /usr/bin/java: Arquivo ou diretório não encontrado<br />
[/code]</p>
<p>Pronto OpenJDK desinstalado, agora você pode instalar o Java Oficial da Oracle / Sun. =]</p>
<p>Fonte de Pesquisa: <a href="http://meupinguim.com/como-trocar-openjdk-pelo-sunjdk-ubuntu/" target="_blank">Meu Pinguim</a></p>
