---
layout: post
status: publish
published: true
title: Youtube em Tela Cheia - Fullscreen Ubuntu 10.10
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
excerpt: Problemas para visualizar vídeos do youtube em tela cheia no linux? 3 Comandinhos
  resolvem... ;)
wordpress_id: 217
wordpress_url: http://www.compilando.org/wp/?p=217
date: '2010-11-28 11:10:07 -0200'
date_gmt: '2010-11-28 14:10:07 -0200'
categories:
- Linux
tags:
- Flash
- Fullscreen
- Linux
- Tela Cheia
- Ubuntu
- Ubuntu 10.10
comments: []
---
E ae galera como estão?

Bom, a uns dias um bugzinho no flash vinha me enchendo o saco aqui no meu ubuntu, resisti bastante até.... ai cachei a solução no Oraculo e aqui estou...

Comandinhos bestas que realmente funcionam.

Bom ai vão eles:

{% highlight bash %}
sudo mkdir /etc/adobe
sudo su
sudo echo "OverrideGPUValidation = 1" >> /etc/adobe/mms.cfg
{% endhighlight %}

Explicando....

Bom no 1º comando criamos uma pasta em /etc com o nome de Adobe.

No segundo é feita uma autenticação como root, acho desnecessario este comando aqui já que usamos Sudo, mas enfim, como copiei, acho melhor deixar ele aqui. ;)

E na ultima linha criamos um arquivo chamado mms.cfg na pasta que criamos e adicionamos o texto "OverrideGPUValidation = 1", deve ser algum parametro cabuloso do Flash ou do Gnome, não sei ao certo. Se alguem souber deixa um comentário pls.

I Love Linux. :D

Bom galera é isso, funciona bem e quebra 1 galhão.

Abraço a todos e até mais.

Fonte: [Forum Ubuntu](http://ubuntuforums.org/showthread.php?p=10072852)
