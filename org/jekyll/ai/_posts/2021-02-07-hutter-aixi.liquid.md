---
layout: post.liquid
title:  "Marcus Hutter's AIXI model for Universal Artificial Intelligence"
date:   2021-02-07 16:37
last_updated: 2021-02-16 22:22
permalink: /hutter-aixi
tags: ai hutter intelligence aixi uai agi
categories: [ai, aixi]
---
Marcus Hutter proposes a definition of Universal Intelligence and offers a mathematical
theory describing the optimal intelligent agent, AIXI.

[Marcus Hutter](#related) is a researcher in many areas, including Universal
Artificial Intelligence. The approach he and others -- [Schmidhuber](#related),
[Hochreiter](#related) -- have taken is different from the other modern and not so
modern approaches to AI.


{% include amzn_affiliate_disclaimer.html %}


## A top-down mathematical theory

Hutter takes a top-down approach, he proposes a mathematical definition
of intelligence and derives properties of intelligent agents via
proving mathematical theorems.

Other approaches are bottom-up, they focus on defining agents that can
solve problems in a narrow domain and then look for ways to make them more general so
they can deal with previously unknown problems or problems in a different domain.

## Defining an intelligent agent

An informal definition of intelligence proposed by [Hutter & Legg](#references) is:

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
<span style="color: blue">AIXI</span>, therefore, the
<span style="color: blue">agent</span> has to take into consideration
all possible <span style="color: #B8860B">environments</span>.
<span style="color: blue">AIXI</span>
has a bias towards simplicity; the interactions with simpler
<span style="color: #B8860B">environments</span> will have a bigger
contribution towards the
<span style="color: blue">agent's</span>
next <span style="color: green">action</span>.


<div style="text-align: center">
    <img src="/assets/images/aixi-environment.png">
    <figcaption>Agent-environment interaction.</figcaption>
</div>

## References

- [arXiv:0712.3329v1](https://arxiv.org/abs/0712.3329v1) - Shane Legg, Marcus Hutter, Universal Intelligence: A Definition of Machine Intelligence
- [Universal Artificial Intelligence](http://www.hutter1.net/ai/uaibook.htm) on Hutter's website.
  - [Hutter's book on Amazon](https://amzn.to/4dr6y3B)
- Can Intelligence Explode? - Video lecture at the Singularity Summit Australia 2012
    - [@YouTube](https://youtu.be/I-vx5zbOOXI)
    - [@Hutter's website](http://www.hutter1.net/official/lectures.htm)


## Related

- [Marcus Hutter](http://www.hutter1.net)
- [Jürgen Schmidhuber](https://people.idsia.ch/~juergen/deutsch.html)
- [Josef "Sepp" Hochreiter](https://en.wikipedia.org/wiki/Sepp_Hochreiter)
- [Is AIXI a big deal in AGI research? @ StackExchange AI](https://ai.stackexchange.com/a/10377/15369)
- Agent-Environment image adapted from: [Solomonoff Cartesianism](https://www.lesswrong.com/posts/AszKwKyhBPZAnCstA/solomonoff-cartesianism)
