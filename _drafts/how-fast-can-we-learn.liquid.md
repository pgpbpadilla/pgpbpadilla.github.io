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
Paul Halmos' article: _[How to write mathematics](#references)_, in it, Halmos explained his
process of writing mathematics. For a long time I have wished I could make some
type of contribution to the field. However, I had no formal training in mathematics
and only got excited about it when I was about 20 years old, a bit too late to start
a career as a mathematician.

Some days I would sit and try to solve problems from [Spivak's Calculus](#references),
my progress was slow, and not all of it was fun. Sometimes the material was too difficult,
it takes a while to get used to the definition, theorem, proof structure of many
texts on mathematics, specially following long proofs with steps that seem unjustified.

When things started to get too hard I would try to find a different reference for the same
theorem and hope that it would somehow be easier to understand. Other times I would try to
focus on the practical applications, perhaps after a couple of examples, it would illuminate
the proof, I thought.

I had a really hard time finding resources that included both a rigorous treatment, together
with practical examples and visualisations for the key ideas. The rigorous texts often
ignore the practical and visual aspects, and the practical books, with nice graphs and
practical examples usually did not explain how to derive the key formulas.

## There is no _standard_ treatment for Calculus

The core ideas of Calculus are about 300 years old and to the best of my knowledge, there
is no universally accepted canonical treatment of the subject for undergraduate courses.
There are a few classical books from well know authors (Spivak, Hardy, Courant, and Apostol)
and it's best to study them all because each has a different profile as I explained before.

As a recent college graduate -- in 2010 --, I could not decide, which reference to use.
Some were too hard/abstract, some did not include the derivations of formulas, some did
not include a step by step proof I could follow and worse than that, the time and effort
to review all of them was massive.

## Is there an optimal learning path?

Depending on the needs, and goals of the students, finding adequate references for a
subject can be even more complicated. The material needs to cover the gaps in their
knowledge, at the same time it should include sufficient practical examples or go
really deep into how to derive certain results while keeping the exposition to a level
where the student can understand.

Given a particular student, their base knowledge, and their goals or needs, how could we
find the optimal learning path? One that fulfills their goals with minimal investment of
resources.

Judging by the duration and syllabus of top universities in the english-speaking world,
this remains an open question. Choosing what to remove from the student curricula seems
to be a problem more difficult than I initially imagined.

## Is it a problem of how to organize material?

Why is it so hard to come up with an optimal learning path? One idea is that it has to do
with how the material is organized and presented. Halmos' touches on these two aspects
when he described his method for writing mathematics. Writing with a specific audience
in mind, making the material self-contained, and providing a logical sequence and
reiterating the important ideas are insights that made Halmos such a popular author of
mathematics.

What if we could build some learning platform by applying these principles? Could we
then create personalized learning paths for students? The platform would need to:

- have an understanding of the student's profile so that it only presents relevant
  material,
- facilitate access to related concepts without breaking the flow and without losing
  sight of the learning goal,
- provide feedback about the progress made in order to motivate the student to continue,
- give the student enough space to gain mastery of the subject under study

## Knowledge as a network of concepts

My background is in the field of computer engineering, specializing in Software, and so
I saw the problem from that perspective. I was thinking of representing knowledge as a
graph, where the nodes stand for specific concepts, and the links describe the
relationships between them. Soon I started calling it the Network of Knowledge,
_Knetledge_ for short.


I should mention that this representation of knowledge as a graph was by no means new, and
I wasn't aware that there have been and there are many ongoing attempts to find better ways
to represent knowledge. The end goal imposes some constraints on the solution, some
representations can make it easier to query a large database of knowledge, other
representations could be more compact, etc.

For the rest of this post, our goal will be to provide students with an optimal learning
path, designed to allow them to make progress as fast as possible and investing as few
resources as possible.


## The student's journey

Let's imagine a hypothetical math student, it may take many years before they can
make their first original contribution to the field, a possible journey might be
something like:

```
Primary Ed. --> Secondary Ed. --> Higher Ed. --> Postgraduate studies
```

Many students that begin this journey may start their postgraduate studies around
their 24th year of age. Would it be possible to complete this journey sooner and
with less effort if students had access to our hypothetical optimal learning path?

## References

- Halmos, P. R., How to Write Mathematics.
- Spivak, M. (2008). Calculus.
