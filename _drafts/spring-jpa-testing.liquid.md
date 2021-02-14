---
layout: post.liquid
title:  "Test independence tests using application slices"
date:   2021-02-12 21:27
tags: java spring-framework spring jpa test @DataJpaTest
categories: [programming, java, spring, jpa, test]
---
## Introduction

With the Spring Framework you can configure which Beans (components) are loaded
into the Application Context in different ways.

This is particularly useful for testing, loading all components of your application
may not be necessary for certain types of test.

This article is about the case when you want to test your data access layer and
at the same time:

- keep your tests independent from each other
- load a minimal set of components to the application context

### Test dependencies

There are legitimate reasons to write test that depend on other tests. This
article is about the case where you want test independence. Some of the associated
problems of dependent tests are:

- running the test in different environments leads to different results
- unpredictable test results when multiple tests reuse the same data source

## Using auto-configured JPA tests, enter `@DataJpaTest`

Spring provides the annotation [`@DataJpaTest`](#references), it will create a
"slice" which will ensure the test class only loads components relevant to the
execution of test involving JPA components and it's dependencies.

Here's a class diagram for the `@DataJpaTest` annotation:

<div style="text-align: center">
    <img src="/assets/images/DataJpaTest.png">
    <figcaption>Class diagram for @DataJpaTest</figcaption>
</div>

The annotation packs lots of features:

- automated transaction management, provided by `@Transactional`, transactions roll
back at the end of each test
- loads only JPA related components
- an auto-configured in-memory database ready for testing
- an `EntityManager` ready for testing, it allows you to persist
  entities without having to use the `@Repository` interface

Using the annotation is quite simple, here's a small example, adapted
from [the Spring documentation](#references):

{% highlight java %}
    @RunWith(SpringRunner.class)
    @DataJpaTest
    public class ExampleTransactionalTests {
        @Autowired
        private TestEntityManager entityManager;

        @Autowired
        private UserRepository repository;

        @Test
        public void testExample() throws Exception {
            this.entityManager.persist(new User("sboot", "1234"));
            User user = this.repository.findByUsername("sboot");
            assertThat(user.getUsername()).isEqualTo("sboot");
            assertThat(user.getVin()).isEqualTo("1234");
        }
    }
{% endhighlight %}

## Alternatives to auto-configured tests

### Your own set-up and tear-down

You can always write your own set-up and tear-down methods to ensure every tests
uses a data source in a pristine state, however it comes with trade-offs, namely:

- it's code that you need to write and maintain
- test execution can be optimized to be faster

### Destroy and re-create the application context

Spring also provides the annotation `@DirtiesContext` as a means to mark the
application context as "dirty", Spring will recreate the context according to
your configuration -- before/after each test/test class --. It also comes with
trade-offs, namely:

- re-creating the application context is expensive and your test will take longer
- there is no code that you have to maintain

## References

- Application slices: [Auto-configured JPA tests](https://docs.spring.io/spring-boot/docs/1.4.2.RELEASE/reference/html/boot-features-testing.html#boot-features-testing-spring-boot-applications-testing-autoconfigured-jpa-test)
- [@DirtiesContext](https://docs.spring.io/spring-framework/docs/4.1.2.RELEASE/javadoc-api/org/springframework/test/annotation/DirtiesContext.html)

## Google search terms

- `@datajpatest site:docs.spring.io`
- `test slice jpa site:docs.spring.io`
