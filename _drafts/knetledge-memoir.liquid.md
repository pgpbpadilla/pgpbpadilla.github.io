---
layout: post.liquid
title:  "Knowledge as a network"
date:   2022-07-01 16:13
last_updated: 2022-07-01 16:14
tags: knowledge network graph learning memoir knetledge
permalink: /network-of-knowledge
categories: [knowledge, network, graph, learning, memoir]
---
An understanding of the structure of knowledge can help identify ways of learn 
efficiently. 
Learning a technical subject is hard work and finding better ways to do it is a topic 
that's been on my mind for many years. This is a memoir about 
the concept of knowledge, its organization and representation. 


## Learning and resource constraints

The combination of constraints a student might
face can force choices that are not aligned with their learning goals.
I will use my own case as an example of typical constraints on time, money and expected 
future reward.

As an undergraduate student (2004-2005) of Computer Science Engineering (CSE), I 
re-discovered my liking of mathematics and for a short while I 
considered changing schools to study math. After learning, it would mean 
 starting my bachelors from scratch, I decided to complete my 
bachelors in CSE.

Before giving up pursuing a math education, I did some research by trying to solve the 
[admission exams for a masters program in mathematics](#cinvestav-exam). Although I did 
not want to admit 
it, it became clear that I had too many gaps in my knowledge, and I would not be able 
to catch up in time to join after my bachelors. I still think that given enough time I 
could have learned many of the
fundamentals, however, it would probably take longer than I would care to admit.

On top of that, I was in dire need for income, which forced my decision to start 
working right after finishing my bachelors instead of starting a masters program.

Even if time or money were not an issue at the time of making decisions about what 
to study, I also had to consider the future reward from working on a particular 
field. The expected salary of a computer programmer was looking better than that 
of a mathematician.


## Learning (about) mathematics on the side

The balancing of studying something interesting, that can be completed in time 
before my money runs out and that has high chances of improving my quality of life had 
remained a permanent fixture in my decisions regarding what to learn.

I have a wide range of interests and different levels of motivation for each. 
I have pondered many times how to better use my spare time to learn about particular 
topics in a way that's enjoyable and yet efficient. Needless to say, I'm not very good 
at it, but I have come across some ideas that I believe have helped me cope better.

Around 2009 I remember using my spare time to learn more about mathematics, I enjoyed 
reading history of maths, biographies of famous mathematicians, and trying to get an 
idea about the scope of mathematics and it's limitations.

Understanding mathematics was quite a bit of work for me, I usually needed to review 
the same concepts from different references until I found one that I could understand.
I had some short encounters with several topics in mathematics 
applied to engineering during my bachelors, e.g., Calculus, Linear Algebra, Differential 
Equations, Probability Theory, etc. but I was annoyed by repetitive mechanical 
computation.
I was drawn to the abstract aspects of these mathematical tools more than their 
applications, although learning mathematical concepts works really well by first 
mastering the mechanical skills, which builds intuition about the 
underlying more abstract concepts.
 
I was particularly interested but also terrified of theorem proving, but I did 
understand that in mathematics it's all about the theorems, once a theorem is
proved, it remains true forever! 
One can solve a thousand special cases of a problem but the really cool stuff was to 
be able to prove that some proposition will always hold true for certain kinds of 
objects.

Connecting seemingly unrelated areas of mathematics via theorems was also a recurring 
theme during my readings, and it has remained one of my favorite aspects of mathematics.

My reading excursions eventually lead me to [Paul Halmos](#paul-halmos), a renowned 
mathematician and author recognized by the quality of his written exposition.


## Paul Halmos and the organization of ideas

At some point around 2009 I came across Paul Halmos' article [_How to write
mathematics_](#halmos-writing). I had a hunch that I could get better at understanding
mathematical texts if I understood the author's though process.

The article is about the process of organizing notes, outlining, 
arranging each section, fixing mistakes and improving the text in an iterative way. 
It seemed to me that I could _reverse-engineer_ the process in order to 
understand how a mathematician thinks. I have written a post about Halmos's article 
in [Halmos' tips for writing](#halmos-writing).

Halmos describes how to organize the ideas around a topic in some form of paper
slips or cards, the cards have identifiers and can also have references to other cards.
The result is a graph or network of ideas than can later be used as an aid during the 
writing process.


## Knowledge as a network

This intuitive way of organizing knowledge as a network of interconnected concepts 
has a long history and there are many variations adapted to serve specific purposes, two 
the of the most common term I've read are [Knowledge Graphs](#knowledge-graph) 
and [Semantic Networks (Nets)](#semantic-network). This representation of knowledge is 
easily implemented in computer programs which can be used to characterize the 
structure of the network.

Two specific scenarios that I find interesting are:

1. Identifying nodes that should be connected but aren't. This happens when 
   someone who is knowledgeable in multiple 
   areas of knowledge realizes and explicitly establishes the connection. An 
   example of this is when a mathematician proves that two 
   mathematical structures or objects are equivalent. 
2. "Creating" a _new concept_ by labeling a subnetwork. In the area of Calculus, 
   an example of such a subnetwork could be a subnetwork labeled "\\( (\epsilon, \delta)
   \\)-definition of a limit"<sup>[ref](#def-limit)</sup> and it would contain 
   concepts like absolute value, a real number, function, and also the 
   relationships between them. 


## Applications of knowledge networks

Building on the idea of a network of knowledge, I wondered how it could benefit me as
a student or more generally as someone who wants to explore new areas of knowledge. This
section is about a couple of
ways in which knowledge networks can help, namely:

- building an Oracle, a system  that can answer any question about the knowledge in
  the network
- a system to generate a personalized learning curricula that minimizes time and effort

These two examples of automated systems still require a human in the loop in order
to verify that the computer program's decisions make sense. A human is also required 
to ask the questions in the case of the Oracle, and in order to provide the student 
profile and learning goals. 

Automation is great but autonomy is even better. Can we build a system that 
autonomously analyzes the network of knowledge to perform such 
tasks? Namely, identify and create missing connections, create new nodes in the 
network, formulate new questions and answer them, or even re-organize knowledge in the 
most efficient way to help students accomplish their learning goals.


### Learning efficiently: the shortest learning path

Distractions like having to interrupt my flow in order to
review other references for the same topic, or not
really knowing the best sequence of topics that I need to study in order to
accomplish my learning goals, are recurrent problems for me; I could really use a 
personalized learning path with minimal distractions.

Computing the shortest path between two nodes in the network would be useful to
students wanting to learn a target concept given their existing knowledge. 
What the student already knows is a subnetwork containing all nodes and relationships 
that the student has already mastered.

The shortest path between two nodes is the smallest study curriculum that 
accounts for the student's profile and learning goals.


### Oracles: Answering difficult questions

There are times when I only want an answer and
not necessarily a detailed explanation; an Oracle would fit this need and if necessary, 
a detailed explanation can also be requested.

Sometimes a question comes to me while doing something else, for example,
while watching Stephen Hawking's _Into the Universe_ episode on Aliens, I 
wondered how come we're still not able to build spaceships that can travel among the 
stars. 

Is it because we don't know how? or because we know that it's not feasible to do? 
Why isn't this a question we can just give to a computer system that holds all of human 
knowledge and let it crunch a spaceship design?
Another example of a difficult question:  what does it take 
to transition to a prosperous and peaceful civilization? 

One gap (among many) between today and my imaginary version of the future where a 
computer 
system can basically solve all our problems is that there isn't a global inventory of 
all of human knowledge. Even if we did have such an inventory, it's not clear to me 
that we could build an Oracle around it.


## Existing systems that use networks of knowledge 

When I talked about these ideas with friends they would point out that it's very much 
like some existing thing, for example, Wikipedia is basically a network of knowledge, 
so is the entire web with its millions of sites and interconnecting links. 
Modern search engines are limited versions of an all-knowing Oracle.

The things that can be done today in the web are quite nice, and it keeps getting better. 
However, there are still some limitations to what these systems can do.

A search engine can present results of two disconnected websites that contain 
similar keywords, so identifying missing connections is partially solved. The quality 
of these new connections needs to be reviewed by humans in order to verify they are 
truly relevant.

Creating new nodes in the network is also partially 
solved since the website crawlers can calculate some statistics and cluster sites that 
have some specific feature(s). However, the automatic labels assigned to those new 
concepts (clusters) are not likely to be useful for humans. The translation from 
the automatic labels to human-friendly labels 
would still require a human in the loop. 

Systems that can answer questions in natural languages are still work in progress and 
search engines don't actually answer questions, they simply list sites that match the 
words in the query. In many cases an answer can be arrived at by piecing together 
the content of a few sites. There too, the quality of the answer depends on your own 
skill at putting together. 

Finding useful information requires additional knowledge about the search engine, that is,
the relevance of the results depends on how well the queries are 
written, and writing better queries requires some understanding on how the search 
engine works. 

A personalized learning curricula cannot be easily generated from a 
combination of existing search engines and public encyclopedias. There are many 
commercial systems that do specialize in adaptive learning, their main drawback 
being that, for many students, money is a hard constraint.

One more aspect is the quality of the content. There are no quality controls for the 
entire internet, the quality of content varies wildly depending on the source site. 


## Related


1. <a name="paul-halmos" 
    href="https://en.wikipedia.org/wiki/Paul_Halmos">Paul Halmos (Wikipedia)</a>
2. <a name="halmos-writing" href="/halmos-writing">Halmos' tips for writing.</a> My 
   personal notes on Paul Halmos' article _How to write mathematics_
3. <a name="cinvestav-exam" href="https://www.math.cinvestav.mx/examen">Practice 
   admission tests for the masters program in Mathematics at the CINVESTAV (Center for 
   Advanced Research).</a> 
4. <a name="knowledge-graph" 
    href="https://en.wikipedia.org/wiki/Knowledge_graph">Knowledge Graph (Wikipedia)</a>
5. <a name="semantic-network" 
    href="https://en.wikipedia.org/wiki/Semantic_network">Semantic network (Wikipedia)</a>
6. <a name="def-limit" 
    href="https://en.wikipedia.org/wiki/Limit_of_a_function#(%CE%B5,_%CE%B4)-definition_of_limit">
   (Epsilon, Delta)-definition of limit
