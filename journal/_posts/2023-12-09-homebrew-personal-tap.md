---
layout: post.liquid
title: "Homebrew package upgrade breaking stuff an how to deal with it"
date: 2023-12-08 Sa 11:01
last_updated: 2023-12-09 Sa 17:15
tags:
  - journal 
  - tech 
  - homebrew 
  - macos 
  - package-management 
  - gnupg
  - emacs
categories: [tech, journal]
permalink: /2023-12-08-personal-homebrew-tap
toc: false
---

[Homebrew](https://brew.sh/) package upgrades have regularly broken my personal setup,
blocking me from completing my current task. My [personal Homebrew tap](https://github.com/pgpbpadilla/homebrew-pgpb)
saved the day recently, so it deserves a mention here.


# Invisible heading

I accidentally upgraded all my Homebrew packages with:

    brew upgrade

Later I noticed that saving [encrypted files in Emacs](https://orgmode.org/worg/org-tutorials/encrypting-files.html) was
[not working](https://dev.gnupg.org/T6481). Anytime I tried saving
changes Emacs would hang.

After googling I found that others were having the same issue after
upgrading their [GnuPG](https://www.gnupg.org/) package.

I was able to fix the problem after following
[instructions from
StackOverflow](https://stackoverflow.com/a/76404609/400544). However, that didn't last, I ran into the same
trouble with my work computer. This time it was different, I had
updated my setup to pin the [minor version](https://semver.org/) of GnuPG to 2.2, so I was
surprised that even though the *correct* version was installed,
Emacs would still hang during encryption.

The difference was that my personal and work computers were using
different PATCH versions:

-   Work: **2.2.42**
-   Personal: **2.2.41**

Homebrew does not provide [versioned formulas](https://docs.brew.sh/Versions) for different PATCH
versions of a package, so I couldn't use:

    brew install gnupg@2.2.41

I once had a similar situation, I needed to pin the version of
package with no versioned formula. To do that, I created a personal
[Homebrew tap](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap) and defined a formula for the desired package.

To fix my configuration, I found the [formula for gnupg@2.2](https://formulae.brew.sh/formula/gnupg@2.2) and
[tweaked it](https://github.com/pgpbpadilla/homebrew-pgpb/blob/master/Formula/gnupg%402.2.41.rb), so that it installed version 2.2.41. This worked fine,
the main downside was that the install time got longer since the
package is built from sources, no biggie.

I decided to spend the time to write this since it's the second
time my personal tap has saved the day. So if you're GnuPG is broken
in the same way you can use it too!

    brew tap pgpbpadilla/pgpb
    brew install gnupg@2.2.41

Sources are in Github: [pgpbpadilla/homebrew-pgpb](https://github.com/pgpbpadilla/homebrew-pgpb). 

