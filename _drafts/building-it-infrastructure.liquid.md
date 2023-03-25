---
layout: post.liquid
title:  "Building IT infrastructure"
date: 2022-09-04 20:32
last_updated: 2022-09-04 20:32
tags: it infrastructure software
permalink: /building-it-infrastructure
categories: [it, infrastructure, software]
toc: true
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


## Building IT infrastructure is a development process

IT infrastructures are built to solve problems that have been identified. A first 
approach at a solution and implementation provides additional information about the 
problem, corner cases are identified and a new attempt can be then made to improve the 
solution.

Most of the time progress is made in incremental steps, building on previous success.
The process is iterative and rarely the problems or solutions are so completely new 
that they deserve to be called revolutionary or innovative. 

The pattern of making observations, generating hypotheses, building prototypes, testing 
hypotheses and measurement the difference between the desired state and the 
current state is well established in other domains of knowledge.


### IT infrastructures evolve

The needs of infrastructure users change and so the infrastructure has to be developed 
further to solve the new problems. A good accounting of all activities required to 
build infrastructure can help identify and avoid repeating mistakes. 

Building the next version of the infrastructure requires a bit of _archaeological_ work,
digging into the past to understand what decisions were made and their effects in the 
implementation.


### Version control

Contemporary implementations of version control tools teaches us about the things that 
were important to our predecessors. The fact that there's such a thing as version 
control tells us that they had the need to trace the evolution of computer programs 
and even whole infrastructures.

Today we harness the power of version control not only to record the history of all 
changes made to computer software but also to plan its future evolution. We can 
develop multiple versions simultaneously and choose the one that fits our needs 
best, an exercise in artificial selection. 

Once a good (sometimes called a "_master_") version has been built, it can be used as the 
baseline or starting point for future experimentation.


#### Automation

With the help of [automation](#automation) it's possible to restore a particular state 
with relative ease. This is useful when it's necessary to change to a version 
that was more stable, or more performant or that had a different set of behaviors.

The lack of automation puts a limit to how fast we can experiment with different 
versions, as well as to how complex the infrastructure can be while still being 
manageable.


#### Integration and Delivery pipelines

Once the code is written and submitted to the code repository, almost every step in 
the process of delivery working software can be built into an
automated pipeline, reducing manual labor and the length of the feedback cycle.
The remaining manual steps usually consists of integrating human judgment to allow or 
reject a particular change; the pipelines are gated. 


#### Infrastructure as code

Management of infrastructure was and still is a mix of manual work supplemented with 
automation. As the scale and complexity of infrastructures grows the automated approach 
becomes more and more relevant, to the point of taking the extreme position of 
encoding every aspect of managing infrastructure to enable machines to fully operate 
the infrastructure (semi-)autonomously.


#### GitOps

When the infrastructure and the delivery pipelines are coded, the work of an 
engineer is confined to the operation of a version control repository and making a 
decision when a quality gate in the delivery pipelines requires human 
intervention. Git is presently a popular version control system, hence this approach 
is sometimes dubbed [GitOps](#gitops). 



## All changes are code

### Textual representation

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

### Software Defined XXX

- software is increasingly being used to do more things, including the creation of
  virtualized infra components
- it's cheaper, faster to evolve, automate, etc


### Code is Automation

- encoding desired state/behaviour is a form of automation
- automatation enables to execute tasks in a repeatable manner, reducing human effort
- automation is more expensive for smaller infras, but it pays off when:
    - the infra is big
    - it changes a lot
    - the effects of drift are too heavy

#### iac (automation) improves dr

5. enables building lower environments that are very close
   to a
   productive one,
   which
   may come in handy in certain disaster recovery scenarios, when the lower env is
   used as a hot standby for the productive infrastructure

### Immutable infrastructure


## Avoiding ad-hoc changes

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


## Standards

### Generic components

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


### Use of standards improves DR

- it's easier to fix machines when they fail if they are generic, it's hard when each
  is configured in a unique way
- it's easier to fix when the configuration is code, it's hard if it was done ad-hoc
- makes it easy for users to learn, since everything is in teh same place on every host



## Re-use

### Artefacts: re-use, re-peat
### Re-use: Gold Server, Golden Server
### Gold server vs Golden Server

- one is a repository of artefacts, code, configurations, etc
- the gold server enables re-use, by hosting re-usable components, such as templates
- the other represent a code/conf template to create a specific component
- the golden server enables repeatability, reducing deviations

### Repeatability: deterministic builds


#### Automation

### Reduction of labor equals cost reduction


## Autonomy

### Centralization, pull-based workflows


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


### Pull is better than Push




## Bringing it all together

[![Building IT infrastructure](/assets/svg/mindmap-building-it-infra.svg)](/assets/svg/mindmap-building-it-infra.svg)

<div style="text-align: center">
    <figcaption></figcaption>
</div>

[![Building IT infrastructure](/assets/svg/uml-building-it-infra.svg)](/assets/svg/uml-building-it-infra.svg)

Figure caption: Diagram sources:
Principles for building
infrastructures: [link](../assets/diagram/uml-building-it-infra.puml)
The idea is to derive each of the key ideas/concepts in the article from first
principles, that should be accepted as self-evident

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
