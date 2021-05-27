---
layout: post.liquid
title:  "The Abstraction and Reasoning Challenge (ARC)"
date:   2021-03-25 20:06
last_updated: TODO
tags: machine-intelligence chollet agi arc-challenge abstraction reasoning artificial-intelligence
permalink: /chollet-arc-challenge
categories: [ai, machine-intelligence, benchmark]
---
In 2019 François Chollet published Abstraction and Reasoning challenge in the
[Kaggle platform](#references) with the goal to provide a benchmark to measure
machine intelligence.

## The Abstraction and Reasoning Corpus

The Abstraction and Reasoning Corpus consists of a collection of tasks that are solvable
by both humans or an artificial system. The task format is inspired by [Raven's progressive
matrices](#references), in which the test taker is required to identify the next image
in the sequence.

<div style="text-align: center">
    <img src="/assets/images/chollet-arc-sample-task.png">
    <figcaption>ARC Task: complete the symmetrical pattern.</figcaption>
</div>


### Intelligence means learning from a few examples

In order to prevent brute-force approaches where the system learns to exploit weaknesses
in the data set, the ARC benchmark purposely provides only a few examples for each task.

Chollet makes the case that the kind of intelligence we should be interested is the kind
where the agent can perform well even after seeing a few examples of a particular task,
the way humans generally are able to solve this type of task.

A human test taker does not need to train for solving a particular task, even when it
has not seen it before, a system taking the ARC test still requires multiple non-intersecting
data sets, one used during development, another for testing and the final one which is
the actual evaluation.

In that respect any system capable of achievement human-level performance in the ARC
benchmark would necessarily be [less intelligent than a human with the same performance](
/chollet-general-intelligence-test#quantifying-the-intelligence-of-a-system
).
This is a direct consequence of the fact that the human has greater generalization
capabilities.

## Building systems with human-like intelligence

Chollet's emphasizes his belief that human-like intelligence is a desirable goal for
our artificial systems. The reasons are quite understandable; those systems are the ones
that could improve our lives in the short and long term if we get them right. These systems
are there with the goal of helping us, humans.

### Fixing the priors to steer the evolution of intelligent systems

The approach to develop systems with human-like intelligence seems to be inspired in our
own evolutionary history. The priors, that have enabled us to perform well on tasks
that have been important to our survival, are the ones we should provide to our systems
as a starting point. The goal is to nudge the development of those systems in directions
that are useful to solve human-relevant tasks and perhaps more importantly to speed up
their development.

It is hoped that by explicitly specifying human priors, the comparison of the resulting
systems with humans in terms of their intelligence will be easier and more fair. A simple
pocket calculator today could be said to be superior to a human doing simple arithmetic,
however, it's difficult to see how this is a fair comparison since humans can do  much
more than simple arithmetic.

### Speed up development of specific skills by choosing the appropriate curriculum

Providing priors to our systems is giving them a head start to acquire specific skills.
The next step is to control the type of tasks a system is exposed to. Tasks can
be designed such that they will help the system further improve the system's performance
in a particular direction.

TODO: 

## Focus on generalization

Humans are able to tackle more diverse tasks without any previous experience. We are able
to create abstractions and then to manipulate those abstractions and apply them to new
contexts, we can go from a single example to a general principle.

Contemporary approaches at measuring the performance of intelligent systems is to create
task-specific benchmarks. In comparison, intelligence test for humans measure the
performance over a range ot tasks.

The [measure of intelligence proposed by Chollet](/chollet-general-intelligence-test),
accounts for a system's performance over a set of tasks given it's prior knowledge and
experience. This means that it will rank higher systems that can solve more diverse
tasks given only a few examples for each.

## Human General Intelligence

The focus for this direction of research is in building systems that can solve multiple
types of human-relevant tasks with a limited number of examples, therefore getting closer
to the prime example of general intelligence, human intelligence.

## References

- [ARC Challenge @ Kaggle](https://www.kaggle.com/c/abstraction-and-reasoning-challenge)
