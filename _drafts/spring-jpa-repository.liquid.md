---
layout: post.liquid
title:  "Repository?"
tags: spring-framework jpa @Repository
categories: [programming, java, spring, jpa]
---
The Spring framework offers two a `@Repository` annotation and a `Repository` interface.

Although related and a bit confusing initially, they perform distinct tasks.

The Java annotation is meant only as meta-data for the annotated class and imposes
no semantics.

The interface on the other hand provides rich functionality to perform
common tasks with data sources, e.g., Create, Read, Update, and Delete.

<div style="text-align: center">
    <img src="/assets/images/SimpleJpaRepository.png">
    <figcaption>
        Class diagram: Repository Stereotype (dark) and Interface (light).
    </figcaption>
</div>

## The annotation

I wanted to know what it means to be annotated with @Repository,
and why they may not be automatically loaded when using
Spring Test Slices, e.g., @DataJpaTest.

The `@Repository` annotation is a Spring stereotype, a stereotype represents the
architectural role an application component would typically play.

`@Repository` can be used in at least two non-interchangeable ways:

### Domain Driven Design

> ... a mechanism for encapsulating storage, retrieval, and search behavior
> which emulates a collection of objects.

TODO: Elaboration on DDD

### Data Access Object

TODO: Elaboration on DAO

to mark the annotated class as a DAO – Data Access Object – ,
a well-know Java EE pattern.

### Semantics

The annotation is agnostic of the semantics, and therefore it general-purpose.

# The interface

SimpleJpaRepository is packed with features
I learned that a SimpleJpaRepository packs a lots of useful features:

support for CRUD operations, since it extends CrudRepository

Paging & Sorting, since it extends PagingAndSortingRepository

Transaction management, provided by @Transactional

Support for the JPA Criteria API, provided by extending JpaSpecificationExecutor

TODO: Sample code

## References

TODO:

- official docs
    - stereotype
    - interface
- credit source code samples

