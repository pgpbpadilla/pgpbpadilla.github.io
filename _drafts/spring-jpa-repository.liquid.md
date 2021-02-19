---
layout: post.liquid
title:  "Spring Repository"
date: 2021-02-19 22:31
last_udpated_date: 2021-02-19 22:31
tags: spring repository ddd dao
categories: [programming, java, spring-framework]
permalink: /spring-repository
---
The Spring framework provides the `@Repository` annotation and the `Repository` interface.
Although related and a bit confusing initially, they perform distinct tasks.

The Java annotation is meant only as meta-data for the annotated class and imposes
no semantics.

The interface on the other hand defines common tasks performed
with data sources, e.g., Create, Read, Update, and Delete.

## Spring Data Access and Spring Data Commons

The `@Repository` annotation is part of the [Data Access](#references)
module, included in the Spring Framework, whereas the `Repository` interface is
part of [Spring Data Commons](#references). These are their fully qualified names:

{% highlight java %}
    org.springframework.stereotype.Repository
    org.springframework.data.repository.Repository
{% endhighlight %}

### Repository as a stereotype: Data Access

The `@Repository` annotation is a Spring stereotype, a stereotype represents the
architectural role an application component would typically play. It is commonly
used in two non-interchangeable ways; one refers to a [Repository in the context of
Domain Driven Design](#references):

> ... a mechanism for encapsulating storage, retrieval, and search behavior
> which emulates a collection of objects.

the annotation is also used is to implement a traditional Java EE
pattern, a [Data Access Object](https://www.oracle.com/java/technologies/dataaccessobject.html):

> Use a Data Access Object (DAO) to abstract and encapsulate all access to the data source.
> The DAO manages the connection with the data source to obtain and store data.

The annotation is agnostic of the semantics, and therefore it general-purpose. However,
annotating a class will give that class the ability to hook into Spring's standardized
exception handling. In later versions of Spring, it also becomes a Spring `@Component`
and therefore is eligible for auto-discovery when auto-configuration is enabled in a
Spring Boot Application.

<div style="text-align: center">
    <img src="/assets/images/stereotype-repository-component.png">
    <figcaption>
        A Spring Boot application automatically detects and loads repositories.
    </figcaption>
</div>

### A repository with batteries included: Data Commons

The Spring Data Commons provides some supporting implementations for
many common use cases involving repositories. The following diagram shows one such
supporting implementation, `SimpleJpaRepository`.


<div style="text-align: center">
    <img src="/assets/images/SimpleJpaRepository.png">
    <figcaption>
        Class diagram: Repository stereotype and interface.
    </figcaption>
</div>

It's worth noting that in the class hierarchy showing in the image above,
[SimpleJpaRepository](https://github.com/spring-projects/spring-data-jpa/blob/master/src/main/java/org/springframework/data/jpa/repository/support/SimpleJpaRepository.java)
is the first class _annotated_ with `@Repository` and also
_implementing_ the `Repository` interface:

{% highlight java %}
    @Repository
    public class SimpleJpaRepository implements JpaRepositoryImplementation {
        ...
    }
{% endhighlight %}

it provides many features that implement common patterns, e.g.,

- built-in support CRUD operations with `CrudRepository`
- paging & sorting with `PagingAndSortingRepository`
- Transaction management, provided by the `@Transactional` annotation
- support for the JPA Criteria API, provided by extending `JpaSpecificationExecutor`

## Repositories for everyone

If you can leverage the features built in the Data Commons repositories, then
it's a big productivity boost since you don't have to write all that logic.

If you have to write custom data access logic, you can still make use
of the built-in standardized exception handling and auto-configuration provided by the
`@Repository` annotation.

Either way, you can benefit from the infrastructure provided by the framework and spend
more time thinking about your domain.


## Google search terms

- `repository stereotype site:docs.spring.io`
- `repository interface site:docs.spring.io`

## References

- Repository
    - Stereotype (Spring Data Access)
        - [DAO Annotations](https://docs.spring.io/spring-framework/docs/current/reference/html/data-access.html#dao-annotations)
        - [JavaDoc](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/stereotype/Repository.html)
    - Interface (Spring Data)
        - [Spring Data](https://spring.io/projects/spring-data)
        - [JavaDoc](https://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/Repository.html)


