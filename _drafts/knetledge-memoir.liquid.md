---
layout: post.liquid
title:  "Knowledge as a network"
date:   2022-07-01 16:13
last_updated: 2022-07-01 16:14
tags: knowledge learning memoir knetledge
permalink: /network-of-knowledge
categories: [knowledge, learning, memoir]
---
Learning a technical subject is hard work and finding better ways to do it is a topic 
that's been on my mind for many years. This is a memoir about how I think 
about the idea of knowledge, it's organization and how to help myself learn efficiently.


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
admission exams for a masters program in mathematics. Although I did not want to admit 
it, it became clear that I had too many gaps in my knowledge, and I would not be able 
to catch up in time to join after my bachelors. I still think that given enough time I 
could still learn and master many of the
fundamentals, however, it would probably take longer than I would care to admit.

On top of that, I was in dire need for income, which forced my decision to start 
working right after finishing my bachelors instead of starting a masters program.

Even if time or money were not an issue at the time of making decisions about what 
to study, I also had to consider the future reward from working on a particular 
field. The expected salary of a computer programmer was looking better than that 
of a mathematician.


### Reading about mathematics

I got my first job as a Quality Assurance Analyst at a bank in Mexico City almost 
right after I finished my bachelors. During my spare time, I enjoyed reading about 
mathematics, it's history, biographies of famous mathematicians, and I tried to get an 
idea about the scope of mathematics and it's limitations.


### It's all about the theorems!

Understanding mathematics was quite a bit of work for me, I usually needed to review 
the same concepts from different references until I found one that I could understand.

During my bachelors I had some short encounters with several topics in mathematics 
applied to engineering, e.g., Calculus, Linear Algebra, Differential Equations, 
Probability Theory, etc.

I was annoyed by repetitive mechanical computation and drawn to the 
abstract aspects of these mathematical tools more than their applications.

However, learning many mathematical concepts works really well by first 
mastering the mechanical skills, which helps build an intuition about the 
underlying more abstract concepts.

I was particularly interested but also terrified of theorem proving, but I did 
understand that in mathematics it's all about the theorems. One can solve a thousand 
special cases of a problem but the really cool stuff was to be able to prove that a 
certain property is true for a whole set of problems so that by solving the general 
case all instances of that class of problems are also solved.

Connecting seemingly unrelated areas of mathematics via theorems was also a recurring 
theme during my readings, and it has remained one of my favorite aspects of mathematics.

And the best of all, once a theorem is proved, it remains true forever! Is there 
anything better than that?


### Understanding mathematical texts

At some point around 2008 I came across Paul Halmos' article [_How to write
mathematics_](#related), I had the idea that I could get better at understanding
mathematical texts if I understood the author's though process.

Halmos' article is about his personal process of organizing notes, outlining, 
arranging each section in the text, fixing mistakes and improving the generated text. 
It seemed to me that I could _reverse-engineer_ the process in order to 
understand how a mathematician thinks.


## Knowledge as a network

Halmos' describes how he organizes his ideas around a topic in some form of paper
slips or cards, the cards have identifiers and can also have references to other cards.
The result is a graph or network of ideas than can later be used during the writing
process.

This intuitive way of representing _knowledge_ as a network of interconnected concepts 
is easily represented in a computer program and various programs can be written 
to analyze characterize the structure of the network.

Two specific scenarios that I find interesting are:

1. Identifying nodes that should be connected but aren't.
2. "Creating" a _new concept_ by labeling a subnetwork.

Other possible uses for a network of knowledge could be:

- building an Oracle, a system  that can answer any question about the knowledge in 
  the network
- a system to generate a personalized learning curricula that minimizes time and effort 


### Automated knowledge discovery and generation

The above examples of systems require a human in the loop in order
to verify that the computer program's decisions make sense. A human is also required 
to ask the questions in the case of the Oracle, and in order to provide the student 
profile and learning goals.

One open question is whether it is possible to build an autonomous system that 
continuously analyzes the network of knowledge and can automatically perform such 
tasks? Namely, identify and create missing connections, create new nodes in the 
network, formulate new questions and answer them, and re-organize the knowledge in the 
most efficient way possible.


## Learning efficiently: the shortest learning path

Computing the shortest path between two nodes in the network becomes useful for a 
student that wants to learn a _target_ concept given a starting _concept_. The 
starting concept represents what the student already knows, whereas the target concept 
represents what they want to learn. 

Concatenating the content of each node in the shortest parth between two concepts 
results in the smallest study curriculum that accounts for the student's 
profile and learning goals.

Calculating such personalized learning curricula can be done on demand to match each 
individual student's needs, given that their starting point is known.


## Oracles: Answering difficult questions

I think I was watching Stephen Hawking's _Into the Universe_ episode on Aliens and I 
wondered how come we're still not able to build spaceships that can travel among the 
stars. Is it because we don't know how? or because we know that it's not feasible to do? 
Why isn't this a question we can just give to a computer system that holds all of human 
knowledge and let it crunch a spaceship design?

Other difficult questions started to pop into my mind, for example, what does it take 
to transition to a prosperous and peaceful civilization? Building 
an Oracle would be a really useful and beneficial thing to do.  

A clear gap between today and my imaginary version of the future where a computer 
system can basically solve all our problems is that there isn't a global inventory of 
all of human knowledge. Even if we did have such an inventory, I'm not sure that we 
could build an Oracle.


## Examples of networks of knowledge 

When I talked about these ideas with friends they would point out that it's very much 
like some existing thing, for example, Wikipedia is basically a network of knowledge, 
the Google search engine is some version of an Oracle.

A search engine can already present results of two disconnected websites that contain 
similar keywords, so identifying missing connections is partially solved.

It could also be argued that creating new nodes in the network is also partially 
solved since the website crawlers can calculate some statistics and cluster sites that 
have some specific feature(s). However, the automatic labels are not likely to be 
useful for humans. The translation from automatic labels to human-friendly labels 
would still require a human in the loop. 

The things that can be done today in the web are quite nice, one can embed images, 
videos and other types of multimedia but there are still some limitations to what we 
can do with these systems, namely:

- a system that can answer questions in natural languages is still not available, 
  search engines don't actually answer questions, they simply list sites that match 
  the words in the query
  - in many cases an answer can be arrived at by piecing it together from the 
    content of a few sites but even then it depends on your own skill to piece them 
    together 
  - the relevance of the results depends on how well the queries are written,
    and writing better queries requires some understanding on how the search engine works
- a personalized learning curricula cannot be easily generated from any combination of 
  existing search engines or public encyclopedias, there are however many non-free 
  systems specialized in adaptive learning
- the quality of the content is not uniformly good


## Related

1. Halmos' tips for writing
2. 


