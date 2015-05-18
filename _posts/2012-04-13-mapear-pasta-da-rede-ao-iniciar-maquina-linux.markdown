---
layout: post
status: publish
published: true
title: Mapear Pasta da Rede ao Iniciar Máquina Linux
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 356
wordpress_url: http://www.compilando.org/wp/?p=356
date: '2012-04-13 17:19:46 -0300'
date_gmt: '2012-04-13 20:19:46 -0300'
categories:
- Linux
- Sistemas
tags:
- fstb
- inicialização
- Linux
- mapear pasta de rede
- mapear rede
- Ubuntu
comments: []
---
E ae galera tudo joia?

Eu sou usuário Ubuntu e hoje ensinarei como mapear pastas ao iniciar o sistema operacional, no meu caso Ubuntu, mas acredito que funcione em qualquer distribuição linux.

Há no linux um arquivo chamado fstab, localizado em /etc, este arquivo é responsável por mapear partições de hd e rede, então vamos mapear nossa unidade de rede.

Em primeiro lugar abra o arquivo para edição.

{% highlight bash %}
sudo gedit /etc/fstab
{% endhighlight %}

Para mapear a pasta remota basta adicionar a linha abaixo substituindo IP pelo ip da máquina que contem os arquivos, aleḿ de substituir o login e senha pelo login da rede, ah e não se esqueça de substituir sua pasta local.

{% highlight bash %}
//IP/pasta_remota      /home/usuario/pasta_local          cifs    defaults,user=login,password=senha     0   0
{% endhighlight %}

O cifs é um protocolo de rede. Se não me engano o par de 0 é relativo a permissão porém não tenho certeza, e alguem souber só posta nos comentários, agradecemos. ;-)

Funcionou aqui sendo que o servidor de arquivos tmb é linux, acredito que seja possivel com windows com alguns ajustes ou até nenhum. o/

Bom ta ae meu bizu pra mapear na inicialização do linux.
Abraços.
