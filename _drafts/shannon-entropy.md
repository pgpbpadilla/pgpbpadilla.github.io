---
layout: post.liquid
title:  "Shannon's entropy is relative to the receiver"
date: 2023-12-15 Sa 22:02
last_updated: 2023-12-15 Sa 22:02
tags:
  - journal
  - math
  - information
categories: [journal, math]
#permalink: /2023-05-25-xxx
toc: false
---

Shannon's entropy is relative to the receiver. Two distinct receivers
with different knowledge and expectations about the information source
would calculate different probabilities for each message.

To illustrate this, think of two observers, A and B, watching a coin being
tossed, A knows that the coin is not fair, B does
not.

For A, the probability of observing heads is not 0.5, the coin is not
fair. For B the probability is 0.5. The difference in the expectations
from each observers results in them calculating different
probabilities for each **message**, i.e., the result of a coin toss.

The entropy quantifies how surprised is an observer to see a
particular message:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Observer</th>
<th scope="col" class="org-left">Probability of the message</th>
<th scope="col" class="org-left">Entropy</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">\(P_A(Heads) \neq 0.5\)</td>
<td class="org-left">\(H(Heads\vert A)=-log_2(P_A)\)</td>
</tr>


<tr>
<td class="org-left">B</td>
<td class="org-left">\(P_B(Heads) = 0.5\)</td>
<td class="org-left">\(H(Heads\vert B)=-log_2(P_B)\)</td>
</tr>
</tbody>
</table>

