---
layout: post
status: publish
published: true
title: Virtualbox RDP no Ubuntu Server 11.04
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 253
wordpress_url: http://www.compilando.org/wp/?p=253
date: '2011-06-16 22:39:19 -0300'
date_gmt: '2011-06-17 01:39:19 -0300'
categories:
- Linux
tags: []
comments:
- id: 28
  author: Dsilva
  author_email: dsilva@s4it.com.br
  author_url: ''
  date: '2012-04-24 12:49:00 -0300'
  date_gmt: '2012-04-24 15:49:00 -0300'
  content: Procurar na Documentação do Virtual Box? hahahahha que artigo de bosta.
    Seria mais fácil um artigo, " como tirar uma dúvida " Procurando na Documentação.
- id: 66
  author: jar229
  author_email: jar229@gmail.com
  author_url: ''
  date: '2014-06-05 04:48:00 -0300'
  date_gmt: '2014-06-05 07:48:00 -0300'
  content: |-
    Muy útil.

    Gracias mil.

    Obrigado :)
---
Neste post ensinarei a vcs como executar o **RDP do VirtualBox**.
<a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/06/Virtualbox_logo.png"><img src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/06/Virtualbox_logo.png" alt="" title="Virtualbox_logo" width="512" height="512" class="aligncenter size-full wp-image-264" /></a>
Após a instalação é necessario a instalação de um driver próprio do VirtualBox vamos instalar o dkms e instalar este driver.
{% highlight bash %}
sudo apt-get install dkms
{% endhighlight %}
Agora vamos instalar o <a href="http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html#extpack">Extension Pack</a> do VirtualBox que garante o acesso via RDP. Baixem ele <a href="http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html#extpack">aqui</a>. Executem o comando abaixo para instalar o Extension Pack.
{% highlight bash %}
vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-4.0.8-71778.vbox-extpack
{% endhighlight %}
Agora vamos instalar o driver propriamente dito.
{% highlight bash %}
sudo /etc/init.d/vboxdrv setup
{% endhighlight %}
Agora vamos subir a VM já criada e configurada, criem pela interface gráfica ou pelo modo texto, para isto basta googlear um pouco.
{% highlight bash %}
vboxheadless -startvm &quot;NomeDaVM&quot; -e &quot;TCP/Ports=3389&quot;
{% endhighlight %}
Em TCP/Ports vocês defines a porta a qual se conectarão pelo acesso remoto RDP, para logar tranquilamente e efetuar os testes de condiguração e instalação aconselho deixar a autenticação como Null ou Nula, após a confirmação do funcionamento aconselho deixarem extended ou extendida, mas para isto funcionar deve-se criar um arquivo de configuração com os usuários. Aconselho procurarem na <a href="http://www.virtualbox.org/wiki/Documentation">documentação do VirtualBox</a> como criar autenticação.
Abração galera!
