## Infrastructure architecture

- architecture: durability, utility, beauty
    - https://en.wikipedia.org/wiki/Architecture#Theory_of_architecture
- opinion: identifying patterns of interconnection between components

## Dependency diagram

This belongs to another post, the one about the concept of infrastructure:

4. diagram of the boot sequence, maybe a simplified version of it?
5. the boot sequence can be inverted, deriving the need for each component from the
client needs/requirements, as opposed of building from the bottom up. This is a
recurring theme, whether to model the infra from the bottom up or from the top down,
has implication in its management and the assumption around autonomy and control.
1. with top bottom, we focus on control, at the expense of autonomy ................
2. with bottom up, we focus on flexibility and autonomy, at the expense of
duplication and drift


### Generic components, refactoring and architecture

- this applies to individual components, not whole infrastructures. Replacing
  individual, generic components is in some sense equivalent to refactoring the
  infrastructure.

- 28. it's easier to replace existing components with new generic ones, than to adapt
      the old ones to the new way of working
1. retrofiting updates to old systems is more work than building a new system
2. rebuilding is less effort than updating existing systems without automation, i.
   e., via ad-hoc changes 


### Notoriously absent: networking, monitoring


1. today, most if not all of the layers in the OSI model can and have been virtualized,
   so also there IaC seems to be here to stay, however, there's a difference beween 
   having virtualized infrastructure components and codifying their operations also as 
   code, we need to distinguish between IaC and OaC: Operations as Code
2. Systems infrastructure: somehow the network is taken for granted, there's almost no
   mention of the network setup
- the author says that somehow it was not fully implemented
- that casts some doubts in my mind about how ready for prod this was for todays
  standards where auditing relies so heavily on monitoring and logging of special events


### Configuration Management: convergence vs congruence

Different methods to implement configuration management for infrastructure:

43. convergence vs congruence, declarative vs procedural #cm-burgess
    1. even when you write declarative code, the implementation has to start from a
       known state, and calculate the sequence of actions to execute, so as a user of
       the tool, you may not have to write declarative code but as teh developer of the
       tool you must definitely must


### Wholistic thinking


#### Boot sequence: diagram

[link](../assets/diagram/infra-boot-sequence.puml), dependency between tasks
when
bootstrapping an infra

#### Multiple DCs: private and public

2. Thinking of an infrastructure as a Virtual Machine, rather than a collection of
   individual hosts
42. wholistic thinking: the whole DC(s) as a single VM
    1. this is the idea I would like to extend to multiple dcs with different
       operating models: IaaS, SaaS, PaaS, DBaaS, etc.

44. centrally managed infra vs self-service infra
    the article seems to assume that there's a single infra that
    servres all apps, but today it's easier than ever to provision
    certain kinds of infra, e.g., vpc, vms, containers, vmis,
    however a central place for governance (global policies) still
    has a place as part of the centrally controlled infrastructure

46. ask questions about exending the ideas here to cover
    operating in a multi-cloud environment, where the
    private/on-premise DC is just one of many DCs, and in which
    each DC has different operational models, e.g., public cloud
    providers offer different methods of interaction, namely,
    IaaS, PaaS, SaaS, etc.


