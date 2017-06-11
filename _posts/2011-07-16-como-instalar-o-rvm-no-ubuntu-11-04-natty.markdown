---
layout: post
status: publish
published: true
title: Como instalar o RVM no Ubuntu 11.04 Natty
author:
  display_name: Scudelletti
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
- Programacao
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
E ae galera tudo jóia?

Agora que sou um "Rubista" posso fazer posts sobre **Ruby**, então vamos ao meu primeiro post relacionado a esta magnífica **linguagem de programação**.

Se você necessita de varias versões do ruby instaladas em sua máquina e gostaria de alterna-las facilmente então seus problemas acabaram, basta utilizar o **RVM** - **Gerenciador de Versões Ruby **.

Vamos lá... Hand's On!

Em primeiro lugar vamos instalar as dependências:

{% highlight bash %}
sudo apt-get install git git-core curl gcc
{% endhighlight %}

Agora vamos instalar o RVM

{% highlight bash %}
cd ~/
wget https://rvm.beginrescueend.com/install/rvm
sudo chmod +x rvm
./rvm
{% endhighlight %}

Confira se a instalação adicionou a seguinte linha no arquivo .bashrc, caso não tenha adicionado edite o arquivo .bashrc e coloque no final do mesmo.

{% highlight bash %}
[[ -s &quot;$HOME/.rvm/scripts/rvm&quot; ]] &amp;&amp; . &quot;$HOME/.rvm/scripts/rvm&quot; # Load RVM function
{% endhighlight %}

Agora recarregue o bashrc

{% highlight bash %}
source .bashrc
{% endhighlight %}

Agora vamos instalar uma dependencia do **RVM** para que o **comando Gem** funcione

{% highlight bash %}
rvm package install zlib
{% endhighlight %}

Instale as **versões do Ruby** que vc deseja:

{% highlight bash %}
rvm install 1.8.7
rvm install 1.9.2
{% endhighlight %}

Após a instalação vamos ver se funciona e definir o Ruby 1.9.2 como default:

{% highlight bash %}
rvm use 1.8.7
ruby -v
rvm use 1.9.2 --default
ruby -v
{% endhighlight %}

Agora vamos atualizar o Gem:

{% highlight bash %}
gem -v
gem update --system
gem -v
{% endhighlight %}

Agora vamos criar 3 sets diferentes de Gems para instalar as versões do Rails.

Vamo nessa:

{% highlight bash %}
rvm gemset create rails2
rvm gemset create rails3
rvm gemset create rails3.1
{% endhighlight %}

Agora vamos listar os Sets de Gems:

{% highlight bash %}
rvm gemset list
{% endhighlight %}

O gemset selecionado aparece com um =&gt; na frente, vamos instalar o rails 2 no gemset rails2

{% highlight bash %}
rvm gemset use rails2
gem install rails --version=2.3.11
{% endhighlight %}

Após a instalação veja se está funcional:

{% highlight bash %}
rails -v
{% endhighlight %}

Agora vamos instalar o Rails 3:
{% highlight bash %}
rvm gemset use rails3
gem install rails
rails -v
{% endhighlight %}

Agora o Rails 3.1:
{% highlight bash %}
rvm gemset use rails3.1
gem install rails --pre
rails -v
{% endhighlight %}

Agora para usar a versão de Rails que você quer basta usar o comando rvm gemset use, seguido do gemset criado anteriormente, e rvm use, seguido da versão do Ruby, segue abaixo um teste legal trocando de versão de Ruby e GemSet

{% highlight bash %}
rvm use 1.8.7
ruby -v
rvm use 1.9.2
ruby -v
rvm use rails3.1
rails -v
{% endhighlight %}

Como um mestre uma vez me disse "Aí é só correr pro abraço e marcar a cervejada!".

Agora poderá trocar de versão do ruby facilmente com o comando **rvm use**.

Enjoy!

Mais informações visite a pagina de <a href="https://rvm.beginrescueend.com/rvm/install/">instalação do RVM</a>.

*Post atualizado devido ao problema que estava ocorrendo nos paths com o Rails.

Agradeço a ajuda da galera do <a href="https://groups.google.com/group/ruby-sp?hl=pt&amp;pli=1">Grupo Ruby SP</a>.