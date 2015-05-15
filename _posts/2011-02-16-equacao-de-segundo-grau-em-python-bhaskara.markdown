---
layout: post
status: publish
published: true
title: Equação de Segundo Grau em Python - Bhaskara
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
excerpt: Brincando com Python e Bhaskara... Resolvendo Equações de Segundo Grau com
  Python...
wordpress_id: 228
wordpress_url: http://www.compilando.org/wp/?p=228
date: '2011-02-16 18:00:23 -0200'
date_gmt: '2011-02-16 21:00:23 -0200'
categories:
- Programação
- Python
tags:
- Brincando com Python
- Equação de Segundo Grau
- Python
comments:
- id: 18
  author: Huhu_haha
  author_email: huhu_haha@hotmail.com
  author_url: ''
  date: '2011-05-02 18:18:00 -0300'
  date_gmt: '2011-05-02 18:18:00 -0300'
  content: não entendi nadaaa
- id: 19
  author: "@fedoradicas"
  author_email: gustavo@x4ids.com.br
  author_url: ''
  date: '2011-05-29 19:54:00 -0300'
  date_gmt: '2011-05-29 19:54:00 -0300'
  content: Ae Mandrake, estou dando uma passadinha por aqui... ae qualquer sugestão
    lá pro meu blog pode cantar a pedra...
- id: 20
  author: ''
  author_email: admin@compilando.org
  author_url: ''
  date: '2011-05-29 20:20:00 -0300'
  date_gmt: '2011-05-29 20:20:00 -0300'
  content: Pode deixa brother... ;)
- id: 21
  author: Prof. Jr.
  author_email: profjr@gmail.com
  author_url: ''
  date: '2011-08-30 15:00:00 -0300'
  date_gmt: '2011-08-30 15:00:00 -0300'
  content: |-
    Na verdade eu fiz um ajuste, veja:

    import math

    a = input("Insira o valor de A: ")
    b = input("Insira o valor de B: ")
    c = input("Insira o valor de C: ")

    delta = (b**2) - (4 * a * c)

    if delta  0 :
        x1=(-b + math.sqrt(delta)) / (2*a)
        x2=(-b - math.sqrt(delta)) / (2*a)
        print "Delta = "+str(delta)+""
        print  "x1 = "+str(x1)+""
        print  "x2 = "+str(x2)+""

    else :
        x1=(-b + math.sqrt(delta)) / (2*a)
        x2=(-b - math.sqrt(delta)) / (2*a)
        print "Delta = "+str(delta)+""
        print "x = "+str(x1)+"nx1 e x2 possuem o mesmo valor"

    Prof. Caniloi

    Obs.: ainda pode ser melhorado
- id: 22
  author: Reginaldo Maria
  author_email: pedro@hotmail.com
  author_url: ''
  date: '2013-01-24 01:27:00 -0200'
  date_gmt: '2013-01-24 04:27:00 -0200'
  content: "Eu aprimorei de um jeito que fica mais fácil de se entender.\n\nimport
    math\n\ndef bhaskara(a,b,c):\ndelta = (b**2) - (4*a*c)\nprint('Delta=',delta)\n\n\nif
    delta&gt;0:\nprint('x¹=',(-b+math.sqrt(delta))/2*a)\nprint('x²=',(-b-math.sqrt(delta))/2*a)\n\n\telif
    delta==0:\nprint('x¹ e x² =',(-b+math.sqrt(delta))/2*a)\n\n\telif delta&lt;0:\nprint(&#039;Nenhuma
    raiz Real&#039;)"
- id: 23
  author: Roger Felipe
  author_email: roger@hotmail.com
  author_url: ''
  date: '2013-01-24 02:50:00 -0200'
  date_gmt: '2013-01-24 05:50:00 -0200'
  content: Só precisa dar um jeito apertando TAB em certos lugares e bota import math
    e depois bota a função
- id: 24
  author: Osvaldo Pinto
  author_email: pinto@hotmail.com
  author_url: ''
  date: '2013-01-24 03:18:00 -0200'
  date_gmt: '2013-01-24 06:18:00 -0200'
  content: "Reginaldo na equação onde delta = 0 o resultado não batia, consertei esse
    engano.\n\n\nimport math\n\ndef bhaskara(a,b,c):\n\n\tdelta = (b**2) - (4*a*c)\n\n\tprint('Delta=',delta)\n\n\tif
    delta&gt;0:\nprint('x¹=',(-b+math.sqrt(delta))/2*a)\nprint('x²=',(-b-math.sqrt(delta))/2*a)\n\n\telif
    delta==0:\nprint('x¹ e x² =',-b/(2*a))\n\n\telif delta&lt;0:\nprint(&#039;Nenhuma
    raiz Real&#039;)"
---
E ae galerinha tudo jóia?
Faz um tempão que não atualizo o blog, mas no backend ando sempre brincando um pouco por aqui.
Desde que aprendi a programar eu sempre tive vontade de fazer um **algoritmo** que resolvesse equações de segundo grau. Tinha começado em VB6 que foi minha primeira **linguagem de programação**, mas não me recordo se terminei ou onde foi parar aquilo.
Sei que provavelmente utilizei mto a cabeça pq eu era mais newbie que o batman.
Agora jah consigo brincar facinho com esses dilemas da matemática usando php, java e **python**, claro que sempre procurando as funções certas, não sou **desenvolvedor Python** ainda, mas acho um linguagem interessantíssima, junto ao Ruby.
Pra quem não lembra uma **expressão de 2º grau** é parecida com esta 5x² -7x +1.
5 representa A
-7 representa B
1 Representa C
Bom vamos ao código.
{% highlight python %}
import math
a = input(&quot;Insira o Valor de A &quot;)
b = input(&quot;Insira o Valor de B &quot;)
c = input(&quot;Insira o Valor de C &quot;)
x = []
delta = b**2 - 4*a*c
x.insert(1, ((-b + math.sqrt(delta))/(2*a)))
x.insert(2, ((-b - math.sqrt(delta))/(2*a)))
print &quot;Delta = &quot;+str(delta)+&quot;n&quot;
if delta&gt;0:
        print &quot;x1=&quot;+str(x[0])+&quot;&quot;
        print &quot;x2=&quot;+str(x[1])+&quot;&quot;
elif delta==0:
        print &quot;x=&quot;+str(x[0])+&quot;nx1 e x2 possuem o mesmo valor&quot;
else:
        print &quot;Nenhuma raiz Real&quot;
{% endhighlight %}
O código acima obtem A, B e C do usuário e retorna o Delta e os Valor de x1 e x2.
Bom galera código extremamente simples, porém deu pra **brincar com Python**, sofri um pouquinho com a criação do vetor, que na verdade é uma lista. Achei sinistro, mas o resto foi sussa.
Agora seu sobrinho, filho  ou visinho no ensino fundamental já tem como validar suas **equações de segundo grau**,  bom pra ficar foderoso em matemática.
Boa Sorte e Enjoy.
