---
layout: post.liquid
title:  "Marcus Hutter's AIXI model for Universal Artificial Intelligence"
date:   2021-01-31 20:43
tags: machine-intelligence hutter aixi agi universal
---

Marcus Hutter is a researcher in many areas, including Universal Artificial Intelligence.
In comparison with other approaches, Hutter focuses his research in mathematically 
rigorous proofs about properties of intelligent agents.

The informal definition of intelligence is:

> The ability to achieve goals in a wide range of environments. 

Hutter sets out to attempt to formalize the previous definition
in as rigorous a way as he can. The result is an equation 
defining the optimal intelligent agent, AIXI, as follows:

\\[ 
    a_k := \arg \max_{a_k} \sum_{o_k r_k} ... 
        \max_{a_m} \sum_{o_m r_m} [r_k + ... + r_m] 
        \sum_{q:U(q,a_1 ... a_m) = o_1 r_1 ... o_m r_m} 2^{-\ell(q)}
\\]

## TODO

- formula break down
- describe picture below

![AIXI](/assets/images/aixi.png "AIXI")

## References

- [arXiv:0712.3329v1](https://arxiv.org/abs/0712.3329v1) - Shane Legg, Marcus Hutter, Universal Intelligence: A Definition of Machine Intelligence
- [Universal Artificial Intelligence @ hutter1.net](http://www.hutter1.net/ai/uai.htm)
- TODO: Link Hutter Lecture that explains step by step each part of the equation.
