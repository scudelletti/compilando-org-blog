---
layout: post
status: publish
published: true
title: Instalando o Java da Oracle / Sun - Com Plugin Chrome e Firefox - Internet
  Banking
author:
  display_name: Mandrake
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
- Programação
- Java
tags:
- java
- JDK
- Ubuntu
comments: []
---
<p>Vamos aprender como instalar o o Java da Oracle (antigo vulgo Java da Sun :-)).<br />
Antes de mais nada recomendo desistalar o OpenJDK, para isto basta acessar este <a href="http://www.compilando.org/programacao/como-remover-o-openjdk-do-ubuntu-11-10" target="_blank">Post</a>.</p>
<p>Instalaremos o Java da Oracle, através de seus binários.</p>
<p>Saiba também como fazer funcionar Internet Banking baseados em Java nos navegadores Chrome e Firefox. Por exemplo fazer funcionar o Módulo de Proteção do Santader.</p>
<p><a href="http://www.compilando.org/wp-content/uploads/2012/04/java-e1333375550347.jpg"><img src="http://www.compilando.org/wp-content/uploads/2012/04/java-e1333375550347.jpg" alt="" title="Logo Java" width="278" height="324" class="aligncenter size-full wp-image-344" /></a></p>
<p>Primeiro acessamos o site da Oracle fazemos o download do JDK, neste caso instalarei o Java 7.</p>
<p>Página de Download do JDK:<br />
<a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html" title="Download JDK Oracle" target="_blank">http://www.oracle.com/technetwork/java/javase/downloads/index.html</a></p>
<p>No meu caso efetuei o download da versão 64 Bits e pacote tar.gz</p>
<p>Após o download vamos descompactar o pacote tar.gz<br />
[code lang="shell"]<br />
tar xvf jdk-7u3-linux-x64.tar.gz<br />
[/code]</p>
<p>Após concluída a descompactação, vamos mover nossa instalação para a pasta /opt renomeando o diretório para java.<br />
[code lang="shell"]<br />
sudo mv jdk1.7.0_03/ /opt/java<br />
[/code]</p>
<p>Agora podemos acessar o java aravés de seus executaveis que ficam na pasta bin, neste caso em /opt/java/bin e dos JRE em /opt/java/jre/bin/.</p>
<p>Só falta adicionar o java ao path, eu acostumo adicionar o path de executaveis no meu .bashrc.<br />
Vamos Editá-lo.<br />
[code lang="shell"]<br />
gedit ~/.bashrc<br />
[/code]</p>
<p>Adicione ao final do arquivo as seguintes linhas<br />
[code lang="shell"]<br />
#Java<br />
export PATH=$PATH:/opt/java/bin<br />
[/code]</p>
<p>Após alterar o .bashrc devemos recarregá-lo no temrinal ativo<br />
[code lang="shell"]<br />
source ~/.bashrc<br />
[/code]</p>
<p>Java instalado!<br />
Podemos ver a versão com o seguinte comando:<br />
[code lang="shell"]<br />
java -version<br />
[/code]</p>
<p>Agora irei adicionar um link simbólico da lib do java para o Chrome e o Firefox.</p>
<p>Para o chrome execute a serie de comandos abaixo:<br />
[code lang="shell"]<br />
sudo mkdir /opt/google/chrome/plugins<br />
cd /opt/google/chrome/plugins<br />
sudo ln -s /opt/java/jre/lib/amd64/libnpjp2.so<br />
[/code]</p>
<p>Para o firefox execute os comandos abaixo:<br />
[code lang="shell"]<br />
cd /usr/lib/mozilla/plugins<br />
sudo ln -s /opt/java/jre/lib/amd64/libnpjp2.so<br />
[/code]</p>
<p>Reinicie os navegadores e aproveite!<br />
Java Instalado.</p>
<p>Agora funciona até os plugins de Segurança de Internet Banking como o Santander por exemplo.</p>
<p>Fonte de Pesquisa: <a href="http://www.vivaolinux.com.br/dica/Instalando-Java-Plugin-nos-navegadores-Firefox-e-Chrome" title="Viva O Linux" target="_blank">Viva O Linux</a></p>
