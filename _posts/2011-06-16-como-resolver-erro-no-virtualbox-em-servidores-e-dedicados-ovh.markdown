---
layout: post
status: publish
published: true
title: Como resolver erro no VirtualBox em Servidores e Dedicados OVH
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 255
wordpress_url: http://www.compilando.org/wp/?p=255
date: '2011-06-16 22:52:11 -0300'
date_gmt: '2011-06-17 01:52:11 -0300'
categories:
- Linux
- Outros
tags: []
comments:
- id: 65
  author: jar229
  author_email: jar229@gmail.com
  author_url: ''
  date: '2014-06-05 04:48:00 -0300'
  date_gmt: '2014-06-05 07:48:00 -0300'
  content: |-
    Muy útil.
    Gracias.


    Obrigado :)
- id: 77
  author: Yago Patrick
  author_email: yagopsdc@gmail.com
  author_url: ''
  date: '2015-04-15 14:45:00 -0300'
  date_gmt: '2015-04-15 17:45:00 -0300'
  content: Cara muito obrigado ajudou muito isso.
---
Após a tentativa de utilizar o **VirtualBox em um dedicado OVH** tive o problema em iniciar as VMs, este problema ocorre graças aos servidores da OVH possuem um kernel próprio dificultando a compilação do driver do Virtualbox, para resolver este problema vamos trocar o kernel.

Instalem o **VirtualBox**, e após a instalação recomendo subir o **acesso RDP**, vocês podem ver como neste post.

Agora para rodar o virtualbox é necessário trocar de kernel, antes disso é necessário saber qual o kernel atual do sistema

{% highlight bash %}
uname -r
{% endhighlight %}

Após isto vamos instalar uma nova imagem do kernel

{% highlight bash %}
apt-get install linux-image-server
{% endhighlight %}

Vamos a pasta do Grub2 e listar o diretório.

{% highlight bash %}
cd /etc/grub.d/
ls
{% endhighlight %}

Podemos ver os sistemas que estão no boot do Grub, agora vamos retirar o **kernel da OVH** do boot

{% highlight bash %}
mv 06_OVHkernel /root/
{% endhighlight %}

Atualizamos o grub

{% highlight bash %}
update-grub
{% endhighlight %}

Reinicie o seu sistema

{% highlight bash %}
sudo init 6
{% endhighlight %}

Vamos verificar qual o kernel ativo agora:

{% highlight bash %}
uname -r
{% endhighlight %}

Como podemos ver já estamos com o kernel novo.

Agora vamos instalar o novo cabeçalho do kernel o qual o virtualbox utiliza para compilar seus drivers.

{% highlight bash %}
apt-get install linux-headers-`uname -r`
{% endhighlight %}

Após isto execute o comando para compilar os drives do virtualbox, e instalar o dkms.

{% highlight bash %}
sudo apt-get install dkms
sudo /etc/init.d/vboxdrv setup
{% endhighlight %}

Agora já deve conseguir subir suas vms normalmente.

Vale lembrar que este é sempre bom fazer backup antes de fazer alterações em kernel, faça por sua conta em risco, aqui funcionou as duas vezes que precisei. :)

Enjoy.

Fonte: http://wiki.artica.fr/index.php/VirtualBox:_Unable_to_start_Virtual_Machines_on_OVH_servers
