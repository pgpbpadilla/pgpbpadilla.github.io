---
layout: post.liquid
title:  "François Chollet general intelligence test"
date:   2021-02-26 20:43
last_updated: 2021-02-26 20:43
tags: machine-intelligence chollet agi test
permalink: /chollet-general-intelligence-test
categories: [ai, machine-intelligence, benchmark]
---
[François Chollet](#references) is an researcher in the field of Artificial Intelligence.
He is the creator of the Keras library for machine learning and has
launched the [ARC Challenge](#references) for measuring general intelligence.

## A definition of general intelligence

In 2019, [Chollet published a paper](#references) where he defines artificial general 
intelligence as follows:

> The intelligence of a system is a measure of its skill-acquisition efficiency
> over a scope of tasks, with respect to priors, experience, and generalization difficulty.

In comparison with [other definitions](#my-blog:hutter) for general intelligence, 
Chollet's definition  makes it clear he's mainly interested in human-like intelligence.
The idea is to use insights from the field of psycho-metrics in order to design an
intelligence test that can be used to test intelligence in humans and non-human agents.

Chollet argues that the goal of a measure for [Universal Intelligence](#my-blog:hutter) 
is not sound, since we only know how to evaluate human intelligence, for example, with 
the use of IQ tests. 

## Difficulties evaluating artificial agents

Today the field of psychometrics is a well-established discipline,
and their findings about the measurement of human intelligence are very reliable. The 
same cannot be said for the state of the art in measuring intelligence of artificial
agents since the conditions under which intelligence tests are
carried out on humans are not easily transferable to artificial agents.

When evaluating human intelligence, it's not expected that the human will train for the 
test taking as many similar tests before the final evaluation. When it comes to artificial
agents, that's exactly the current paradigm, give as many examples -- during the training
phase -- as possible to the agent before the final evaluation.

It's difficult to build a test for artificial agents that cannot easily be exploited --
by the use of shortcuts -- leading to a high score but in which the agent does not 
show the type of intelligence the test is set to measure.

## Measuring intelligence

### Comparison to Hutter's AIXI model

Hutter: Agent and Environment
Chollet: Agent as a skill program syntheziser for a specific task

### Flow of interaction

Agent -> Skill Program -> Task -> [chollet, p28]


TODO: Link to part 2

## References

- [arXiv:1911.01547v2](https://arxiv.org/abs/1911.01547v2) - François Chollet,
  On the Measure of Intelligence

## TODO

- how to cross link posts in jekyll?
- maybe split up in to multiple posts?
- at least 3, chollets definition, the arc benchmarch on kaggle, the winning solution
- he also does some really cool art
