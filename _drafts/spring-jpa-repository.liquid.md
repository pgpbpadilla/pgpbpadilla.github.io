---
layout: post.liquid
title:  "Repository?"
date: 2021-02-16 21:44
tags: repository ddd dao
categories: [programming, java, spring-framework]
permalink: /spring-repository
---
The Spring framework provides a `@Repository` annotation and a `Repository` interface.
Although related and a bit confusing initially, they perform distinct tasks.

The Java annotation is meant only as meta-data for the annotated class and imposes
no semantics.

The interface on the other hand defines common tasks performed
with data sources, e.g., Create, Read, Update, and Delete.

## A simple implementation

The Spring framework also provides us with a few supporting implementations for
many common use cases involving repositories. The following diagram shows one such
supporting implementation, `SimpleJpaRepository`.


<div style="text-align: center">
    <img src="/assets/images/SimpleJpaRepository.png">
    <figcaption>
        Class diagram: Repository Stereotype (dark) and Interface (light).
    </figcaption>
</div>

It's worth noting that `SimpleJpaRepository` is the first concrete class _implementing_
the `Repository` interface. At the same time, it's _annotated_ with `@Repository`:

{% highlight java %}
    @Repository
    ...
    public class SimpleJpaRepository implements JpaRepositoryImplementation<T, ID> {
        ...
    }
{% endhighlight %}


### Where do repositories live?

The `@Repository` annotation/stereotype ships with the core framework, whereas the
`Repository` interface is part of Spring Data Commons. As of today this is where
you can find them:

{% highlight java %}
    org.springframework.data.repository.Repository
    org.springframework.data.repository.CrudRepository
    org.springframework.data.repository.PagingAndSortingRepository
    org.springframework.data.jpa.repository.JpaRepository
    org.springframework.data.jpa.repository.support.JpaRepositoryImplementation
    org.springframework.data.jpa.repository.support.SimpleJpaRepository
{% endhighlight %}


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

## Google search terms

- `repository stereotype site:docs.spring.io`
- `repository interface site:docs.spring.io`

## References

- [Repository interface (Spring Data Commons)](https://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/Repository.html)
- [Repository stereotype (Spring Core)](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/stereotype/Repository.html)

TODO:

- official docs
    - stereotype
    - interface
- credit source code samples

