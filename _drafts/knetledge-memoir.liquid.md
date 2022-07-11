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
that's been on my mind for many years. This is a memoir about how I used to think 
about the idea of knowledge, it's organization and how to help myself learn efficiently.


## On learning a technical subject

As an undergraduate student of Computer Science Engineering (CSE), I discovered my 
liking of mathematics during the first two years of my bachelors degree (2004-2005).

For a short while I 
considered changing schools to study mathematics but after learning that it would mean 
to start my bachelors from scratch, and so I decided to not switch and finish my 
Bachelors in CSE.

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
to transition to a prosperous and peaceful civilization? Building an Oracle would be a 
really useful and beneficial thing to do.  

A clear gap between today and my imaginary version of the future where a computer 
system can basically solve all our problems is that there isn't a global inventory of 
all of human knowledge. Even if we did have such an inventory, I'm not sure that we 
could build an Oracle.


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


