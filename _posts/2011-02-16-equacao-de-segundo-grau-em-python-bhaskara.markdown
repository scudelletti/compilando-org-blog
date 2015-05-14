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
<p>E ae galerinha tudo jóia?<br />
Faz um tempão que não atualizo o blog, mas no backend ando sempre brincando um pouco por aqui.</p>
<p>Desde que aprendi a programar eu sempre tive vontade de fazer um <strong>algoritmo</strong> que resolvesse equações de segundo grau. Tinha começado em VB6 que foi minha primeira <strong>linguagem de programação</strong>, mas não me recordo se terminei ou onde foi parar aquilo.</p>
<p>Sei que provavelmente utilizei mto a cabeça pq eu era mais newbie que o batman.<br />
Agora jah consigo brincar facinho com esses dilemas da matemática usando php, java e <strong>python</strong>, claro que sempre procurando as funções certas, não sou <strong>desenvolvedor Python</strong> ainda, mas acho um linguagem interessantíssima, junto ao Ruby.</p>
<p>Pra quem não lembra uma <strong>expressão de 2º grau</strong> é parecida com esta 5x² -7x +1.</p>
<p>5 representa A<br />
-7 representa B<br />
1 Representa C</p>
<p>Bom vamos ao código.</p>
<p>[code lang="python"]<br />
import math</p>
<p>a = input(&quot;Insira o Valor de A &quot;)<br />
b = input(&quot;Insira o Valor de B &quot;)<br />
c = input(&quot;Insira o Valor de C &quot;)<br />
x = []</p>
<p>delta = b**2 - 4*a*c<br />
x.insert(1, ((-b + math.sqrt(delta))/(2*a)))<br />
x.insert(2, ((-b - math.sqrt(delta))/(2*a)))</p>
<p>print &quot;Delta = &quot;+str(delta)+&quot;n&quot;</p>
<p>if delta&gt;0:<br />
        print &quot;x1=&quot;+str(x[0])+&quot;&quot;<br />
        print &quot;x2=&quot;+str(x[1])+&quot;&quot;<br />
elif delta==0:<br />
        print &quot;x=&quot;+str(x[0])+&quot;nx1 e x2 possuem o mesmo valor&quot;<br />
else:<br />
        print &quot;Nenhuma raiz Real&quot;</p>
<p>[/code]</p>
<p>O código acima obtem A, B e C do usuário e retorna o Delta e os Valor de x1 e x2.<br />
Bom galera código extremamente simples, porém deu pra <strong>brincar com Python</strong>, sofri um pouquinho com a criação do vetor, que na verdade é uma lista. Achei sinistro, mas o resto foi sussa.</p>
<p>Agora seu sobrinho, filho  ou visinho no ensino fundamental já tem como validar suas <strong>equações de segundo grau</strong>,  bom pra ficar foderoso em matemática.</p>
<p>Boa Sorte e Enjoy.</p>
