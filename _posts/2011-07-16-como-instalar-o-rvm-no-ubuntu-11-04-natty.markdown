---
layout: post
status: publish
published: true
title: Como instalar o RVM no Ubuntu 11.04 Natty
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 274
wordpress_url: http://www.compilando.org/wp/?p=274
date: '2011-07-16 21:06:04 -0300'
date_gmt: '2011-07-17 00:06:04 -0300'
categories:
- Linux
- Programação
- Ruby
tags:
- deploy
- Rails 2
- Rails 3
- Rails 3.1 com RVM
- Rails 3.1 with RVM
- Rails com RVM
- Ruby Version Manager
- rvm
- versão do Ruby
comments:
- id: 29
  author: zack900
  author_email: ismardantasbs@hotmail.com
  author_url: ''
  date: '2011-08-25 01:18:00 -0300'
  date_gmt: '2011-08-25 01:18:00 -0300'
  content: valeu parceiro abraço rsr
- id: 30
  author: Breno Thales
  author_email: breno.thales@gmail.com
  author_url: ''
  date: '2011-09-20 04:14:00 -0300'
  date_gmt: '2011-09-20 04:14:00 -0300'
  content: Muito simples e objetivo seu post
- id: 31
  author: Samuel Mesquita
  author_email: samuelmesq@gmail.com
  author_url: ''
  date: '2011-09-22 03:11:00 -0300'
  date_gmt: '2011-09-22 03:11:00 -0300'
  content: valew cara funcionou, estava lendo uns tutoriais desatualizados e tava
    dando erro nos comandos para ver a versão, quando li seu tutorial percebi onde
    estava meu erro.
