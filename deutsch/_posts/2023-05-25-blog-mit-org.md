---
layout: post.liquid
title:  "Mit Emacs Org Mode ein Blog Eintrag schreiben"
date: 2023-05-25 22:50
last_updated: 2023-05-25 22:50
tags: deutsch tagebuch org-mode emacs überprüfen
categories: [deutsch, tagebuch]
permalink: /2023-05-25-blog-mit-org
toc: true
---

> Dieser Eintrag ist Teil meines Ziels: [Mein Deutsch verbessern](/now)


# Mit Emacs Org Mode ein Blog Eintrag schreiben

In diesem Eintrag versuche ich ein paar Funktionen zu
probieren. Normalaweise schreibe ich direkt im Markdown aber dieses
Mal schreibe ich den Eintrag mit [Emacs Org Mode](#orge01eaac) [target abc](#orge01eaac) <sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup>.


<a id="abs1"></a>

## Hier is eine neue Abschnitt

In dieser Abschnitt schreibe ich normales Text, es gibt nicht
besonderes hier.

Leider ist nur ein Abschnitt reicht nicht, um genug vertikaler Raum
zu schaffen; deswegen muss ich noch mehr Sätze schreiben, obwohl
sie sagen nicht viel mehr als die bisherigen.

Alle andere normalle Textformatierung ist mit Org mode auch
möglich, z.B., man kann Texte mit *italics*, **bold face**,
<span class="underline">unterlinie</span>, `monospace`, <del>durchgestrichen</del> schreiben.


## Noch ein Abschnitt

Hier sagen wir etwas anderes als bisher, zum Beispiel, hier können
wir [so ein Link](#abs1) erstellen, leider haben die generierte Ankern
zufällige Namen. Der Ziel ist, die Eintrag von Org zu
Markdown exportieren und die Links überprüfen.

Ich muss noch ein paar andere Funktionen probieren, nämlich:

1.  Bilder einzufügen [[Bilder](#bilder)]
2.  Code-snipets [[Code](#code)]
    -   Syntaxhervorhebung
3.  Mathematische Symbole und Formeln [[Mathematik](#mathe)]
4.  Textfarben ändern [[Farbiges Text](#farb-texte)]


<a id="anker-test"></a>

## Abschnitt mit Anker

[Abschnitt mit Anker](#anker-test)


<a id="bilder"></a>

## Bilder

![Sample graphs](../assets/images/ogdf-sample-graphs.png)


### Bilder mit Link

[![Sample graphs](/assets/images/ogdf-sample-graphs.png)](/assets/images/ogdf-sample-graphs.png)  


### Bilder mit Beschriftung

<div style="text-align: center">
  <img width="500" src="/assets/images/ogdf-sample-graphs.png">
  <figcaption>Eine Abbildung mit Beschriftung.</figcaption>
</div>


<a id="code"></a>

## Code

{% highlight java %}
@RunWith(SpringRunner.class)
@DataJpaTest
public class ExampleTransactionalTests {
    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private UserRepository repository;

    @Test
    public void testExample() throws Exception {
        this.entityManager.persist(new User("sboot", "1234"));
        User user = this.repository.findByUsername("sboot");
        assertThat(user.getUsername()).isEqualTo("sboot");
        assertThat(user.getVin()).isEqualTo("1234");
    }
}
{% endhighlight %}


<a id="mathe"></a>

## Mathematik

$$
   \sum_{i=0}^N k^i
   $$


### Formel: AIXI

$$
    { \color{blue} AIXI }\quad
    { \color{green} a_k } :=
    { \color{green} \arg \max_{a_k} }
    { \color{red} \sum_{ {\color{brightpink} o_k} {\color{purple} r_k} } }
    ...
    { \color{green} \max_{a_m} }
    { \color{red} \sum_{
    {\color{brightpink} o_m}
    {\color{purple} r_m}
    }
    }
    {\color{purple} [r_k + ... + r_m]}
    {\color{blue} \sum_{
    {\color{goldenrod} q}
    :U(
    {\color{goldenrod} q},
    {\color{green} a_1 ... a_m}
    ) =
    {\color{brightpink} o_1} {\color{purple} r_1}
    ...
    {\color{brightpink} o_m} {\color{purple} r_m}
    }
    2^{-\ell( {\color{goldenrod} q} )}
    }
    $$


<a id="farb-texte"></a>

## Farbiges Text

Man kann <span style="color: green">Grüne Text</span> und <span
style="color: blue">Blaue Text</span> schreiben.


## Hinweise

1.  [Org Mode Website](https://orgmode.org/): die Offizielles website für Org Mode.
    <a id="orge01eaac"></a>
    Es ist auch möglich Fußnoten zu erstellen<sup><a id="fnr.2" class="footref" href="#fn.2" role="doc-backlink">2</a></sup>


## Fußnoten


# Fu&szlig;noten

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Ein Beispiel von ein Fußnote mit Org Mode. Leider ist der
Standar sprache für Export Englisch, also ich muss auch erfinden wie
die Fußnoten Abteilungstitel auf die richtige Sprache erstellen.

Nicht nur das, die Einrückung der Fußnoten ist auch falsch.

<sup><a id="fn.2" href="#fnr.2">2</a></sup> Andere Fußnote, nur zum probieren.
