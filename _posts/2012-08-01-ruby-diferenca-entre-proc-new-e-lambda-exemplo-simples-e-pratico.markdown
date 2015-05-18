---
layout: post
status: publish
published: true
title: Ruby - Diferença entre Proc.new e Lambda - Exemplo Simples e Prático
author:
  display_name: Scudelletti
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
Boa tarde galera, acabei de ver um exemplo fenomenal da **diferença entre Procs e Lambdas no Ruby**.

Como o post original serei curto e grosso.

O autor do post do qual me baseei disse que achou na Wikipedia. Testei e fiquei maravilhado pela simplicidade e por um **codigo tão simples** acabar com uma dúvida de muitos **rubistas**.

Lá vai código! =D

{% highlight ruby %}
def metodo_proc
  f = Proc.new { return "retorno de dentro do Proc.new dentro do metodo_proc" }
  f.call #Daqui para baixo nada sera executado pois o retorno ja foi feito
  return "return do metodo_proc"
end
def metodo_lambda
  f = lambda { return "retorno de dentro do lambda dentro do metodo_lambda" }
  f.call #Neste metodo o retorno eh feito apenas na ultima linha com o return do proprio metodo
  return "retorno do metodo_lambda "
end
puts metodo_proc   # print "retorno de dentro do Proc.new dentro do metodo_proc"
puts metodo_lambda # print "retorno do metodo_lambda"
{% endhighlight %}

Galera achei outra informação bacana na diferença de Procs e Lambdas no How to Code, Lambdas lançam **"ArgumentError: wrong number of arguments"**, caso não seja passada a quantidade certa de parametros, já o Proc não, ele atribui nil como default para os parametros restantes. 

Isso para Ruby 1.9+ no 1.8.7 ambos retornam esta exception. =]

Rodando em Ruby 1.9.3...

{% highlight ruby %}
#Declarando a Proc e o Lambda
variavel_proc = Proc.new{|nacionalidade, nome, sobrenome| puts "Nacionalidade: #{nacionalidade}, Nome: #{nome} #{sobrenome}" }
variavel_lambda = lambda{|nacionalidade, nome, sobrenome| puts "Nacionalidade: #{nacionalidade}, Nome: #{nome} #{sobrenome}" }
#Fazendo a chamada passando todos os parametros
variavel_proc.call("Brasileiro","Diogo","Scudelletti")    #Print "Nacionalidade: Brasileiro, Nome: Diogo Scudelletti"
variavel_lambda.call("Brasileiro","Diogo","Scudelletti")  #Print "Nacionalidade: Brasileiro, Nome: Diogo Scudelletti"
#Fazendo a chamada sem passar um parametro
variavel_proc.call("Brasileiro","Diogo")    #Print "Nacionalidade: Brasileiro, Nome: Diogo"
variavel_lambda.call("Brasileiro","Diogo")  #Exception "ArgumentError: wrong number of arguments (2 for 3)"
{% endhighlight %}

Agora já é fácil saber a **diferença entre Lambda e Proc**(Proc.new)

Fontes: <a href="http://samdanielson.com/2007/3/19/proc-new-vs-lambda-in-ruby">Sam Danielson</a> e <a href="http://howtocode.com.br/ebooks">How To Code</a>
