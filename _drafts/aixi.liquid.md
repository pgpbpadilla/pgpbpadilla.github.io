---
layout: post.liquid
title:  "Marcus Hutter's AIXI model for Universal Artificial Intelligence"
date:   2021-01-31 20:43
tags: machine-intelligence hutter aixi agi universal
---

## TODO

- Resolve TODOs for external links
- Link references in the article
- Link Hutter video explaining AIXI, the one where he explains each of the Giants.

[Marcus Hutter](TODO) is a researcher in many areas, including Universal Artificial Intelligence.
The approach he and others -- [Schmidhubber](TODO),
[Hochreiter](TODO) --
have taken is distinct from the mainstream approaches to AI, e.g.,
Machine Learning, Big Data.

## Top-down and Bottom-Up approaches to AI

Hutter takes a top-down approach, that is, starts with a formal,
mathematically rigorous definition of Universal Intelligence and then derives properties
of intelligent agents via mathematical theorems and their proofs.

Many traditional approaches are bottom-up, that is, building agents that can
solve problems in a narrow domain and then attempting to generalise to more general problems.

## The AIXI agent

An informal definition of intelligence proposed by Hutter & Legg is:

> The ability to achieve goals in a wide range of environments.

This definition is general enough that can be applied to non-human agents.

Hutter sets out to formalize the previous definition. The result is an equation
defining the optimal intelligent agent, AIXI, as follows:

{% include_relative aixi/aixi-formula.md %}

The <span style="color: blue">AIXI agent</span> learns via reinforcement, its goal, to
take the <span style="color: green">action</span> that
<span style="color: green">maximizes</span>
the <span style="color: purple">total future reward</span> provided by the
<span style="color: #B8860B">environment</span>.

In order to calculate its <span style="color: purple">total future reward</span>, it averages
the rewards over the <span style="color: #FF007F">interaction</span>
<span style="color: purple">history</span> with the
<span style="color: #B8860B">environment</span>.

The agent <span style="color: #FF007F">observes</span> the
<span style="color: #B8860B">environment</span> and takes
an <span style="color: green">action</span>; the
<span style="color: #B8860B">environment</span> in turn generates an
<span style="color: #FF007F">output</span> and a
<span style="color: purple">reward</span>.

The <span style="color: #B8860B">environment</span> is unknown to
<span style="color: blue">AIXI agent</span>, therefore,
<span style="color: blue">AIXI agent</span> has to take into consideration
all possible <span style="color: #B8860B">environment</span>.
<span style="color: blue">AIXI agent</span>
has a bias towards simplicity; simpler
<span style="color: #B8860B">environment</span> will have a bigger
contribution towards the agent's next <span style="color: green">action</span>.


<div style="text-align: center">
    <img src="/assets/images/aixi-environment.png">
    <figcaption>Agent-Environment Interaction.</figcaption>
</div>

## References

- [arXiv:0712.3329v1](https://arxiv.org/abs/0712.3329v1) - Shane Legg, Marcus Hutter, Universal Intelligence: A Definition of Machine Intelligence
- Hutter's page on: [Universal Artificial Intelligence](http://www.hutter1.net/ai/uaibook.htm)
- Marcus Hutter - Can Intelligence Explode? - Singularity Summit Australia 2012
    - [@YouTube](https://youtu.be/I-vx5zbOOXI)
    - [@Hutter's website](http://www.hutter1.net/index.htm)


## Related

- [Is AIXI a big deal in AGI research? @ StackExchange AI](https://ai.stackexchange.com/a/10377/15369)
- Agent-Environment image adapted from: [Solomonoff Cartesianism](https://www.lesswrong.com/posts/AszKwKyhBPZAnCstA/solomonoff-cartesianism)
