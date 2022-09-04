---
layout: post.liquid
title:  "Bootstrapping an infrastructure"
date: 2022-09-04 20:32
last_updated: 2022-09-04 20:32
tags: it infrastructure 
permalink: /bootstrapping-infrastructure
categories: [it, infrastructure]
---

## Key ideas

1. Cattle, not pets: treat compute as replaceable. This is in contrast with 
   traditional management where an individual machine will run for a long time before 
   it's rebooted/replaced
2. can I fit in Burgess diagram of the boot sequence inside the infrastructure 
   building blocks of my new book?
3. diagram of the boot sequence, maybe a simplified version of it?
4. the boot sequence can be inverted, deriving the need for each component from the 
   client needs/requirements, as opposed of building from the bottom up. This is a 
   recurring theme, whether to model the infra from the bottom up or from the top down,
   has implication in its management and the assumption around autonomy and control.
   1. with top bottom, we focus on control, at the expense of ................
   2. with bottom up, we focus on flexibility and autonomy, at the expense of 
      duplication and drift
5. Building infrastructure as a development process, which can benefit from software 
   development tooling and practices
   1. how this relates to the idea of thinking of infra components as cattle, instead 
      of pets
   2. how it relates to automation, repeatability/reproducibility, operational 
      efficiency, agility

## Outline

1. Systems infrastructure: somehow the network is taken for granted, there's almost no 
   mention of the network setup
2. Thinking of an infrastructure as a Virtual Machine, rather than a collection of 
   individual hosts
3. Although the components of an infrastructure are more or less standard, 
   professional architects tend to arrange them in radically different ways

## Related

1. Traugott, S. and Joel Huddleston. “Bootstrapping an Infrastructure.” LISA (1998).
   - [Semantic Scholar - CorpusID:30764312](https://api.semanticscholar.org/CorpusID:30764312)
   - [infrastructures.org - papers](http://www.infrastructures.org/papers/bootstrap/bootstrap.html)
   - [usenix.org - Abstracts - 12th Systems Administration Conference (LISA '98)](https://www.usenix.org/legacy/publications/library/proceedings/lisa98/traugott.html)
2. [infrastructures.org](http://www.infrastructures.org), Retrieved on 2022-09-04 20:59
3. Burgess, Mark, [Configuration management, models and myths](http://markburgess.org/cm.html)
   Retrieved on 2022-09-04 20:38
