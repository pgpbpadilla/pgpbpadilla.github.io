---
layout: post.liquid
title:  "Marcus Hutter's AIXI model for Universal Artificial Intelligence"
date:   2021-01-31 20:43
tags: machine-intelligence hutter aixi agi universal
---

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

\\[
    \definecolor{brightpink}{rgb}{1.0, 0.0, 0.5}
    \definecolor{goldenrod}{rgb}{0.85, 0.65, 0.13}
    { \color{blue} AIXI }\quad 
    { \color{green} a_k } := 
        { \color{green} \arg \max_{a_k} } 
        { \color{red} \sum_{ {\color{brightpink} o_k} {\color{purple} r_k} } } 
        ... 
        { \color{green} \max_{a_m} } 
        { \color{red} \sum_{ 
                {\color{brightpink} o_m} 
                {\color{purple} r_m} 
            } 
        } 
        {\color{purple} [r_k + ... + r_m]} 
        {\color{blue} \sum_{
                {\color{goldenrod} q}
                :U(
                {\color{goldenrod} q}, 
                {\color{green} a_1 ... a_m}
                ) = 
                {\color{brightpink} o_1} {\color{purple} r_1} 
                ...
                {\color{brightpink} o_m} {\color{purple} r_m}
            } 
            2^{-\ell( {\color{goldenrod} q} )}
        }
\\]

The <span style="color: blue">AIXI agent</span> learns via reinforcement, its goal, to 
<span style="color: green">maximize</span>
the <span style="color: purple">total future reward</span> provided by the
<span style="color: #B8860B">environment</span>.

In order to calculate its <span style="color: purple">reward</span>, it averages
the rewards over its history of interactions with the environment.

The agent <span style="color: #FF007F">observes</span> the environment and reacts
with an <span style="color: red">action</span>, for which it receives a <span style="color: purple">reward</span>.

The <span style="color: #B8860B">environment</span> takes the agents 
<span style="color: green">actions</span> as input and generates 
<span style="color: FF007F">outputs</span> and 
<span style="color: purple">rewards</span>. 

The <span style="color: blue">agent</span>-<span style="color: #B8860B">environment</span> interactions all happen 
in the form of an exchange
of yes-no decisions, represented as a binary strings.





## TODO

- formula break down
- describe picture below

![AIXI](/assets/images/aixi.png "AIXI")

## References

- [arXiv:0712.3329v1](https://arxiv.org/abs/0712.3329v1) - Shane Legg, Marcus Hutter, Universal Intelligence: A Definition of Machine Intelligence
- [Universal Artificial Intelligence](http://www.hutter1.net/ai/uaibook.htm)
- TODO: Link Hutter Lecture that explains step by step each part of the equation.
- (Is AIXI a big deal in AGI research?)[https://ai.stackexchange.com/a/10377/15369]
