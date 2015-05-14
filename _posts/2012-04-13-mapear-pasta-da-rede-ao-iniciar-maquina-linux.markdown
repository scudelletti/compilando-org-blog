---
layout: post
status: publish
published: true
title: Mapear Pasta da Rede ao Iniciar Máquina Linux
author:
  display_name: Mandrake
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
<p><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2012/04/samba-e1334348287988.gif"><img class="aligncenter size-full wp-image-357" title="Samba" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2012/04/samba-e1334348287988.gif" alt="" width="251" height="122" /></a></p>
<p>E ae galera tudo joia?</p>
<p>Eu sou usuário Ubuntu e hoje ensinarei como mapear pastas ao iniciar o sistema operacional, no meu caso Ubuntu, mas acredito que funcione em qualquer distribuição linux.</p>
<p>Há no linux um arquivo chamado fstab, localizado em /etc, este arquivo é responsável por mapear partições de hd e rede, então vamos mapear nossa unidade de rede.</p>
<p>Em primeiro lugar abra o arquivo para edição.</p>
<p>[code lang="shell"]<br />
sudo gedit /etc/fstab<br />
[/code]</p>
<p>Para mapear a pasta remota basta adicionar a linha abaixo substituindo IP pelo ip da máquina que contem os arquivos, aleḿ de substituir o login e senha pelo login da rede, ah e não se esqueça de substituir sua pasta local.</p>
<p>[code lang="shell"]<br />
//IP/pasta_remota      /home/usuario/pasta_local          cifs    defaults,user=login,password=senha     0   0<br />
[/code]</p>
<p>O cifs é um protocolo de rede. Se não me engano o par de 0 é relativo a permissão porém não tenho certeza, e alguem souber só posta nos comentários, agradecemos. ;-)</p>
<p>Funcionou aqui sendo que o servidor de arquivos tmb é linux, acredito que seja possivel com windows com alguns ajustes ou até nenhum. o/</p>
<p>Bom ta ae meu bizu pra mapear na inicialização do linux.<br />
Abraços.</p>
