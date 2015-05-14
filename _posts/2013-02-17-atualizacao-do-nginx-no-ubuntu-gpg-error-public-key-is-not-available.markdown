---
layout: post
status: publish
published: true
title: Atualização do Nginx no Ubuntu - GPG error public key is not available
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 408
wordpress_url: http://www.compilando.org/?p=408
date: '2013-02-17 01:40:53 -0300'
date_gmt: '2013-02-17 04:40:53 -0300'
categories:
- Linux
- Outros
- Programação
tags:
- apt-get
- GPG error
- nginx
- public key
- Ubuntu
comments: []
---
<p>Está tendo problemas ao atualizar o <strong>Nginx</strong> no ubuntu devido ao erro a seguir?</p>
<p>Primeiro vamos ver o erro pelo terminal.<br />
[code lang="shell"]<br />
sudo apt-get update<br />
[/code]</p>
<p>Eis que aparece o erro de <strong>NO_PUBKEY</strong>:<br />
[code lang="shell"]<br />
Reading package lists... Done<br />
W: GPG error: http://nginx.org precise Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY ABF5BD827BD9BF62<br />
[/code]</p>
<p>O ubuntu está dizendo que não tem a <strong>assinatura</strong> para a <strong>PUBLIC_KEY</strong> então vamos adicioná-la:<br />
[code lang="shell"]<br />
gpg --keyserver keyserver.ubuntu.com --recv-key ABF5BD827BD9BF62<br />
gpg -a --export ABF5BD827BD9BF62 | sudo apt-key add -<br />
[/code]</p>
<p>Lembrando que basta substituir a chave que eu coloquei pela sua. =]</p>
<p>Seus problemas acabaram! ;)</p>
