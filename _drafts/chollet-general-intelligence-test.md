---
layout: post.liquid
title:  "François Chollet's general intelligence test"
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

In comparison with [other definitions](#references)
for general intelligence,
Chollet's definition  makes it clear he's mainly interested in human-like intelligence.
The idea is to use insights from the field of psycho-metrics in order to design an
intelligence test that can be used to test intelligence in humans and non-human agents.

Chollet argues that the goal of a measure for [Universal Intelligence](#references)
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
show the type of intelligence the test is set to measure. As Chollet puts it:

> ... optimizing for a single metric or set of metrics often leads to tradeoffs and 
> shortcuts ... (a well-known effect on Kaggle, where winning models are often overly
> specialized for the specific benchmark they won and cannot be deployed on rea-world 
> versions of the underlying problem).

## Measuring intelligence

Many of the approaches used to measure intelligence focus solely in the performance of
an agent in a single task, or a set of closely  related tasks, Chollet argues that in 
order to measure general intelligence it is necessary to measure not only the _skill_
of the agent at a particular task, but it's ability to deal properly with new unknown tasks.

The goal is to measure an agent's broad _abilities_ instead of task-specific _skills_.

<div style="text-align: center">
    <img src="/assets/images/hierarchy-cognitive-abilities.png">
    <figcaption>Hierarchy of cognitive abilities.</figcaption>
</div>

Measuring abilities has the goal to identify the agent's capacity for generalization, 
that is, dealing with related tasks it's never seen before, or completely unrelated tasks.
One can think of intelligence as degree of effort an agent has to exert in order to 
acquire skills. Agents that can learn more skills with less effort can be said to be
more intelligent.

### Comparison to Hutter's AIXI model

Chollet emphasizes the need to control the priors and they should be 
human priors, a practical reason for this is learning efficiency.

If we provide agents with specific priors then we're giving them hints about
the structure of their environment. This has the effect -- already known for humans --
of making the agents acquire specific categories of abilities very efficiently.

When no priors are given, the agent has to also learn the structure of the environment,
this requires more computational resources and may result in agents that are very 
intelligent but maybe not as efficient at learn human-centric skills. As mentioned before
Chollet this anthropocentrism is ligitimage an necessary because it's the only scope we
can meaningfully apporach and asses.

Hutter: Agent and Environment(#hutter-aixi)

Chollet: Agent as a skill program syntheziser for a specific task

TODO: Diagram goes here.

### Flow of interaction

Agent -> Skill Program -> Task -> [chollet, p28]

## Math

So, how do we actually measure the intelligence of an agent?

TODO: formulas here

TODO: Link to part 2

## References

- [arXiv:1911.01547v2](https://arxiv.org/abs/1911.01547v2) - François Chollet,
  On the Measure of Intelligence
- [Marcus Hutter: Universal Aritificial Intelligence](hutter-aixi)
