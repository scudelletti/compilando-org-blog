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
<p>Após a tentativa de utilizar o <strong>VirtualBox em um dedicado OVH</strong> tive o problema em iniciar as VMs, este problema ocorre graças aos servidores da OVH possuem um kernel próprio dificultando a compilação do driver do Virtualbox, para resolver este problema vamos trocar o kernel.</p>
<p>Instalem o <strong>VirtualBox</strong>, e após a instalação recomendo subir o <strong>acesso RDP</strong>, vocês podem ver como neste post.</p>
<p>Agora para rodar o virtualbox é necessário trocar de kernel, antes disso é necessário saber qual o kernel atual do sistema<br />
[code lang="shell"]<br />
uname -r<br />
[/code]</p>
<p>Após isto vamos instalar uma nova imagem do kernel<br />
[code lang="shell"]<br />
apt-get install linux-image-server<br />
[/code]</p>
<p>Vamos a pasta do Grub2 e listar o diretório.<br />
[code lang="shell"]<br />
cd /etc/grub.d/<br />
ls<br />
[/code]</p>
<p>Podemos ver os sistemas que estão no boot do Grub, agora vamos retirar o <strong>kernel da OVH</strong> do boot<br />
[code lang="shell"]<br />
mv 06_OVHkernel /root/<br />
[/code]</p>
<p>Atualizamos o grub<br />
[code lang="shell"]<br />
update-grub<br />
[/code]</p>
<p>Reinicie o seu sistema<br />
[code lang="shell"]<br />
sudo init 6<br />
[/code]</p>
<p>Vamos verificar qual o kernel ativo agora:<br />
[code lang="shell"]<br />
uname -r<br />
[/code]</p>
<p>Como podemos ver já estamos com o kernel novo<br />
Agora vamos instalar o novo cabeçalho do kernel o qual o virtualbox utiliza para compilar seus drives<br />
[code lang="shell"]<br />
apt-get install linux-headers-`uname -r`<br />
[/code]<br />
Após isto execute o comando para compilar os drives do virtualbox, e instalar o dkms.<br />
[code lang="shell"]<br />
sudo apt-get install dkms<br />
sudo /etc/init.d/vboxdrv setup<br />
[/code]</p>
<p>Agora já deve conseguir subir suas vms normalmente.</p>
<p>Vale lembrar que este é sempre bom fazer backup antes de fazer alterações em kernel, faça por sua conta em risco, aqui funcionou as duas vezes que precisei. :)</p>
<p>Enjoy.</p>
<p>Fonte: http://wiki.artica.fr/index.php/VirtualBox:_Unable_to_start_Virtual_Machines_on_OVH_servers</p>
