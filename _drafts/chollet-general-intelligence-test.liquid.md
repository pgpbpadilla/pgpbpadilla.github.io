---
layout: post.liquid
title:  "François Chollet's general intelligence test"
date:   2021-02-26 20:43
last_updated: 2021-02-26 20:43
tags: machine-intelligence chollet agi test
permalink: /chollet-general-intelligence-test
categories: [ai, machine-intelligence, benchmark]
---
[François Chollet](#references) works in the field of Artificial Intelligence.
He created the Keras library for machine learning and has
launched the [ARC Challenge](#references) for measuring general intelligence.

## A definition of general intelligence

In 2019, [Chollet published a paper](#references) where he defines artificial general
intelligence as follows:

> The intelligence of a system is a measure of its skill-acquisition efficiency
> over a scope of tasks, with respect to priors, experience, and generalization difficulty.

This definition focuses on human-like intelligence and uses insights from the field of
psychometrics to design an intelligence test for human and non-human agents.

The field of psychometrics is now a well-established discipline,
and its findings about the measurement of human intelligence are reliable. The
same cannot be said for the state of the art in measuring intelligence of artificial
agents.

## Difficulties evaluating artificial agents

The conditions under which intelligence tests are
carried out on humans are not easily transferable to artificial agents.

When evaluating human intelligence, it's not expected that the human will train for the
test; however, that's the current paradigm for evaluating artificial agents. Developers
provide as many examples as possible during a "training phase" so the agent can learn and
perform well in a final evaluation.

It's difficult to build a test for artificial agents that cannot easily be exploited --
by the use of shortcuts -- leading to a high score but in which the agent does not
show the type of intelligence the test is set to measure. As Chollet puts it:

> ... optimizing for a single metric or set of metrics often leads to tradeoffs and
> shortcuts ... (a well-known effect on Kaggle, where winning models are often overly
> specialized for the specific benchmark they won and cannot be deployed on real-world
> versions of the underlying problem).

## Measuring intelligence

Many of the approaches used to measure intelligence focus solely in the performance of
an agent in a single task, or a set of closely  related tasks, Chollet argues that in
order to measure general intelligence it is necessary to measure not only the _skill_
of the agent at a particular task, but it's ability to deal properly with new --
previously unknown -- tasks.

The goal is to measure an agent's broad _abilities_ instead of task-specific _skills_.

<div style="text-align: center">
    <img src="/assets/images/hierarchy-cognitive-abilities.png">
    <figcaption>
        Hierarchy of cognitive abilities [<a href="#bib:chollet-1">1</a>].
    </figcaption>
</div>

By measuring abilities the emphasis is on the agent's capacity for generalization,
that is, the ability to deal with related tasks it's never seen before, or completely
unrelated tasks. Agents that can learn more skills more quickly can be said to be
more intelligent.

### Choosing priors

Chollet emphasizes the need to control the priors, and they should be
human priors, a practical reason for this is learning efficiency.

If we provide agents with specific priors then we're giving them hints about
the structure of their environment. This has the effect -- already known for humans --
of making the agents acquire specific categories of abilities very efficiently.

When no priors are given, the agent has to also learn the structure of the environment,
this requires more computational resources and may result in agents that are very
intelligent but maybe not as efficient at learning skills that are relevant in a human
context.

Chollet thinks this anthropocentrism is legitimate and necessary because it's the only
scope we can meaningfully approach and asses.

The relevant priors would then be, _objectness_, _agentness_, _natural numbers_,
_arithmetic_, _elementary geometry and topology_. _Objectness_ is about the human
intuitions about what objects are, their boundaries and how they interact. _Agentness_
is the perception that certain objects behave as if they had intentions, or goals.
The ability to count objects and the understanding of the effects of adding and
subtracting objects is part of the _arithmetic_ and _numeric_ priors. Orientation in
2- and 3-dimensional space and performing basic spatial transformation on objects
accounts for the _geometrical_ an _topological_ priors.

## abc

There are some differences in terminology between [Hutter's](hutter-aixi) and Chollet's models:

- the _Agent_ becomes a _System_
- the agent's _Actions_ becomes a _Skill program_
- the _Environment_ becomes a _Task_

Despite these differences the models  have a lot in common, e.g., they both learn via
reinforcement, however, Chollet makes a distinction between the _Intelligent System_
and it's output, which he calls a _Skill program_. Also, the environment is reduced
in scope and only represents a specific task.

An intelligent system is presented with multiple tasks, each time, it will try to produce
a skill program to solve the task. The task presents different situations to the skill
program, and the skill program generates a response. The response is evaluated and two
outputs are generated, a score for the current response and feedback to the intelligent
system.

<div style="text-align: center">
    <img src="/assets/images/chollet-system-skill-task.png">
    <figcaption>
        An intelligent system synthesizes a program to solve a specific task
    </figcaption>
</div>

## Quantifying the intelligence of a system

Chollet uses [Algorithmic Information Theory](#references) in order to quantify
the information content of the intelligent system, the skill program and the tasks.

The [Algorithmic Complexity](#references) \\(H(s)\\) of a string \\( s \\), is the
length of the shortest computer program that outputs \\((s)\\). \\(H(s_2|s_1)\\)
is the length of the shortest computer program that outputs \\( s_2 \\) when it
receives \\( s_1 \\) as the input.

TODO: Explain interpretation, I_x = H(x|y) / H(x) is the fraction of information that
the program X knows about y, where X is a program that outputs x.

Let's remember the proposed definition at the beginning of this post:

> The intelligence of a system is a measure of its skill-acquisition efficiency
> over a scope of tasks, with respect to priors, experience, and generalization difficulty.

In the _optimal_  \\((opt)\\) case, the Intelligence \\((I)\\) of an
Intelligent System \\((IS)\\) over a _scope_ \\((scope)\\) is given by the formula:

\\[
I^{opt}\_{IS, scope} = \underset{T \in scope}{Avg}
\left[
    \omega_{T,\Theta} \cdot \Theta \sum_{C \in Cur_T^{opt}}
    \left[
        P_C \cdot \dfrac{
            GD_{IS,T,C}^\Theta
        }{
            P_{IS,T}^{\Theta} + E_{IS,T,C}^\Theta
        }
    \right]
\right]
\\]

In order to find an intelligent system that displays human-like intelligence, tasks
relevant to humans will have a heavier weight \\(( \omega\_{T, \Theta} )\\).
The weighed average over the space of Tasks accounts for the contribution of each task.

The sum over all optimal curriculums for a given task \\((C \in Cur\_{T}^{opt})\\)
will account for the possible skill programs the system may synthesize.

The skill-acquisition efficiency is measured as the ratio of the task's generalization difficulty
\\(GD\\) to the system's "knowledge" about the task. Here, the knowledge that the
system \\(IS\\) possesses about a task \\(T\\) is the sum of it's prior \\(P\\) knowledge
and the experience \\((E)\\) gained during the training phase.

\\[
\dfrac{
        GD_{IS,T,C}^\Theta
    }{
        P_{IS,T}^{\Theta} + E_{IS,T,C}^\Theta
    }
\\]

How good a system will be at gaining a particular task will the particular curriculum
presented to it by the task. Curriculums that are more likely to appear during the
interaction between the task and the system contribute more to the overall system
intelligence. This is taken into account by multiplying the skill-acquisition efficiency
times the probability \\(P\_{C}\\) of observing a given curriculum \\(C\\).


TODO:
Every entity can be seen as a string (system, task, skill program, solution,
curriculum, solution, etc), and the definitions for GD, P and E are all defined
in terms of information content they have about X, Y Z.

Give a  couple of examples and close


## References

- <a name="bib:chollet-1">[arXiv:1911.01547v2](https://arxiv.org/abs/1911.01547v2)</a>:
François Chollet, On the Measure of Intelligence
- [Marcus Hutter: Universal Artificial Intelligence](hutter-aixi)
- Algorithmic Information Theory
- Algorithmic Complexity
