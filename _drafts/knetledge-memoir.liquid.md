---
layout: post.liquid
title:  "Knowledge as a network"
date:   2022-07-01 16:13
last_updated: 2022-07-01 16:14
tags: knowledge memoir knetledge
permalink: /network-of-knowledge
categories: [knowledge, memoir]
---
Learning is hard. This is a memoir about how I used to think about the idea of 
knowledge, it's organization and how to help myself learn efficiently.

## On learning mathematics

As an undergraduate student of Computer Science Engineering, I discovered my liking of 
mathematics during the first two years of my bachelors degree (2004-2005).

For a short while I 
considered changing schools to study mathematics but after learning that it would mean 
to start my bachelors from scratch I decided to continue studying Computer Science 
Engineering.

### Giving up mathematics ... as a profession

After completing my bachelors, I wanted to know what would it take to continue with a 
masters in mathematics, I realized almost immediately that I didn't have the 
background or the necessary level to even pass the admission examination.

I was quite upset about that, however, even if I had the talent to pull it off, I could 
not afford to continue studying, I needed to find a job asap.


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
mathematics_](#related), I had the hope that in order to get better at understanding
mathematical texts it would be useful to know how the authors think about writing them.

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
is easily represented in a computer program and various computer programs can be written 
to analyze characterize the structure of the network.

Two specific scenarios that I find interesting are:

1. Identifying nodes that should be connected but aren't.
2. "Creating" a _new concept_ by labeling a subset of the network.


## Areas of application

A system like that could be used in many ways, it could be consulted and answer
complicated questions about any domain of knowledge, it could be used to shorten the
time it takes to learn anything by generating the most efficient personalized study
curricula for any student.

And of course, why not let it just take over the whole business of scientific research.


### Learning efficiently: the shortest learning path

I thought of using this method to find the shortest learning path between what I know
and what I want to learn.

Given that there already exists a network of cards that
contains all concepts Calculus, there would be a card for the concept of a limit, one
for derivate, another for a function of a real variable, etc. The cards would be
connected such that one can find the definition of a limit when reading the card for a
derivative because a derivative is defined in terms of a limit of a function.

If I already know what a limit is, and I want to learn about derivatives, I could find
the shortest path in the network that links these two concepts. Using the shortest
part to learn ideally should result in the shortest time and effort learn new concepts.

A computer program can be written to output the text of each card in the shortest
learning path between two concepts, creating a kind of personalized study curriculum.

### Personalized learning curricula

This was and still is very close to my heart. I am a junky for learning new things, 
however I lack the discipline, time, motivation and many other things to be successful 
at learning all the things I want.

Having a system that knows exactly where I stand, what I know, and is able to 
adapt to generate the most suitable curricula so that I can master any concept is a 
dream that has not died.

### Oracles

What does it take to build a ship for interstellar travel? What do we need to do to 
live in a peaceful and prosperous civilization? These are difficult questions that we 
have not been able to answer to my satisfaction.

It would be amazing to have a system that can handle them. One clear gap from where we 
are now and where we would need to be is that we don't have the ability to benefit 
from the learnings of other societies easily.

We also don't have a global inventory of our natural resources in a way that's usable 
to such a system so that it can make good predictions or suggestions for us.


## Is this wikipedia or the world wide web?

When I talked about this with my professor Nuño, he asked me if this was not what 
wikipedia already is.


Wikipedia is a great start,

Multimedia support is amazing and, having the ability to embed different kinds of
media (text, audio, video, etc) is definitely a good start.
but it lacks some desireable features, for example:

- the answers that you get are as good as your ability to search and connect the dots.
- The content does not adapt to the audience, if an article is very technical, many 
  non-technical readers might not be able to benefit from it.
- We cannot query it like an Oracle
- It cannot automatically connect unrelated concepts 
- It cannot identify new concepts by labeling subsets of the network

The web and wikipedia have many cool features, and it's definitly great to have them, 
however they still cannot replace humans for scientific research or for the design of 
suitable learning curricula.

## So what's missing

- automated personalized learning curricula
- oracles

## Related

1. Halmos' tips for writing
2. 


