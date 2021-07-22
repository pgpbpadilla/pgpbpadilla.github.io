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

## Is there an optimal learning path?

Finding adequate references for study can get more complicated, maybe they are not at all
familiar with the subject and therefore the material needs to cover their knowledge gaps. 
Perhaps the students are looking for examples on how to apply a particular idea, and 
therefore a focus applications will be enough. If a deep understanding is required,
more specialized references may be necessary.

Given a particular student, their base knowledge, and their goals or needs, how could we
find the optimal learning path? One that leads them from their current starting point to
their desired goal with the minimal investment of resources.

The question/problem seemed timeless, I can imagine that it has crossed the mind of every 
single student of any field of knowledge. In retrospect, the problem seems to be much
harder to solve than I initially imagined, as can be appreciated by looking at the syllabus
of some of the most prestigious undergraduate and post-graduate programs around the world.

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

# TODO: Rewrite from here

## A hypothetical student journey

primary -> secondary -> pre-college -> graduate -> post-grad -> phd

TODO: diagram with basic timeline, and an estimate of how long it takes

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
- Find other people who have tried to represent knowledge as graphs
- Some general comments about the problem of knowledge representation
