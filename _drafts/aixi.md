---
layout: post.liquid
title:  "Marcus Hutter's AIXI model for Universal Artificial Intelligence"
date:   2021-01-31 20:43
tags: machine-intelligence hutter aixi agi universal
---

The equation defining the AIXI agent is as follows:

\\[ 
    a_k := \arg \max_{a_k} \sum_{o_k r_k} ... 
        \max_{a_m} \sum_{o_m r_m} [r_k + ... + r_m] 
        \sum_{q:U(q,a_1 ... a_m) = o_1 r_1 ... o_m r_m} 2^{-\ell(q)}
\\]


![AIXI](/assets/images/aixi.png "AIXI")

## References

- AIXI Book
- Videos about AIXI
- https://www.lesswrong.com/posts/AszKwKyhBPZAnCstA/solomonoff-cartesianism
