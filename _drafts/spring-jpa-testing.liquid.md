---
layout: post
title:  "Simplify Spring JPA testing with Test Slices"
date:   2021-02-12 21:27
tags: java spring-framework spring jpa test @DataJpaTest @Repository
categories: [programming, java, spring, jpa, test]
---
Recently, I've been working with a Spring-based application,
I'm quite new to many of this huge framework.

    ```bash
    $ cloc spring-framework
    ```
## Test Slices

So while I was skimming the documentation I read about
[Test Slices](#references) so I put a bookmark on that topic.
I have taken the time to read on, specifically with the purpose
of optimizing the running time of a set of JUnit tests
that involve saving a bunch of JPA `@Entity` objects to
using our `@Repository` singletons.

There were a couple of things I was not happy about:

- some of our test would break when running in a Jenkins pipeline
  but the same test would work locally
- the test would break only when adding more test classes
  but not when the test was added in the same test class

After banging my head for a while, I figured out that I could use
`@DirtiesContext` to ensure a new application context was created
before or after each class or method and that was great ... except
recreating the application or test context is expensive, the tests
were super slow.

Also, there are plenty of horror stories in the internet about people using
`@DirtiesContext` and getting into more trouble than they wanted.

## @DataJpaTest automates JPA test configuration

I kept on reading the Spring documentation and eventually I made it to
the section where they introduce the annotation [`@DataJpaTest`](#references).

I learned that the annotation is really simple to use, and it provides
lots of built-in features:

- automated transaction management, provided by `@Transactional`
- loads only JPA related configuration -- including our `@Repository` singletons,
  in the application context
- auto-configure an in-memory database ready for testing
  provided by `@AutoconfigureTestDatabase`
- provides a built-in `EntityManager` for testing, which allows you to persist
  entities without havint to use the `@Repository` classes

Here's a class diagram for the `@DataJpaTest` annotation:

<div style="text-align: center">
    <img src="/assets/images/DataJpaTest.png">
    <figcaption>Agent-environment interaction.</figcaption>
</div>

In the end, a test that packs all that configuration can be simply written as follows

    ```java
    @RunWith(SpringRunner.class)
    @DataJpaTest
    public class ExampleNonTransactionalTests {
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
    ```


## Take aways

- Using Test Slices can help improve performance by only loading the necessary Beans
into the application context, and it plays well with wanting a fresh context or
database for each test method since there's less to clean up and load.

- There's a lot less code to maintain, compared to managing the state of the
database on your own.

## Gotchas

- Spring's TestContext does not support concurrency, so running test in parallel
might not work.


## Google search terms

@datajpatest site:docs.spring.io
test slice jpa site:docs.spring.io

## References

- @DirtiesContext
- Test Slices
- TODO: concurrency issues with Spring TestContext
- [Auto-configured JPA tests](https://docs.spring.io/spring-boot/docs/1.4.2.RELEASE/reference/html/boot-features-testing.html#boot-features-testing-spring-boot-applications-testing-autoconfigured-jpa-test)

## TODO

- link google search terms
- run cloc on spring repo, update bash snippet
- update class diagram image, find a better layout.
- credit code samples
