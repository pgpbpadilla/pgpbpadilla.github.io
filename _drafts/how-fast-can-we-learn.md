---
layout: post.liquid
title:  "How fast can we learn?"
date: 2021-07-20 20:54
last_updated: 2021-07-20 20:54
tags: knetledge education future learning
permalink: /how-fast-can-we-learn
categories: [education, learning, future]
---
How long does it take to make an original contribution to a specific field of knowledge?
Is it possible to save time? If so, how much?

In 2010, I was working in Mexico City as a Quality Assurance Analyst
for Ixe Banco. It was my first job and for some reason I couldn't understand
my lunch break had to be 2hrs, I could not shorten it in order to leave 
earlier in the afternoon. It was a weird schedule.

During these long lunch breaks I had time to read a bit and at the time I was reading 
Paul Halmos' article [How to write mathematics](#references) in which he explains his 
process of writing mathematics.

I like mathematics and for a long time I wished I could make some type of contribution
to the field. However, I had no formal training in mathematics and only got excited about
it when I was about 20 years old, a bit too late to start a career as a mathematician.

I would sit during some days and try to solve problems from [Spivak's Calculus](#references)
The process was slow, and not all of it was fun. Sometimes the material was too difficult
for me, it takes a while to get used to the definition, theorem, proof structure of many
texts on mathematics, specially following long proofs with steps that seem unjustified.

When things started to get too hard I would try to find a different reference for the same
theorem and hope that it would somehow be easier. Sometimes I would try to focus on the 
theorem's applications, I though, perhaps after a couple of examples, it would illuminate 
the proof.

I had a really hard time finding resources that included both a rigorous treatment, together
with practical examples and visualisations for the key ideas. The rigorous texts tended
to ignore the practical and visual aspects and the practical books with nice graphs tended
to not even try to explain why the formulas worked or how to derive them.

## There is no _standard_ treatment for Calculus

Calculus, in the form it's taught in many colleges today, for example, using Spivak's book
as the main reference, is about 300 years old. Of course there has been progress, but the
core concepts taught in schools are really that old. So, how come there isn't a _standard_
treatment which includes both the rigorous aspect and the practical and visual aspect?

As a college student at the time, I could not decide, which reference to use. Some were
too hard/abstract, some did not include the derivations of formulas, some did not include
a step by step proof I could follow. Reviewing multiple reference texts was a big 
investment of resources, and all that for a single subject.

## TODO Rewrite from here

The problem becomes more complicated if we also consider, not only the 
proficiency level a student has about a subject but also whether their
interest in the subject is only as an instrumental goal to learning something else
or if it's the main thing they want to learn.

It seemed to me that there should be an optimal -- the shortest -- path to follow in order
to learn a particular concept, given a specific starting point and goal.

This seemed so obvious an idea that I was sure someone must have already though about it.
Indeed, there's been so many people who have stumbled upon this idea.

I imagined how much better the learning experience could be if we could avoid all the time
sink-holes that students run into. Well, at the time I was only thinking about the benefits
for me, but I guess it's a problem that afflicts more people.

Back to Halmos' article, in it, I could identify some key ideas, namely:

- the material should be self-contained, as much as possible avoid referencing external
  material, otherwise the experience is interrupted by the need to look something up
- write using a spiral plan, write a first iteration of the material, then review from
  the beginning, rewriting -- not editing -- each section to make the material easier to
  understand
- use the triptych structure, say what you're going to say, say it, then say what you said
- linearize dependencies, arrange the material, so that it has a beginning, and an end

I started toying with the idea of what the learning experience would be for a student if
the above criteria were strictly met in all the subjects they desire to study.

I thought about how much time could be saved if I didn't have to check out other references,
or if the writing was crystal clear and adapted to my specific level of understanding, having
enough repetition, motivating the subject, exploring it in detail and then summarizing it
in a way that's easy to use as a reference. Also, it would be great time-saver if I could 
avoid following self-referential loops.

## What would a learning platform would look like

Coming from a software engineering background, I also started imagining what a learning
platform following these principles would look like and that's how the idea of the _Knetledge_
came to be.

_Knetledge_, a really cheesy?? name, and it comes from thinking about how to optimally
organize knowledge into a network where the nodes are concepts, and the links are the 
many kinds of relationships between concepts, the _Network of Knowledge_.

Nothing new here, many people has tried to figure out ways to organize knowledge for 
various purposes, sometimes the goal is to compress it, to make it easy to query, or 
who knows what else.

I was interested in a couple of things:

- how to represent knowledge in a way that's easy to explore existing knowledge,
- how to provide students of knowledge the tools to manipulate knowledge using 
  the tools provided by computers
    - create their own private knowledge sub-networks
    - extend existing knowledge with their own insights
    - let other people know your interests
    - collaborate with people to extend the network of knowledge
- automate knowledge discovery:
  - write programs to analyse the network representing existing knowledge and:
    - suggest new connections
    - creation of new knowledge/suggest new synthesis, the creation of a new concept
- build a semi-Oracle, a system that can suggest alternative solutions to given problems
  e.g. :
  - design a spaceship for inter-stellar travel
  - find a way to stop aging
  - design a sustainable civilization 

I digress, ..., so how much could we shorten the time it takes a student on a particular
field to be able to make a contribution to that field. Let's take the example of a student
of mathematics, perhaps he has to complete the following:

- college:
  - the syllabus structure still mainly aiming at covering breadth and in many ways 
    covering a classical structure
  - perhaps the first time when they are expected to understand the general field, the 
    fundamental questions and problems. They are expected to have a good command of 
    well-established knowledge and perhaps use it in a way that's not necessarily creative
    but demonstrates their command of the core concepts.
- masters degree:
  - lectures cover the breadth
  - a director is needed to identify a project and for guidance
  - perhaps solves an open problem or at least makes progress towards a solution
- phd
  - hopefully the student comes up with an original and legitimate question
    
A typical student that starts their primary education around 6 years of age may be able
to complete a PhD by their late-twenties. This is if nothing gets in their way that could
delay their progress.

So, assuming we have our hypothetical learning platform based on Halmos' principles, how
much sooner could a student make an original contribution? This is the question we will
explore in upcoming posts.

## References

- Paul Halmos, How to write mathematics
- Spivak's Calculus
