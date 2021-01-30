---
layout: my-post
title:  "Definitions of Machine Intelligence"
date:   2021-01-24 19:00
tags: machine-intelligence definition hutter legg chollet
---

One of the known issues in the field of Artificial Intelligence is that
there is no generally accepted formal or informal definition of intelligence.

I have learned about this problem from [Legg & Hutter](https://arxiv.org/abs/0712.3329v1)
and [Chollet](https://arxiv.org/abs/1911.01547v2).

Each of these two papers proposes a definition for machine intelligence:

**Def. 1** [Legg & Hutter]: 
  The ability to achieve goals in a wide range of environments.

**Def. 2** [Chollet]: 
  The intelligence of a system is a measure of its skill-acquisition efficiency
  over a scope of tasks, with respect to priors, experience, and generalization difficulty. 

Both papers start with a review of previous attempts at defining intelligence, and then proceed to present
a proposal for a formal definition.

One point of disagreement is whether the definition for machine intelligence 
should capture only human-like intelligence [Chollet] or more general, non-human types of intelligence, 
Legg & Hutter call this Universal Intelligence [Legg & Hutter].

## Differences between definitions

### The agent under Def 1.

- it does not need know the initial prior
- it aims to be maximally intelligent for any given environment, in other words, Universal
  
### The agents under Def 2.

- it aims at emulating human-like intelligence
- relies on its builder to provide and control priors
- the provided priors are human priors

# References

- [arXiv:0712.3329v1](https://arxiv.org/abs/0712.3329v1) - Shane Legg, Marcus Hutter, Universal Intelligence: A Definition of Machine Intelligence
- [arXiv:1911.01547v2](https://arxiv.org/abs/1911.01547v2) - François Chollet, On the Measure of Intelligence
