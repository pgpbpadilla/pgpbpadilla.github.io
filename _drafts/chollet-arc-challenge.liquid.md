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

## Building systems with human-like intelligence

### Fixing the priors


## Focus on generalization

## Human General Intelligence

The focus for this direction of research is in building systems that can solve multiple
types of human-relevant tasks with a limited number of examples, therefore getting closer
to the prime example of general intelligence, human intelligence.

## References

- [ARC Challenge @ Kaggle](https://www.kaggle.com/c/abstraction-and-reasoning-challenge)
