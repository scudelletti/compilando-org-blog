---
layout: post
status: publish
published: true
title: Ruby - Diferença entre Proc.new e Lambda - Exemplo Simples e Prático
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 370
wordpress_url: http://www.compilando.org/wp/?p=370
date: '2012-08-01 17:19:11 -0300'
date_gmt: '2012-08-01 20:19:11 -0300'
categories:
- Programação
- Ruby
tags:
- diferença entre lambda e proc
- lambda
- lamdas
- proc
- Proc.new
- procs
comments: []
---
<p><strong><span style="color: #ff0000;">Post Atualizado com mais informações úteis sobre parametros.</span></strong></p>
<p><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2012/08/Ruby-On-Rails.png"><img class="aligncenter size-thumbnail wp-image-371" title="Ruby Programming Language" src="http://www.compilando.org/wp-content/uploads/2012/08/Ruby-On-Rails-150x150.png" alt="Ruby Programming Language Logo" width="150" height="150" /></a></p>
<p>Boa tarde galera, acabei de ver um exemplo fenomenal da <strong>diferença entre Procs e Lambdas no Ruby</strong>.<br />
Como o post original serei curto e grosso.</p>
<p>O autor do post do qual me baseei disse que achou na Wikipedia. Testei e fiquei maravilhado pela simplicidade e por um <strong>codigo tão simples</strong> acabar com uma dúvida de muitos <strong>rubistas</strong>.</p>
<p>Lá vai código! =D</p>
<p>[code lang="ruby"]<br />
def metodo_proc<br />
  f = Proc.new { return &quot;retorno de dentro do Proc.new dentro do metodo_proc&quot; }<br />
  f.call #Daqui para baixo nada sera executado pois o retorno ja foi feito<br />
  return &quot;return do metodo_proc&quot;<br />
end</p>
<p>def metodo_lambda<br />
  f = lambda { return &quot;retorno de dentro do lambda dentro do metodo_lambda&quot; }<br />
  f.call #Neste metodo o retorno eh feito apenas na ultima linha com o return do proprio metodo<br />
  return &quot;retorno do metodo_lambda &quot;<br />
end</p>
<p>puts metodo_proc   # print &quot;retorno de dentro do Proc.new dentro do metodo_proc&quot;<br />
puts metodo_lambda # print &quot;retorno do metodo_lambda&quot;<br />
[/code]</p>
<p>Galera achei outra informação bacana na diferença de Procs e Lambdas no How to Code, Lambdas lançam <strong>"ArgumentError: wrong number of arguments"</strong>, caso não seja passada a quantidade certa de parametros, já o Proc não, ele atribui nil como default para os parametros restantes. </p>
<p>Isso para Ruby 1.9+ no 1.8.7 ambos retornam esta exception. =]</p>
<p>Rodando em Ruby 1.9.3...<br />
[code lang="ruby"]<br />
#Declarando a Proc e o Lambda<br />
variavel_proc = Proc.new{|nacionalidade, nome, sobrenome| puts &quot;Nacionalidade: #{nacionalidade}, Nome: #{nome} #{sobrenome}&quot; }<br />
variavel_lambda = lambda{|nacionalidade, nome, sobrenome| puts &quot;Nacionalidade: #{nacionalidade}, Nome: #{nome} #{sobrenome}&quot; }</p>
<p>#Fazendo a chamada passando todos os parametros<br />
variavel_proc.call(&quot;Brasileiro&quot;,&quot;Diogo&quot;,&quot;Scudelletti&quot;)    #Print &quot;Nacionalidade: Brasileiro, Nome: Diogo Scudelletti&quot;<br />
variavel_lambda.call(&quot;Brasileiro&quot;,&quot;Diogo&quot;,&quot;Scudelletti&quot;)  #Print &quot;Nacionalidade: Brasileiro, Nome: Diogo Scudelletti&quot;</p>
<p>#Fazendo a chamada sem passar um parametro<br />
variavel_proc.call(&quot;Brasileiro&quot;,&quot;Diogo&quot;)    #Print &quot;Nacionalidade: Brasileiro, Nome: Diogo&quot;<br />
variavel_lambda.call(&quot;Brasileiro&quot;,&quot;Diogo&quot;)  #Exception &quot;ArgumentError: wrong number of arguments (2 for 3)&quot;<br />
[/code]</p>
<p>Agora já fácil saber a <strong>diferença entre Lambda e Proc</strong>(Proc.new)</p>
<p>Fontes: <a href="http://samdanielson.com/2007/3/19/proc-new-vs-lambda-in-ruby">Sam Danielson</a> e <a href="http://howtocode.com.br/ebooks">How To Code</a></p>