- id: 32
  author: Alexandre Sales
  author_email: adfs03@gmail.com
  author_url: ''
  date: '2011-09-28 00:45:00 -0300'
  date_gmt: '2011-09-28 00:45:00 -0300'
  content: |
    Eu segui suas instruções a risca, mas quando vou iniciar o server ele gera erro....
    /home/harry# rails -v
    :29:in `require': no such file to load -- rubygems (LoadError)
        from :29:in `require'
        from :167:in `load_full_rubygems_library'
        from :217:in `try_activate'
        from :32:in `rescue in require'
        from :29:in `require'
        from /usr/local/bin/rails:9:in `'

    Poderia me ajudar com isso?

    TKs.
- id: 33
  author: ''
  author_email: admin@compilando.org
  author_url: ''
  date: '2011-09-28 01:39:00 -0300'
  date_gmt: '2011-09-28 01:39:00 -0300'
  content: |-
    Que versão do Rails tu tento instalar?
    O comando rvm funfa normal?
    Usou rvm 1.9.2 --default antes de tentar rodar o rails?

    Tenta atualizar o rubygems gem update --system
    se for o Rails 2 tem que usar um versão antiga do rubygem se não me engano a 1.5.3.

    Abraço.
- id: 34
  author: Lucas Nable
  author_email: lucas.pnable@gmail.com
  author_url: ''
  date: '2012-05-03 14:12:00 -0300'
  date_gmt: '2012-05-03 17:12:00 -0300'
  content: O comando nao e package, é rvm pkg install zlib
- id: 35
  author: Mandrake6
  author_email: admin@compilando.org
  author_url: ''
  date: '2012-05-03 14:42:00 -0300'
  date_gmt: '2012-05-03 17:42:00 -0300'
  content: 'Na eṕoca q fiz o post era... =] '
- id: 36
  author: Instalar o Rails com RVM &laquo; Blog do Lukas Mussoi ;)
  author_email: ''
  author_url: http://lukasmussoi.wordpress.com/2012/03/21/instalar-o-rails-com-rvm/
  date: '2012-05-06 17:19:38 -0300'
  date_gmt: '2012-05-06 20:19:38 -0300'
  content: "[...] Confira se a instalação adicionou a seguinte linha no arquivo .bashrc,
    caso não tenha adicionado edite o arquivo .bashrc e coloque no final do mesmo.
    \  ? [...] "
---
<p>E ae galera tudo jóia?</p>
<p>Agora que sou um "Rubista" posso fazer posts sobre <strong>Ruby</strong>, então vamos ao meu primeiro post relacionado a esta magnífica <strong>linguagem de programação</strong>. Agora só falta eu arranjar um emprego com ruby! ;)</p>
<p><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/07/logo.png"><img class="aligncenter size-full wp-image-275" title="RMV - Logo - Ruby" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/07/logo.png" alt="RMV - Logo - Ruby" width="200" height="200" /></a></p>
<p>Se você necessita de varias versões do ruby instaladas em sua máquina e gostaria de alterna-las facilmente então seus problemas acabaram, basta utilizar o <strong>RV</strong>M - <strong>Gerenciador de Versões Ruby </strong>.</p>
<p>Vamos lá... Hand's On!</p>
<p>Em primeiro lugar vamos instalar as dependências:</p>
<p>[code lang="shell"]<br />
sudo apt-get install git git-core curl gcc<br />
[/code]</p>
<p>Agora vamos instalar o RVM<br />
[code lang="shell"]<br />
cd ~/<br />
wget https://rvm.beginrescueend.com/install/rvm<br />
sudo chmod +x rvm<br />
./rvm<br />
[/code]</p>
<p>Confira se a instalação adicionou a seguinte linha no arquivo .bashrc, caso não tenha adicionado edite o arquivo .bashrc e coloque no final do mesmo.<br />
[code lang="shell"]<br />
[[ -s &quot;$HOME/.rvm/scripts/rvm&quot; ]] &amp;&amp; . &quot;$HOME/.rvm/scripts/rvm&quot; # Load RVM function<br />
[/code]</p>
<p>Agora recarregue o bashrc<br />
[code lang="shell"]<br />
source .bashrc<br />
[/code]</p>
<p>Agora vamos instalar uma dependencia do <strong>RVM</strong> para que o <strong>comando Gem</strong> funcione<br />
[code lang="shell"]<br />
rvm package install zlib<br />
[/code]</p>
<p>Instale as <strong>versões do Ruby</strong> que vc deseja:<br />
[code lang="shell"]<br />
rvm install 1.8.7<br />
rvm install 1.9.2<br />
[/code]</p>
<p>Após a instalação vamos ver se funciona e definir o Ruby 1.9.2 como default:<br />
[code lang="shell"]<br />
rvm use 1.8.7<br />
ruby -v<br />
rvm use 1.9.2 --default<br />
ruby -v<br />
[/code]</p>
<p>Agora vamos atualizar o Gem:<br />
[code lang="shell"]<br />
gem -v<br />
gem update --system<br />
gem -v<br />
[/code]</p>
<p>Agora vamos criar 3 sets diferentes de Gems para instalar as versões do Rails.<br />
Vamo nessa:<br />
[code lang="shell"]<br />
rvm gemset create rails2<br />
rvm gemset create rails3<br />
rvm gemset create rails3.1<br />
[/code]</p>
<p>Agora vamos listar os Sets de Gems:<br />
[code lang="shell"]<br />
rvm gemset list<br />
[/code]</p>
<p>O gemset selecionado aparece com um =&gt; na frente, vamos instalar o rails 2 no gemset rails2<br />
[code lang="shell"]<br />
rvm gemset use rails2<br />
gem install rails --version=2.3.11<br />
[/code]</p>
<p>Após a instalação veja se está funcional:<br />
[code lang="shell"]<br />
rails -v<br />
[/code]</p>
<p>Agora vamos instalar o Rails 3:<br />
[code lang="shell"]<br />
rvm gemset use rails3<br />
gem install rails<br />
rails -v<br />
[/code]</p>
<p>Agora o Rails 3.1:<br />
[code lang="shell"]<br />
rvm gemset use rails3.1<br />
gem install rails --pre<br />
rails -v<br />
[/code]</p>
<p>Agora para usar a versão de Rails que você quer basta usar o comando rvm gemset use, seguido do gemset criado anteriormente, e rvm use, seguido da versão do Ruby, segue abaixo um teste legal trocando de versão de Ruby e GemSet<br />
[code lang="shell"]<br />
rvm use 1.8.7<br />
ruby -v<br />
rvm use 1.9.2<br />
ruby -v<br />
rvm use rails3.1<br />
rails -v<br />
[/code]</p>
<p>Como um mestre uma vez me disse "Aí é só correr pro abraço e marcar a cervejada!".</p>
<p>Agora poderá trocar de versão do ruby facilmente com o comando <strong>rvm use</strong>.</p>
<p>Enjoy!</p>
<p>Mais informações visite a pagina de <a href=" https://rvm.beginrescueend.com/rvm/install/">instalação do RVM</a>.</p>
<p>*Post atualizado devido ao problema que estava ocorrendo nos paths com o Rails.<br />
Agradeço a ajuda da galera do <a href="https://groups.google.com/group/ruby-sp?hl=pt&amp;pli=1">Grupo Ruby SP</a>.</p>
