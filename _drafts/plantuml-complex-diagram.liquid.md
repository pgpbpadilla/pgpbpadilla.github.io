---
layout: post.liquid
title:  "PlantUML: the state of diagram layouts"
date: 2022-12-28 12:20
last_updated: 2022-12-28 12:20
tags: journal plantuml diagram layout
permalink: /plantuml-diagram-layout
categories: [journal]
---
I use [PlantUML](#puml-site) regularly to visualize software components or ideas for 
Blog entries. Often the layout becomes unwieldy and a lot of time goes into tweaking it.

This entry is just to write down my thoughts about the current state of diagram 
layouts when using PlantUML.


# Bad layouts make diagrams unusable 

The fact that producing good-looking diagrams using PlantUML is notoriously difficult 
is known for a while, e.g.,

1. [Graphviz is not good enough](https://forum.plantuml.net/4842/graphviz-is-not-good-enough):
   the original poster seems to think that the issue lies in the underlying graph 
   drawing tool, namely [Graphviz](#gv-site), a mature (30+ years old) graph 
   visualization package. He suggests that by using the
   [Open Graph Drawing Framework](#ogdf-site) PlantUML could generate better layouts.

2. [Diagrams are a mess](https://github.com/plantuml/plantuml/issues/13): shows an 
   example of how the diagram becomes utterly unreadable due to the 
   terrible layout of the diagram. It seems noteworthy to me that this happens more 
   often for diagrams where the number edge crossings is high, which are also known as 
   non-planar graphs since they cannot be drawn on a plane without edge crossings.


I have tried to understand how difficult it would be to improve this
situation, and I expected that it would not be trivial, otherwise it would have been
done already.

At the moment, it seems to me that the issue could arise due to the default layout
options that PlantUML uses, at least that's what I understood from reading the forum
post, however, it's not super clear to me how this happens. I can think of at least
two possibilities:

1. Graphviz does not have better layout algorithms
2. PlantUML instructs Graphviz to use an algorithm that does not produce the
   best layout


## The Open Graph Drawing Framework

The idea of [planarization](link to wiki) comes up multiple times when reading about
graph drawing, so I spend some time reading about the
[Open Graph Drawing Framework](https://ogdf.uos.de/). I was quite impressed with the
result in the layouts for complex graphs.

![Sample graphs](../assets/images/ogdf-sample-graphs.png)

When using the OGDF C++ framework, graphs are defined via building the required data 
structures (Graph, GraphAttributes), then it's possible to apply different types of 
[layouts](https://ogdf.github.io/doc/ogdf/classogdf_1_1_layout_module.html).

The OGDF is able to generate output in GML and SVG formats. SVG files can be opened by 
any modern web browser. For GML files I needed to use the 
[gml2gv](https://graphviz.org/docs/cli/gml2gv/) utility (part of 
Graphviz) to convert them in to [DOT](https://graphviz.org/doc/info/lang.html) 
files and eventually into SVG files:

```shell
# Convert GML into DOT 
gml2gv -o graph.dot graph.gml

# Convert DOT into SVG
dot -Tsvg graph.dot > graph.svg
```

<a name="gotchas" href=""></a>
**GOTCHAs**: TODO: These seem like good candidates for footnotes.

1. it seems that not all GML files can be converted to DOT files and I don't know why
2. sometimes OGDF will refuse to create an SVG files from a graph data structure if 
   some conditions are not met, I need to investigate this further


### Loading GML files to customize the layout

The OGDG sources have examples on how it's possible to load a GML file,  
customize the graph layout and other attributes and then regenrate a GML or SVG file.

This could be useful if PlantUML were able to generate GML as an output format. See 
[GOTCHAS](#gotchas).


## PlantUML layout hints

PlantUML does provide some degree of control by means of hints on how to layout the
arrows/elements in a diagram [link to PlantUML] docs, however, even then, there are
times where the hints are ignored, or the results are not very good, and sometimes
they behaviour is quite counter-intuitive.

I have mixed feeling about the PlantUML syntax mixing what is connected to what and
also providing layout options, it seems to me that these two should be separate, in
the same way that writing a document can be split into different phases, e.g., writing
Latex and Typesetting.


## How I deal with PlantUML's layout limitations

There are a few ways to deal the current these limitations. The first one that I'm
currently using is to avoid creating diagrams with too many elements and connections.
This usually means that I have to create multiple diagrams, each one showing different
aspects of what I'm working on.

This is a good exercise in diagram making, since it forces me to really refine the
diagram and only draw elements that are really relevant to what I'm trying to show.
The same goes for drawing connections, I end up removing those connections that don't
really emphasize the message of the diagram.

Recently I try to be more concious about what type of diagram I'm making: am I trying
to show an accurate picture, or to emphasize one particular thing?

Some diagrams are only really useful if they are accurate, but in other cases,
sacrificing accuracy to bring attention to the really important parts really pays off.


## Technical alternatives

Given my limited knowledge of all the tools involved, there are a couple options I can
think of on how to leverage OGDF to improve layout of PlantUML diagrams.

1. Extend PlantUML so that it instructs GraphViz to a better layout algorithm.
2. Extend PlantUML and allow interaction with OGDF, sort of like an adapter that takes
   in the data structures parsed from the PlantUML code into OGDF data structures,
   then use OGDF's layout algorithms.
3. Extend PlantUML so that it can output GML files, then load the GML with OGDF and
   apply a custom layout. The resulting graph can be again exported to GML or SVG format.


## References

1. <a name="puml-site" href="https://plantuml.com/en/">PlantUML website</a>
2. Existing forum discussion
2. Existing Github issue showing the layout mess
2. OGDF pre-print
2. OGDF github repo
3. PlantUML output formats: https://plantuml.com/de/command-line
4. <a id="gv-site" href="https://graphviz.org">Graphviz</a>
5. DOT - https://graphviz.org/doc/info/command.html
6. gml2gv
7. https://en.wikipedia.org/wiki/Planar_graph





