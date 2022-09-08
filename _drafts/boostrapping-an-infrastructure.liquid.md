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
   building blocks of my new book (IT infrastructure)?
3. diagram of the boot sequence, maybe a simplified version of it?
4. the boot sequence can be inverted, deriving the need for each component from the 
   client needs/requirements, as opposed of building from the bottom up. This is a 
   recurring theme, whether to model the infra from the bottom up or from the top down,
   has implication in its management and the assumption around autonomy and control.
   1. with top bottom, we focus on control, at the expense of autonomy ................
   2. with bottom up, we focus on flexibility and autonomy, at the expense of 
      duplication and drift
5. Building infrastructure as a development process, which can benefit from software 
   development tooling and practices
   1. how this relates to the idea of thinking of infra components as cattle, instead 
      of pets
   2. how it relates to automation, repeatability/reproducibility, operational 
      efficiency, agility
6. GitOps: IaC + Version Control + CI/CD
   1. https://about.gitlab.com/topics/gitops/
   2. the use of a source of truth repository that is versioned is a core idea in the 
      article and it's now considered a best practice, 
   3. it's not the whole story since people who talk about gitops also include ci/cd 
      in the mix
7. having your infrastructure as code in a repo with enough automation around it 
   (unattended configuration) enables you to treat infrastructure components as cattle,
   not pets, recover from mistakes (fast rollback), and disasters
8. the tools to perform the automated/unattended install/configuration of the components were 
   served from the gold server
9. versioning enabled us to make our changes reproducible, recoverable, traceable 
   and  integrated into our other infrastructures
   1. modularity enables re-use, which means less work
10. an infrastructure engineer/architect abhors doing the same thing twice, this makes 
    different from systems administrators, who in many cases don't mind the
    repetition 
11. gold server is passive, clients pull, and they are always responsible for keeping 
    themselves up to date
12. the gold server was not mission-critical, it could go down without impacting the 
    infrastructure
13. immutable infrastructure: never login to a machine to make a change that can be 
    made in the golden server and then propagated to all the other machines
14. no matter how small the infrastructure, making ad-hoc changes by pushing them to 
    the machines, will result in more work than applying the change in the gold server
    1. routine use of ad-hoc changes was found to be the strongest contributor to TCO
    2. according to gartner, most of the cost of ownership is labor, using ad-hoc 
       changes, increases labor, and also entropy, a positive feedback cycle is 
       created, the more entropy, the more ad-hoc changes are required, the more labor 
       is necessary
    3. drift: carry this long enough, and all of your machines will be distinct
15. blue-green deployment: redirecting a portion or all of the traffic to a parallel 
    instance of the infrastructure
16. organizing your tools, and configurations in a repeatable way, makes it easier for 
    new joiners to maintain or replace the machines when they fail, having 
    unique/snowflake servers makes it hard 
17. directory vs authentication service:
    1. directory: one way trust, the client trust the server
    2. auth: two-way trust
18. time sync: avoid a process that regularly pops into the machine to fix the time, 
    instead have the machine itself detect and correct drift
    1. points to the existence of an agent
19. in the pull model, the client chooses the best time to pull, in comparison to the 
    push scenario, where the server may send the instructions when it's inconvinient 
    to the client
20. extending the vm analogy, every process/user should see the same file namespace on 
    every host, then they can find their documents/data in the familiar places, 
    regardless of which host their on
21. iac must be practiced in a disciplined way: the time required to write and deubg a 
    script is less than the time it takes to apply the same change manually to 200 clients
22. gold vs golden server:
    1. golden server is a template from which all servers are created
    2. a gold server hosts important primary versions of configuration/data (gold)
23. they only reason there's an infrastructure is to run applications that are 
    important for the biz
24. Very little monitoring was needed???
    1. No monitoring at all: it’s interesting that computers are usually reliable enough that monitoring seemed not critical. 
    2. For today’s application development /observability/ and monitoring is a key part — even if usually ignored — of any complex enough system
25. successful applications lead to infrastructure growth
26. generic/replaceable components make it easier to recover from disasters
27. it's easier to replace existing components with new generic ones, than to adapt 
    the old ones to the new way of working
    1. retrofiting updates to old systems is more work than building a new sytem
28. rebuilding is less effort than updating existing systems
29. using a standby infra saved their asses one time when the productive infra went 
    down, the infras were built from the same code base and switching from one to the 
    other was done by redirecting traffict via a dns redirect
30. pulling is superior to pushing, 
    1. clients are responsible for maintain their rev level
    2. clients know best when it's a good time to pull updates
31. avoid ad-hoc changes. individual changes pushed to a single machine, they 
    generate config drift, add labor
32. always make changes through the code, put in the central/gold server and let the 
    changes propagate
33. pull methods scale better, the compute needed is distributed to the clients, no 
    need for a central powerful node to push changes to however many nodes you have
34. iac allows linearly growing team to manage exponentially growing infrastructures, 
    reduction of labor means reduction of cost
35. there was a time were infra archs were not a thing, many times is equated with a 
    senior sysadmin, who can flip tapes faster
36. Recruiters generally don’t even know what an ‘‘infrastructure architect’’ is, and far too often assume that ‘‘senior sysadmin’’ means you know how to flip tapes faster.
37. Most of us at one time or another have been restricted from improving a broken 
    infras- tructure, simply because it didn’t fit within our job description.
38. Some of the most capable systems administrators we’ve known are not interested in coding
    1. different mindsets/interests: those who want hands on work and don’t mind repetition, and those who hate repetition
39. infrastructure architects tend to spend most of their time writing code. They are motivated by challenges and impatience – they hate doing the same thing twice


## Outline

1. Systems infrastructure: somehow the network is taken for granted, there's almost no 
   mention of the network setup
2. Thinking of an infrastructure as a Virtual Machine, rather than a collection of 
   individual hosts
3. Although the components of an infrastructure are more or less standard, 
   professional architects tend to arrange them in radically different ways

## Diagrams

1. Boot sequence: [link](./diagrams/boot-sequence.puml), dependency between tasks when 
   bootstrapping an infra
2. Principles for building infrastructures: [link](./diagrams/building-infrastructure.puml)
   The idea is to derive each of the key ideas/concepts in the article from first 
   principles, that should be accepted as self-evident

## Related

1. Traugott, S. and Joel Huddleston. “Bootstrapping an Infrastructure.” LISA (1998).
   - [Semantic Scholar - CorpusID:30764312](https://api.semanticscholar.org/CorpusID:30764312)
   - [infrastructures.org - papers](http://www.infrastructures.org/papers/bootstrap/bootstrap.html)
   - [usenix.org - Abstracts - 12th Systems Administration Conference (LISA '98)](https://www.usenix.org/legacy/publications/library/proceedings/lisa98/traugott.html)
2. [infrastructures.org](http://www.infrastructures.org), Retrieved on 2022-09-04 20:59
3. Burgess, Mark, [Configuration management, models and myths](http://markburgess.org/cm.html)
   Retrieved on 2022-09-04 20:38
