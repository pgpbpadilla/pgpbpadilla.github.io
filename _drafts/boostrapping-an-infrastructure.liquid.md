---
layout: post.liquid
title:  "On Bootstrapping an Infrastructure"
date: 2022-09-04 20:32
last_updated: 2022-09-04 20:32
tags: it infrastructure software
permalink: /bootstrapping-infrastructure
categories: [it, infrastructure, software]
---
IT infrastructures are the substrate on which user applications run 
[[traugott98]](#traugott98). Without the users' need for applications, we wouldn't 
have to build them. In many cases, it is the success of a user application
that leads to infrastructure[^1] growth.[^2]  

[^1]: _Infrastructure_ is a 
    relative term, and it's usually to refer to those applications that support your 
    work. 

    <div style="text-align: center">
        <img width="500" 
            src="/assets/images/views-it-infra.png">
        <figcaption>Views on IT infrastructure</figcaption>
    </div>

[^2]: Are examples of the opposite? namely, 
    an application ecosystem growing because of the success of 
    successful infrastructure. 


A while back I stumbled upon Traugott's article
[Bootstrapping an infrastructure](#traugott98), the article contains many ideas that 
are considered good practices today. I was not able to find direct connections between
the ideas in Traugott's article and other more recent terminology, so I decided to write 
this post and attempt to connect those ideas with their contemporary incarnations. 


## Core ideas

### Building Infrastructures is a Development Process

[![Building an infrastructure](/assets/svg/traugott98-building-infrastructure.svg)](/assets/svg/traugott98-building-infrastructure.svg)

Figure caption: Diagram sources: 
Principles for building
   infrastructures: [link](../assets/diagram/building-infrastructure.puml)
   The idea is to derive each of the key ideas/concepts in the article from first
   principles, that should be accepted as self-evident

#### IT infrastructure evolves

- Infrastructure will change, it needs to constantly adapt to the needs of its users
- the ability to trace the evolution of an infrastructure gives you the possibility to
  learn from the past and make better decisions in the future
- version controls fills the need to keep a historical record of all the changes
  made to the infrastructure
- 41. version control facilitates the evolution of infrastructure
      and also having different versions of its
1. creating and destruction of entire Infrastructures becomes
   more manageable than doing it by hand
2. having a /master/ version of configuration files is good, it
   can be used as a baseline and then adapted to satisfy the
   needs of other infrastructures

#### Version control

### All changes are code 

#### IaC: Benefits of textual representation, i.e. code

The main idea here is that it makes sense to use a textual representation of the
desired state of the infrastructure.

> COMMENT:
> It will be difficult to make code more attractive than the use of advanced tools, e.g.
> think of vmware tools, they are uis, but at the same time provide excellent
> functionality
>
> There seems to be a different between system administrators that spend their time
> configuring and managing systems that support and application, and those system admins
> that support a service/component that is only used by the sysadmins in the upper
> layers. It's sysadmins all the way down!
>
> Automation: the degree ROI of automation depends on the speed at which the components
> evolve. Slower evolving components are safe to automate anc provide great benefits,
> however, achieving a good enough ROI when automating those components that evolve
> quickly is more difficult.

Four Traugott, most of the tasks performed by the infrastructure engineers were about finding efficient ways to apply configurations to multiple components. The
configurations were in most cases text files.

- I need to talk about the need to use code, before I can make the case that software
- composability:
    - copy paste, editors, etc make it super easy to compose configuration
    - this is less effort than building a graphical ui that allows the same level of
      composablility
        - any ui that does it, will have as a sub-component the same underlying
          code/configuration
        - changes to a ui for composing generic components will require more effort
        - ui makes more sense when the configuration does not change often
          practices are relevant
    - maybe making it like this: what you care is the state, state can be captured in
      config files, which are textual, therefore the dev tools, which are optimized for
      text fit pretty well, after all confi files are a form of code

#### Avoiding manual/ad-hoc changes

- avoid making ad-hoc changes and prefer updating the template/golden server, then let
  changes propagate
    - you can help yourself by creating **immutable components**, making it harder to
      change running components than updating the source code
    - writing and debugging a script is less than the time it takes to change hundreds of
      clients manually
- it forces you to make all changes to the code that generates the infra, therefore
  pushes you in the direction of All changes are code
- if you have no custom/ad-hoc changes in any of your components then you can
  destroy them and recreate without losing valuable work
- ad-hoc changes can fix some bugs faster
- regular use of ad-hoc changes creates more labor, labor means cost
- ad-hoc changes generate drift
- iac allows linearly growing team to manage exponentially growing infrastructures,
  reduction of labor means reduction of cost



#### Software Defined XXX

- software is increasingly being used to do more things, including the creation of
  virtualized infra components
- it's cheaper, faster to evolve, automate, etc

#### Automation


##### Code is Automation

- encoding desired state/behaviour is a form of automation
- automatation enables to execute tasks in a repeatable manner, reducing human effort
- automation is more expensive for smaller infras, but it pays off when:
    - the infra is big
    - it changes a lot
    - the effects of drift are too heavy

#### Infrastructure as Code
#### Immutable infrastructure

### Artefacts: re-use, re-peat

#### Generic components

Some ideas are consequences of thinking of a whole DC as a single Virtual Machine. In
order to make it easier for ourselves to operate, maintain and fix our
infrastructure, it helps to have standard, generic components.
This is good, but it also brings about new problems, the components can be _composed_ in a
many ways, all of which fulfill the user's needs.

In Traugott's words:

> ...although the components of an infrastructure are more or less standard,
> professional architects tend to arrange them in radically different ways.

Benefits or generic components:

- they are easy to replace
    - When each component is generic, and there's enough automation, it's easy to destroy a
      misbehaving component and recreate it from a trusted source.
- improve disaster recovery
    - A benefit of this is shorter time to recover from certain types of disasters, and can
      also protect against compromised components.

Implications/requirements:

- Applications need to support this behavior and be able to function properly after
  their host is terminated while in the middle of an operation

#### Re-use: Gold Server, Golden Server
#### Gold server vs Golden Server

- one is a repository of artefacts, code, configurations, etc
- the gold server enables re-use, by hosting re-usable components, such as templates
- the other represent a code/conf template to create a specific component
- the golden server enables repeatability, reducing deviations

#### Repeatability: deterministic builds

### Autonomy


#### Centralization, pull-based workflows


- clients know when it's the best time to pull updates
- clients are responsible for staying updated
- having a central place (canonical name) to refer to infra resources is still very
  much beneficial
    - centralized names (dns) does not mean single point of failure, the gold server
      is not mission critical, it being down does not impact the users of the infrastructure
- gold server is passive
- When pushing configuration from a central server to hundreds, perhaps thousands of
  clients,
  the load is concentrated in the server pushing all these changes
    - the clients must stop anything they're doing to accept the changes, or consideration
      of the request. When there are network issues, clients may not even get the
      commands from the central server.
- By making the configuration server passive and the clients autonomous, it is
  possible to distribute the workload across all the different clients. Clients are
  more likely to choose an appropriate time to pull the updates from the central server.
- pull methods scale better, the computation needed is distributed to the clients, no
  need for a central powerful node to push changes to however many nodes you have
- having autonomous clients, and pull based workflows does not make the idea of
  centralized artefact repositories/servers irrelevant
    - Even when the workload to update the clients is distributed across the clients,
      there is
      still centralization, the golden server is the central point where all clients get
      their configuration.
    - Centralization does not mean single copy, the golden server
      may be replicated for higher availability, improving the performance of the
      updates across large appointments.


#### Pull is better than Push


#### Use of standards improves DR

- it's easier to fix machines when they fail if they are generic, it's hard when each
  is configured in a unique way
- it's easier to fix when the configuration is code, it's hard if it was done ad-hoc
- makes it easy for users to learn, since everything is in teh same place on every host


#### iac (automation) improves dr

5. enables building lower environments that are very close
   to a
   productive one,
   which
   may come in handy in certain disaster recovery scenarios, when the lower env is
   used as a hot standby for the productive infrastructure

#### Reduction of labor equals cost reduction

## Modern terminology

- IaC: all changes are code
- Continuous Delivery: gated pipelines, automation
- Immutable infrastructure: read-only artefacts
- Cattle, not pets: repeatability, automation (iac), no ad-hoc changes
- Artefact repository: re-use
- Deterministic builds: repeatability, automation
- GitOps:  IaC + (Quality) Gated pipelines (CI/CD)


## Related

1. Traugott, S. and Joel Huddleston. <a name="traugott98">Bootstrapping an 
   Infrastructure. LISA (1998).</a>
    - [Semantic Scholar - CorpusID:30764312](https://api.semanticscholar.org/CorpusID:30764312)
    - [infrastructures.org - papers](http://www.infrastructures.org/papers/bootstrap/bootstrap.html)
    - [usenix.org - Abstracts - 12th Systems Administration Conference (LISA '98)](https://www.usenix.org/legacy/publications/library/proceedings/lisa98/traugott.html)
2. [infrastructures.org](http://www.infrastructures.org) (_Retrieved on 2022-09-04 20:59_)
3. Burgess, Mark, <a id="cm-burgess" href="http://markburgess.org/cm.html"> 
   Configuration management, models and myths</a>.
   (_Retrieved on 2022-09-04 20:38_)
4. <a id="gitops" href="https://about.gitlab.com/topics/gitops/">
   What is GitOps? | GitLab
   </a>

## Footnotes
