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


### Learning from a few examples

In order to prevent brute-force approaches where the system learns to exploit weaknesses
in the data set, the ARC benchmark purposely provides only a few examples for each task.

Chollet makes the case that the kind of intelligence we should be interested is the kind
where the agent can perform well even after seeing a few examples of a particular task,
the way humans generally are able to solve this type of task.

A human test taker does not need to train for solving a particular task, even when it
has not seen it before, a system taking the ARC test still requires multiple non-intersecting
data sets, one used during development, another for testing and the final one which is
the actual evaluation.

A system capable of achieving human-level performance in the ARC
benchmark would necessarily be [less intelligent than a human with the same performance](
/chollet-general-intelligence-test#quantifying-the-intelligence-of-a-system
).
It is assumed that a human should be able to obtain a score very close to 100% correct
solutions. However, Chollet [has said](#references) that he does not have the data to claim with
certainty this is the case since it would required a large-scale psychological studies.

## Building systems with human-like intelligence

Chollet's emphasizes his belief that human-like intelligence is a desirable goal for
our artificial systems since they are expected to improve human lives.

In order to build human-like AI systems, it's possible to define some baseline knowledge
and build it into our systems. This built-in knowledge is referred to as the system's
prior knowledge or priors for short. It includes intuitive notions about physics, e.g.,
how objects behave in the physical world, it also includes the notion of what agents are,
and also how they behave.

What exactly those priors are is informed by theories about the human mind.
Naïve Physics deals with the untrained human perception of physical phenomena, for example,
the solidity and permanence of objects. Agency has to do with the ability to recognize
intentions and goals in the behavior of agents.

### Steering the evolution of intelligent systems

The choice of priors coincides with the types of knowledge that is expected from a newborn
human, although the priors must have been gradually shaped by the process of evolution.
Certain priors, enable us to perform well on specific tasks and we wan use them to nudge
the development of those systems in directions that are useful to solve human-relevant
tasks and also to speed up the acquisition of new skills.

By explicitly specifying human priors, the comparison of the resulting
systems with humans in terms of their intelligence should enable a more direct and fair
comparison between our intelligence that of our systems. Today it's hard to define a
fair measure that helps us understand the difference between, for example, a pocket
calculator which can perform simple arithmetic faster than any human but cannot do
anything else.

### Life experience a.k.a. acquired knowledge

Providing priors to our systems is giving them a head start to acquire specific skills.
One step further is to allow the system to learn or acquire new knowledge from experience.
This can be done via controlling the type of tasks a system is exposed to. Tasks can
be designed such that they will help the system further improve the system's performance
in a particular direction.

Curriculum design or how to choose the sequence of tasks the system is exposed has to take
account the amount of examples the system is allowed to use for learning before being able
to solve new tasks. In the ARC challenge there's a strict requirement that only those
systems that can generalize with minimal examples deserve a high score.

## Focus on generalization

Humans are able to tackle more diverse tasks without any previous experience. We are able
to create abstractions and then to manipulate those abstractions and apply them to new
contexts, we can go from a single example to a general principle.

Contemporary approaches at measuring the performance of intelligent systems is to create
task-specific benchmarks. In comparison, intelligence test for humans measure the
performance over a range of distinct tasks.

The [measure of intelligence proposed by Chollet](/chollet-general-intelligence-test),
accounts for a system's performance over a set of tasks given it's prior knowledge and
experience. This means that it will rank higher systems that can solve more diverse
tasks given only a few examples for each.


## Evaluation

The ARC dataset is broken into stages, a set of tasks given in order to develop and tweak
the algorithm to generate predictions. A different dataset to evaluate the performance of the
algorithm before the final test stage.

For each task, the solution can generate up to 3 predictions and the score of a solution
is calculated by averaging the error over the tasks, that is, by adding up the error
for each individual task and dividing by the number of tasks. The error is 0 if the
correct solution -- ground truth -- is contained in the 3 predictions generated by the
system, the error is 1 otherwise.

A perfect score using this metric would be 0, meaning the system makes no mistakes.
As of the writing of this post, [the top solution has a score of 0.794](#references),
this means the system produces the incorrect solutions almost 80% of the time.
Some improvement have been submitted based on existing solutions with top scores, however
they are marginal improvements.

## Suggested approach

ARC is a new type of challenge in the Kaggle platform and it designed that way so that
traditional ML techniques which are data hungry won't work.

The suggestions from the challenge hosts are to attempt solving the tasks by hand and
write down the programs that would solve them, then think how one could use principles of
program synthesis and program search to find such programs. Next logical steps is to find
ways to rank and select programs which are likely to get a higher score.

## How close to AGI are we?

If we are to use Chollet's ARC benchmark as a serious candidate to evaluate the intelligence
of our systems, then we're not very close to achieving human-like AGI. This assumes that
every possible solution to ARC has been submitted and that the benchmark is actually
useful to measure intelligence in humans and systems.

As of today I don't know if Chollet has published his own best score for ARC but it would
be interesting to know. All I could find was this:

> That said, ARC is designed to be approachable right now, and I have a few approaches
> that yield decent results. 20% is a reasonable goal today, and can likely be beaten
> over the duration of the competition (I'd say it's 50% likely to get beaten).
> The 2% progress we've seen in mere days on the leaderboard gives you a confirmation
> of that. Simultaneously, I think will reaching human level will take many years.

The benchmark is young and much work is still to be done, some of the challenges are related
to the ability from participants to find ways to trick the benchmark. In a way the
publishing of the ARC challenge will help in identifying its limitations. There's already
plenty of talk in the Kaggle platform and elsewhere on how to achieve just that but those
are for now out my reach since they use what seems to be advanced concepts in the design
of benchmarks. Fortunately this is also outside the scope of this post ;)



## References

- [ARC Challenge @ Kaggle](https://www.kaggle.com/c/abstraction-and-reasoning-challenge)
- [Top ARC solution: 0.794](https://www.kaggle.com/icecuber/arc-1st-place-solution)

### Kaggle discussions

- [The expected human performance should be close to 100% correct solutions](https://www.kaggle.com/c/abstraction-and-reasoning-challenge/discussion/131005#750531)
- ["20% correct solutions is achievable today"](https://www.kaggle.com/c/abstraction-and-reasoning-challenge/discussion/131005#750917)
