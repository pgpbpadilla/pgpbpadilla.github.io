---
layout: post.liquid
title:  "Org-mode + PlantUML + Jekyll"
date: 2023-12-23 So 12:34
last_updated: 2023-12-23 So 12:34
tags:
  - journal
  - deutsch
  - org-mode
  - plantuml
  - jekyll
categories: [journal]
permalink: /2023-12-23-org+plantuml+jekyll
toc: false
---

Heute möchte ich zeigen wie man ein PlantUML Diagramm mit Org-mode
erstellt und in ein Jekyll Blog veröffentlicht.

Der Quellcode des Diagramm ist:

    Alice -> Bob:  synchrone Nachricht
    Alice ->> Bob: asynchrone Nachricht

Man kann der PlantUML-Quellcode in Org Codeblöcke einbetten<sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup>: 

    #+begin_src plantuml :file ../assets/svg/org+plantuml.svg :exports code
      Alice -> Bob:  synchrone Nachricht
      Alice ->> Bob: asynchrone Nachricht
    #+end_src
    
    #+RESULTS:
    [[file:../assets/svg/org+plantuml.svg]]

Das Argument `:file` gibt den Speicherort des Diagramms an.

Wenn wir das Diagramm anzeigen wollen, können wir so machen:

    #+begin_export html
    ![Diagram](/assets/svg/org+plantuml.svg)
    #+end_export

Das Diagramm sieht so aus:

![Diagram](/assets/svg/org+plantuml.svg)


# Fu&szlig;noten

<sup><a id="fn.1" href="#fnr.1">1</a></sup> [Org-babel PlantUML-Unterstützung](https://eschulte.github.io/babel-dev/DONE-integrate-plantuml-support.html)
